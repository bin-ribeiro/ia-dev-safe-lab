# Parte 2: Isolamento com ai-jail

## O que é o ai-jail?

O `ai-jail` é um sandbox de nível de sistema operacional que usa **Bubblewrap** (bwrap) no Linux para isolar agentes de IA. Ele garante que o agente não tenha acesso a:
- Seu diretório `$HOME` real (arquivos SSH, configurações, etc.).
- Redes (por padrão).
- Dispositivos de GPU/Display (por padrão).

## Instalação

Execute o script `setup/install-requirements.sh` para instalar `bubblewrap` e `ai-jail` via `cargo`.

## Teste de Isolamento

1.  Entre no sandbox:
    ```bash
    ai-jail bash
    ```

2.  Dentro do sandbox, verifique o `$HOME`:
    ```bash
    ls -la ~
    ```
    **Resultado esperado:** Diretório vazio. O `ai-jail` monta um `tmpfs` temporário no lugar do seu home real.

3.  Verifique o diretório atual:
    ```bash
    pwd
    ```
    **Resultado esperado:** O caminho real do seu projeto. O `ai-jail` monta o diretório atual como **read-write** por padrão, permitindo que o agente edite seu código.

## Conclusão

O agente pode ver e editar seu código, mas não pode acessar suas chaves SSH, configurações do navegador ou outros dados sensíveis do host.
