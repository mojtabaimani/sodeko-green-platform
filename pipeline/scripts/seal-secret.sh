
kubeseal \
    --namespace green-tst \
    --cert ../sodeko-platform-services/pipeline/sealed-secrets-crts/dta-sealed-secrets.crt \
    -o yaml <~/opt/sodeko/database-green-tst.yaml \
    > ./green-services/secrets/tst/database-green-tst.yaml

kubeseal \
    --namespace green-acc \
    --cert ../sodeko-platform-services/pipeline/sealed-secrets-crts/dta-sealed-secrets.crt \
    -o yaml <~/opt/sodeko/database-green-acc.yaml \
    > ./green-services/secrets/acc/database-green-acc.yaml

kubeseal \
    --namespace green-prd \
    --cert ../sodeko-platform-services/pipeline/sealed-secrets-crts/prd-sealed-secrets.crt \
    -o yaml <~/opt/sodeko/database-green-prd.yaml \
    > ./green-services/secrets/prd/database-green-prd.yaml
