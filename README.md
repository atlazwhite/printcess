# Printcess

El eslogan “Imprimir a color con sencillez” es la esencia misma del proyecto.

## Clonar repositorio

```sh
git clone https://github.com/atlazwhite/printcess.git
```

**Requisitos**: `ps`, `awk`, `echo`, `sha256sum`, `tr` y `sed`

## Instalar

Recuerde primero conceder permisos con `sudo chmod u+x printcess.sh` antes de instalar.

```sh
cd /ruta/a/printcess/
sudo ln -s "${PWD}/printcess.sh" "${PREFIX}/bin/printcess";
```

## Prueba

```sh
printcess -e '<C <93Hello<0, <92World<0!';
```

## Licencia

Por favor lea la [licencia](LICENSE) del proyecto.
