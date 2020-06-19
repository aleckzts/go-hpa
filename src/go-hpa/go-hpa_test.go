package main
import "testing"

func TestGreeting(t *testing.T) {
	resultado := greeting("TEST")
	if resultado != "<b>TEST</b>" {
		t.Errorf("Resultado esperado '<b>TEST</b>', recebido %s", resultado)
	}
}
