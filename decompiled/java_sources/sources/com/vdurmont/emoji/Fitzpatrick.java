package com.vdurmont.emoji;

/* loaded from: classes10.dex */
public enum Fitzpatrick {
    TYPE_1_2("🏻"),
    TYPE_3("🏼"),
    TYPE_4("🏽"),
    TYPE_5("🏾"),
    TYPE_6("🏿");

    public final String unicode;

    Fitzpatrick(String str) {
        this.unicode = str;
    }

    public static Fitzpatrick fitzpatrickFromType(String str) {
        try {
            return valueOf(str.toUpperCase());
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public static Fitzpatrick fitzpatrickFromUnicode(String str) {
        for (Fitzpatrick fitzpatrick : values()) {
            if (fitzpatrick.unicode.equals(str)) {
                return fitzpatrick;
            }
        }
        return null;
    }
}
