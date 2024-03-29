/*
 * Copyright (C) 2021 YoyoOS Team.
 *
 * Author:     Reion Wong <reionwong@gmail.com>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.0
import Qt.labs.settings 1.0

Settings {
    property int width: 750
    property int height: 500
    property int fontPointSize: 11
    property string fontName: "Noto Mono"
    property int keyboardCursorShape: 0
    property bool blinkingCursor: true

    property var searchUrl: [[qsTr("Baidu"),"http://www.baidu.com/s?wd={KeyWord}"]]
    property var bookmark: []
    property string wordCharacters: ":@-./_~,"
    property var colorschemes: ["Yoyo-Light","Yoyo-Dark","BlackOnLightYellow","BlackOnRandomLight","BlackOnWhite","Tango","Ubuntu","Solarized","SolarizedLight"]
    property string lightcolorScheme: "Yoyo-Light"
    property string darkcolorScheme: "Yoyo-Dark"
    property color lightbackgroundColor : "#F3F4F9"
    property color darkbackgroundColor : "#1C1C1D"

    property double opacity: 1.0
    property bool blur: false
}
