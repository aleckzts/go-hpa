package main
import "testing"

func TestGreeting(t *testing.T) {
	resultado := greeting("TEST")
	if resultado != "TEST" {
		t.Errorf("Resultado esperado 'TEST', recebido %s", resultado)
	}
}
