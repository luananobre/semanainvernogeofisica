Modelagem
=========

Exemplos: [madagascar](m8r)
---------------------------

**Execute nos diretórios:**
```python
scons       # executar
scons view  # visualizar
scons -c    # limpar
```



#### Modelagem Acústica no Domínio do Tempo

- Modelo Homogêneo: [ac_homog](m8r/ac_homog)
- Modelo de Duas Camadas: [ac_two_layers](m8r/ac_two_layers)
- Modelo Marmousi: [ac_marm](m8r/ac_marm)


#### Modelagem Elástica no Domínio do Tempo

- Modelo Homogêneo: [el_homog](m8r/el_homog)
- Modelo de Duas Camadas: [el_two_layers](m8r/el_two_layers)

#### Modelagem Acústica no Domínio da Frequência

- Modelo Homogêneo: [helmlu_homog](m8r/helmlu_homog)
- Modelo Marmousi: [helmlu_marm](m8r/helmlu_marm)

#### Migração Reversa no Tempo (RTM)

- Modelo de Duas Camadas: [rtm_two_layers](m8r/rtm_two_layers)

-------------------------

**Comandos adicionais:**
```bash
scons -n                     # listar execução (dry run)
scons -c                     # limpar execução
export OMP_NUM_THREADS=8     # especificar número de threads = 8
export DATAPATH=/data/path/  # especificar diretório dos dados
```
