# Fase build
FROM golang:1.13.11-alpine AS builder

WORKDIR /go

COPY src/go-hpa /go/src/go-hpa

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go install -ldflags="-w -s" go-hpa
RUN CGO_ENABLED=0 go test go-hpa
RUN chmod +x /go/bin/go-hpa

# Fase imagem final
FROM scratch

COPY --from=builder /go/bin/go-hpa /go/bin/go-hpa

EXPOSE 8000

ENTRYPOINT ["/go/bin/go-hpa"]
