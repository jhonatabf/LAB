# HSD iKnow Explorer

Esta aplicação analisa dados de prontuários de pacientes e os classifica com base em semantica textual

## Inicializando o ambiente
1. Execute `docker-compose up -d` no terminal
2. Acesse o ambiente em [localhost:9092/csp/sys/utilhome.csp](http://localhost:9092/csp/sys/utilhome.csp)
3. No primeiro acesso utilize as credenciais padrão: _SYSTEM/SYS

## Importando dados via REST
```POST /explorer/import```
```json
{
    "data": [
        {
            "code": "string",
            "atendimento": "string",
            "prontuario": "string",
            "data": "string",
            "texto": "string"
        }
    ]
}
```