import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    SilicaFlickable {
        anchors.fill: parent

        AnimatedSprite {
            width: 320
            height: 232
            anchors.centerIn: parent
            source: "/usr/share/sprites-example/images/boom.png"
            frameCount: 25
            frameWidth: width
            frameHeight: height
            frameDuration: 100
            loops: AnimatedSprite.Infinite
        }
    }
    onStatusChanged: {
        if (status === PageStatus.Active) {
            pageStack.pushAttached(Qt.resolvedUrl("CustomSpritePage.qml"));
        }
    }
}
