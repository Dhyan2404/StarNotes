package org.apache.poi.style;

import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;

/* loaded from: classes13.dex */
public enum TextVerAlign {
    NONE("none"),
    AUTO("auto"),
    TOP(OneDriverConstants.TOP),
    BOTTOM("bottom"),
    MIDDLE("middle"),
    BASELINE("baseline"),
    TEXT_TOP("text-top"),
    TEXT_BOTTOM("text-bottom"),
    SUB("sub"),
    SUPER("super");

    public String value;

    TextVerAlign(String str) {
        this.value = str;
    }

    public String toStyle() {
        if (ordinal() <= AUTO.ordinal()) {
            return "";
        }
        return "vertical-align:" + this.value + ';';
    }
}
