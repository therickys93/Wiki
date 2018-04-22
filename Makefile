install:
	cd wikicontroller && \
	npm install && \
	cd .. && \
	cd wikimediaserver && \
	bash install.sh && \
	cd .. && \
	cd wikiserver && \
	./gradlew clean stage && \
	cd ..

clean:
	cd wikicontroller && \
	rm -Rf node_modules/ && \
	cd .. && \
	cd wikimediaserver && \
	rm -Rf node_modules/ bower_components/ && \
	cd .. && \
	cd wikiserver && \
	./gradlew clean && \
	cd ..