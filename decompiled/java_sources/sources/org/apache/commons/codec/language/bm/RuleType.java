package org.apache.commons.codec.language.bm;

import com.onegravity.colorpicker.ColorPicker;

/* loaded from: classes9.dex */
public enum RuleType {
    APPROX("approx"),
    EXACT(ColorPicker.f39840p),
    RULES("rules");

    private final String name;

    RuleType(String str) {
        this.name = str;
    }

    public String getName() {
        return this.name;
    }
}
