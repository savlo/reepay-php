.PHONY: generate-client

swagger_tag := v2.2.2
swagger_cmd := docker run --rm -it -v ${CURDIR}:/src reload/swagger-codegen:${swagger_tag}
api_folder :=

generate-client:
	${swagger_cmd} generate --additional-properties packagePath=. --invoker-package=Reepay -i https://api.reepay.com/swagger.json -l php --git-user-id "reepay" --git-repo-id "reepay-php" -o /src
