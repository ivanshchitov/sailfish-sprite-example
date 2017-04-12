import QtQuick 2.0

Item{
    id:spriteAnimation

    property int framesHorizontCount:0
    property int framesVerticalCount:0
    property int framesCount:(framesHorizontCount*framesVerticalCount)
    property int currentFrame:0
    property string sourcePath:""

    property int animationSpeed:0

    x:0
    y:0
    z:0
    clip:true

    height:spriteAnimationImage.height/framesVerticalCount
    width:spriteAnimationImage.width/framesHorizontCount

    Image{
        id:spriteAnimationImage
        source:sourcePath

        x:-((spriteAnimation.currentFrame * spriteAnimation.width)
            -Math.floor(spriteAnimation.currentFrame / spriteAnimation.framesHorizontCount)
            * (spriteAnimation.framesHorizontCount * spriteAnimation.width))
        y:-(Math.floor(spriteAnimation.currentFrame / spriteAnimation.framesHorizontCount)
            * spriteAnimation.height)
    }
}
