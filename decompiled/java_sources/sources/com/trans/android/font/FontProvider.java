package com.trans.android.font;

import android.graphics.Typeface;
import com.onyx.harfbuzz.graphics.HBTypeface;
import java.util.List;
import java.util.Map;

/* loaded from: classes10.dex */
public interface FontProvider {
    Map<String, List<HBTypeface>> getDefTypefaces();

    String[] getDefaultFont();

    String getFontPath();

    HBTypeface getHBTypeface(String str);

    Typeface getTypeface(String str);

    void release();
}
