package com.onegravity.rteditor.fonts;

import android.graphics.Typeface;
import java.util.Locale;

/* loaded from: classes7.dex */
public class RTTypeface implements Comparable<RTTypeface> {

    /* renamed from: e */
    public String f40378e;

    /* renamed from: f */
    public Typeface f40379f;
    protected String mName;

    public RTTypeface(String str, Typeface typeface) {
        if (str == null) {
            throw new IllegalArgumentException("fontName mustn't be null");
        }
        if (typeface != null) {
            this.mName = str;
            this.f40379f = typeface;
            return;
        }
        throw new IllegalArgumentException("typeface mustn't be null");
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof RTTypeface)) {
            return false;
        }
        return this.mName.equalsIgnoreCase(((RTTypeface) obj).getName());
    }

    public String getFontPath() {
        return this.f40378e;
    }

    public String getName() {
        return this.mName;
    }

    public Typeface getTypeface() {
        return this.f40379f;
    }

    public RTTypeface setFontPath(String str) {
        this.f40378e = str;
        return this;
    }

    public void setName(String str) {
        this.mName = str;
    }

    @Override // java.lang.Comparable
    public int compareTo(RTTypeface rTTypeface) {
        Locale locale = Locale.getDefault();
        return this.mName.toLowerCase(locale).compareTo(rTTypeface.getName().toLowerCase(locale));
    }

    public RTTypeface() {
    }
}
