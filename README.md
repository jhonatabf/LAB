# Demonstração de WebService

A aplicação simula um Web Service com a capacidade de receber uma requisição REST com o verbo POST de acordo com o modelo abaixo. A quantidade mínima de exames associados a cada requsiição é de no mínimo um sem limites máximos.
Após receber a requsição o serviço através do Business Process irá validar as informações e separar os pedidos unitariamente por exames para enviar ao Business Operation para que seja gravado no formato XML no diretório `/durable/iris/mgr/user`.
O BO (Business Operation) grava no formato XML apenas por ilustração. Em uma integração, existe a possibilidade de gravar no sistema de destino. Outra possibilidade é o destino consumir esse arquivo.
## Inicializando o ambiente
1. Execute `docker-compose up -d` no terminal
2. Acesse o ambiente em [localhost:9092/csp/sys/utilhome.csp](http://localhost:9092/csp/sys/utilhome.csp)
3. No primeiro acesso utilize as credenciais padrão: _SYSTEM/SYS

## Caso a produção não start sozinha
Abra o ambiente manualmente acessando a produção no NameSpace "IRISSHIFT" em ```Abrir``` Selecione a produção ```SFT.src.Producao.production```

## Requisição via REST
```POST /shift/api/exams```
```basic auth: _SYSTEM/SYS```
```json
{
    "Identificador": "String",
    "Pedido":{
        "Codigo": "Base64",
        "OrdemServico": "Number"
    },
    "Paciente":{
        "Codigo": "Number",
        "Nome": "String",
        "Sexo": "Enum" //F - Feminino, M - Masculino
    },
    "Exames":[
        {
            "Codigo": "Number",
            "Descricao": "String"
        }
    ]
    
}
```

## Dados obrigatórios
- Identificador
- Pedido.Codigo
- Paciente.Codigo
- Exames

### Base 64
O campo Pedido.Codigo deve ser informado a base 64 da concatenação dos campos Identificador com o campo Pedido.Ordem de Serviço

## Retorno
```json
{
    "return": "String"
}
```

## Não validado
Não esta sendo validado se os campos de código do pedido e da pessoa são únicos
