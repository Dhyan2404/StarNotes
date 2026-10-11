package org.apache.poi.sl.draw;

import org.apache.poi.common.usermodel.fonts.FontInfo;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
class DrawFontInfo implements FontInfo {
    private final String typeface;

    public DrawFontInfo(String str) {
        this.typeface = str;
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public String getTypeface() {
        return this.typeface;
    }
}
