# 🌐 GG // Network Threat Analyzer

[![STATUS MVP](https://img.shields.io/badge/STATUS_MVP-06B6D4?style=for-the-badge&logoColor=white)](https://github.com/geovanniandrade/gg-network-threat-analyzer) [![ABRIR INTERFACE](https://img.shields.io/badge/ABRIR_INTERFACE-06B6D4?style=for-the-badge&logo=googlechrome&logoColor=white)](https://geovanniandrade.github.io/gg-network-threat-analyzer/) [![REPOSITÓRIO](https://img.shields.io/badge/REPOSIT%C3%93RIO-06B6D4?style=for-the-badge&logo=github&logoColor=white)](https://github.com/geovanniandrade/gg-network-threat-analyzer)

Triagem local de registros de conexões de rede.

## 🎯 O que faz?

Contagem de conexões, destinos distintos e portas de destino mais frequentes.

## 🧭 Modos de utilização

**🧪 Demonstração:** clique em **Carregar exemplo fictício** ou **Baixar CSV de exemplo**. Nenhuma captura de rede é realizada.

**🏢 Dados autorizados:** importe somente um CSV preparado a partir de logs cuja utilização foi autorizada. A ferramenta não captura pacotes nem se conecta a firewalls.

O formato esperado é:

```csv
src_ip,dst_ip,dst_port,proto
192.0.2.10,198.51.100.20,443,TCP
192.0.2.10,203.0.113.30,22,TCP
```

Os endereços acima são reservados para documentação.

## 🚀 Como utilizar

1. Exporte ou prepare um CSV autorizado com `src_ip,dst_ip,dst_port,proto`.
2. Importe o CSV na interface web.
3. Revise quantidades, destinos e portas; gere um resumo para impressão/PDF.

## 🧪 Exemplo prático

Um CSV fictício mostra diversas conexões na porta 22; o aplicativo destaca a frequência, sem concluir que houve ataque.

> **Status:** versão MVP educacional, com processamento local no navegador e sem backend próprio. Não homologada para produção. Não envie dados corporativos confidenciais nem considere a saída como diagnóstico definitivo.

## 📌 Próximas melhorias

Adicionar parser de PCAP e correlação contextual com inteligência de ameaças.

---

**GG // Security Applications** · Segurança acessível, investigação responsável e resultados verificáveis.
