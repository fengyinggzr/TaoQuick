﻿import QtQuick 2.0
import QtQuick.Controls 2.5
Item {
    width: 1024
    height: 768
    opacity: 1.0
    Behavior on opacity {
        NumberAnimation { duration: 500 }
    }

    AnimatedImage {
        anchors.fill: parent
        source: "qrc:/Image/logo/splash.gif"
    }
}
