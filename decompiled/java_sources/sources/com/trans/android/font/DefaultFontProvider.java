package com.trans.android.font;

import android.graphics.Typeface;
import com.onyx.harfbuzz.graphics.HBTypeface;
import java.util.List;
import java.util.Map;

/* loaded from: classes10.dex */
public class DefaultFontProvider implements FontProvider {
    private FontHandler fontHandler = new FontHandler();

    @Override // com.trans.android.font.FontProvider
    public Map<String, List<HBTypeface>> getDefTypefaces() {
        return this.fontHandler.getDefTypefaces();
    }

    @Override // com.trans.android.font.FontProvider
    public String[] getDefaultFont() {
        return this.fontHandler.getDefaultFont();
    }

    @Override // com.trans.android.font.FontProvider
    public String getFontPath() {
        return this.fontHandler.getWinFontPath();
    }

    @Override // com.trans.android.font.FontProvider
    public HBTypeface getHBTypeface(String str) {
        return this.fontHandler.getHBTypeface(str);
    }

    @Override // com.trans.android.font.FontProvider
    public Typeface getTypeface(String str) {
        return this.fontHandler.getTypeface(str);
    }

    @Override // com.trans.android.font.FontProvider
    public void release() {
        this.fontHandler.release();
    }
}
