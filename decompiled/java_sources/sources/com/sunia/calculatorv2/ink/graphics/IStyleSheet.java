package com.sunia.calculatorv2.ink.graphics;

import com.sunia.HTREnginev2.InterfaceC13903j1;

/* loaded from: classes10.dex */
public interface IStyleSheet {
    public static final String CLASS_BOUNDING_BOX = "bounding-box";
    public static final String CLASS_CANVAS = "canvas";
    public static final String CLASS_CONVERTED = "converted";
    public static final String CLASS_ERASER = "eraser";
    public static final String CLASS_GENERATED = "generated";
    public static final String CLASS_HAND = "hand";
    public static final String CLASS_HIGHLIGHTER = "highlighter";
    public static final String CLASS_MODEL = "model";
    public static final String CLASS_PLACEHOLDER = "placeholder";
    public static final String CLASS_PREDICTION = "prediction";
    public static final String CLASS_PROCESSING = "processing";
    public static final String CLASS_SELECTOR = "selector";
    public static final String CLASS_STROKE = "stroke";
    public static final String CLASS_WET = "wet";

    void addRuleForClass(String str, InterfaceC13903j1 interfaceC13903j1);

    void addRuleForPathPattern(String str, InterfaceC13903j1 interfaceC13903j1);
}
