install:
	cd wikicontroller && \
	npm install && \
	cd .. && \
	cd wikimediaserver && \
	bash install.sh && \
	cd .. && \
	cd wikiserver && \
	./gradlew clean stage && \
	cd .. && \
	cd wikibot && \
	./gradlew clean stage && \
	cd ..

clean:
	cd wikicontroller && \
	rm -v -Rf node_modules/ && \
	cd .. && \
	cd wikimediaserver && \
	rm -v -Rf node_modules/ bower_components/ && \
	cd .. && \
	cd wikiserver && \
	./gradlew clean && \
	cd .. && \
	cd wikibot && \
	./gradlew clean && \
	cd ..
