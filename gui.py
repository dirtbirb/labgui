#!/usr/bin/env python3

import modules.gui as gui
from wx import App

app = App()

frame = gui.GuiFrame(None)
frame.layout['bottom'].extend([
    gui.FlatFieldPanel(frame),
    gui.ColorPanel(frame),
    gui.TargetPanel(frame)])
frame.view_panel.add_source('test', gui.TestSensor, set_source=True)
frame.Assemble()

app.MainLoop()
