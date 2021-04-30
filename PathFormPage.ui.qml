import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 800
    height: 500

    header: ButtonOpenFile {}

    PathView {
        id: pathView
        width: 800
        height: 500
        model: folderModel

        path: Path {
            startX: 400
            startY: 300
            PathQuad {
                x: 400
                y: 100
                controlX: 860
                controlY: 150
            }
            PathQuad {
                x: 400
                y: 300
                controlX: -20
                controlY: 150
            }
        }

        delegate: PathViewDelegate {}
    }
    FullSizeImage {
        id: fullPathImage
        anchors.fill: parent
        anchors.centerIn: parent
    }
}
