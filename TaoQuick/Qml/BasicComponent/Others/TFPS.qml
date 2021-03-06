﻿import QtQuick 2.12
import QtQuick.Controls 2.12
import TaoQuick 1.0
Item {
    property int fps: 60

    property int frameCount: 0
    property color textColor: "#f7e08c"
    Image {
        id: spinner
        source: "qrc:/Core/Image/Others/spinner.png"
        width: 32
        height: 32
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        RotationAnimation on rotation {
            from: 0
            to: 360
            running: true
            loops: Animation.Infinite
            duration: 1000
        }
        onRotationChanged: frameCount++
    }
    Text {
        anchors.left: spinner.right
        anchors.verticalCenter: parent.verticalCenter
        text: "FPS" + fps
        font.pixelSize: 20
        renderType: Text.NativeRendering
        color: textColor
    }
    Timer {
        interval: 1000
        repeat: true
        running: true
        onTriggered: {
            fps = frameCount
            frameCount = 0
        }
    }
}
