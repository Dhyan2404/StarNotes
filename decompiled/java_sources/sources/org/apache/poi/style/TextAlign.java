package org.apache.poi.style;

import com.sunia.HTREnginev2.gon;

/* loaded from: classes13.dex */
public enum TextAlign {
    NONE("none"),
    START(gon.f71290o0),
    LEFT("left"),
    END("end"),
    RIGHT(gon.f71288n0),
    CENTER("center"),
    JUSTIFY("justify"),
    JUSTIFY_LAST("justify");

    public String value;

    TextAlign(String str) {
        this.value = str;
    }

    public String getValue() {
        return this.value;
    }

    public String toStyle() {
        if (ordinal() <= LEFT.ordinal()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("text-align:");
        sb.append(this.value);
        sb.append(';');
        if (this == JUSTIFY_LAST) {
            sb.append("text-align-last:");
            sb.append(this.value);
            sb.append(';');
        }
        return sb.toString();
    }
}
