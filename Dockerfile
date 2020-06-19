# Fase build
FROM golang:1.13.11-alpine AS builder

WORKDIR /go

COPY src/hpa /go/src/hpa

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go install -ldflags="-w -s" hpa
RUN CGO_ENABLED=0 go test hpa
RUN chmod +x /go/bin/hpa

# Fase imagem final
FROM scratch

COPY --from=builder /go/bin/hpa /go/bin/hpa

EXPOSE 8000

ENTRYPOINT ["/go/bin/hpa"]
