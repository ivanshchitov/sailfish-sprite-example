import QtQuick 2.0
import Sailfish.Silica 1.0
import "../components"

Page {
    SilicaFlickable {
        anchors.fill: parent

        CustomSprite {
            anchors.centerIn: parent
            id: sprite
            framesHorizontCount: 10
            framesVerticalCount: 1
            sourcePath: "/usr/share/sprites-example/images/zombie.png"
            currentFrame: -1
            framesCount: framesHorizontCount * framesVerticalCount
            animationSpeed: 50
        }

        Timer {
            id: timer
            interval: sprite.animationSpeed
            running: true
            repeat: true
            onTriggered: {
                sprite.currentFrame++
                if (sprite.currentFrame === sprite.framesCount) {
                    sprite.currentFrame = 0;
                    timer.restart();
                }
            }
        }
    }
    onStatusChanged: {
        if (status === PageStatus.Active) {
            pageStack.pushAttached(Qt.resolvedUrl("SpriteSequencePage.qml"));
        }
    }
}
