package com.onegravity.rteditor.converter.tagsoup;

import android.annotation.SuppressLint;
import java.util.HashMap;

/* loaded from: classes7.dex */
public abstract class Schema {
    public static final int F_CDATA = 2;
    public static final int F_NOFORCE = 4;
    public static final int F_RESTART = 1;
    public static final int M_ANY = -1;
    public static final int M_EMPTY = 0;
    public static final int M_PCDATA = 1073741824;
    public static final int M_ROOT = Integer.MIN_VALUE;

    /* renamed from: a */
    public HashMap<String, Integer> f40351a = new HashMap<>();

    /* renamed from: b */
    public HashMap<String, ElementType> f40352b = new HashMap<>();

    /* renamed from: c */
    public String f40353c = "";

    /* renamed from: d */
    public String f40354d = "";

    /* renamed from: e */
    public ElementType f40355e = null;

    public void attribute(String str, String str2, String str3, String str4) {
        ElementType elementType = getElementType(str);
        if (elementType != null) {
            elementType.setAttribute(str2, str3, str4);
            return;
        }
        throw new Error("Attribute " + str2 + " specified for unknown element type " + str);
    }

    @SuppressLint({"DefaultLocale"})
    public void elementType(String str, int i, int i2, int i3) {
        ElementType elementType = new ElementType(str, i, i2, i3, this);
        this.f40352b.put(str.toLowerCase(), elementType);
        if (i2 == Integer.MIN_VALUE) {
            this.f40355e = elementType;
        }
    }

    public void entity(String str, int i) {
        this.f40351a.put(str, Integer.valueOf(i));
    }

    @SuppressLint({"DefaultLocale"})
    public ElementType getElementType(String str) {
        return this.f40352b.get(str.toLowerCase());
    }

    public int getEntity(String str) {
        Integer num = this.f40351a.get(str);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public String getPrefix() {
        return this.f40354d;
    }

    public String getURI() {
        return this.f40353c;
    }

    public void parent(String str, String str2) {
        ElementType elementType = getElementType(str);
        ElementType elementType2 = getElementType(str2);
        if (elementType == null) {
            throw new Error("No child " + str + " for parent " + str2);
        }
        if (elementType2 != null) {
            elementType.setParent(elementType2);
            return;
        }
        throw new Error("No parent " + str2 + " for child " + str);
    }

    public ElementType rootElementType() {
        return this.f40355e;
    }

    public void setPrefix(String str) {
        this.f40354d = str;
    }

    public void setURI(String str) {
        this.f40353c = str;
    }
}
