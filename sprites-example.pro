# The name of your application
TARGET = sprites-example

CONFIG += sailfishapp

SOURCES += src/sprites-example.cpp

OTHER_FILES += qml/sprites-example.qml \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    rpm/sprites-example.changes.in \
    rpm/sprites-example.spec \
    rpm/sprites-example.yaml \
    translations/*.ts \
    sprites-example.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 256x256

CONFIG += sailfishapp_i18n

TRANSLATIONS += translations/sprites-example-de.ts

images.files = images
images.path = /usr/share/sprites-example

INSTALLS += images

DISTFILES += \
    qml/components/CustomSprite.qml \
    qml/pages/CustomSpritePage.qml \
    qml/pages/SpriteSequencePage.qml
