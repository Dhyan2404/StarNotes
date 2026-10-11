package org.apache.poi.ss.format;

import java.awt.Color;

/* loaded from: classes13.dex */
public class CellFormatResult {
    public final boolean applies;
    public final String text;
    public final Color textColor;

    public CellFormatResult(boolean z, String str, Color color) throws IllegalArgumentException {
        this.applies = z;
        if (str == null) {
            throw new IllegalArgumentException("CellFormatResult text may not be null");
        }
        this.text = str;
        this.textColor = z ? color : null;
    }
}
