// Copyright 2017 Google Inc. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'alert.dart';

abstract class TargetLocator {
  /// Change focus to another frame on the page.
  /// If [frame] is a:
  ///   [int]: select by its zero-based index
  ///   [WebElement]: select the frame for a previously found frame or iframe
  ///               element.
  ///   not provided: selects the first frame on the page or the main document.
  ///
  ///   Throws [NoSuchFrameException] if the specified frame can't be found.
  void frame([frame]);

  /// Switch the focus of void commands for this driver to the window with the
  /// given name/handle.
  ///
  /// Throws [NoSuchWindowException] if the specified window can't be found.
  @Deprecated('Use "Window.setAsActive()". '
      'Selecting by name is not supported by the current W3C spec.')
  void window(dynamic window);

  /// Switches to the currently active modal dialog for this particular driver
  /// instance.
  Alert get alert;
}
