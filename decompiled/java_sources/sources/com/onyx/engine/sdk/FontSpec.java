package com.onyx.engine.sdk;

import android.util.Log;
import com.alibaba.fastjson2.TypeReference;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes8.dex */
public class FontSpec {
    private String family;
    private String fontStyle;
    private String fontWeight;
    private Origin origin;

    /* loaded from: classes8.dex */
    public enum Origin {
        AUTHOR,
        AGENT,
        USER;

        public static Origin valueOf(int i) {
            for (Origin origin : values()) {
                if (origin.ordinal() == i) {
                    return origin;
                }
            }
            return AUTHOR;
        }
    }

    public FontSpec() {
        this.origin = Origin.USER;
    }

    public static List<FontSpec> parseList(String str) {
        List<FontSpec> list = (List) JsonUtils.fromJson(str, new TypeReference<List<FontSpec>>() { // from class: com.onyx.engine.sdk.FontSpec.1
        }.getType());
        if (list != null) {
            return list;
        }
        Log.e(FontSpec.class.getSimpleName(), "parse fontSpec list failed, json: " + str);
        return Collections.emptyList();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        FontSpec fontSpec = (FontSpec) obj;
        return Objects.equals(this.family, fontSpec.family) && Objects.equals(this.fontWeight, fontSpec.fontWeight) && Objects.equals(this.fontStyle, fontSpec.fontStyle) && this.origin == fontSpec.origin;
    }

    public String getFamily() {
        return this.family;
    }

    public String getFontStyle() {
        return this.fontStyle;
    }

    public String getFontWeight() {
        return this.fontWeight;
    }

    public Origin getOrigin() {
        return this.origin;
    }

    public int hashCode() {
        return Objects.hash(this.family, this.fontWeight, this.fontStyle, this.origin);
    }

    public void setFamily(String str) {
        this.family = str;
    }

    public void setFontStyle(String str) {
        this.fontStyle = str;
    }

    public void setFontWeight(String str) {
        this.fontWeight = str;
    }

    public void setOrigin(Origin origin) {
        this.origin = origin;
    }

    public String toString() {
        return "FontSpec{family='" + this.family + Chars.QUOTE + ", fontWeight='" + this.fontWeight + Chars.QUOTE + ", fontStyle='" + this.fontStyle + Chars.QUOTE + ", origin=" + this.origin + '}';
    }

    public void setOrigin(int i) {
        this.origin = Origin.valueOf(i);
    }

    public FontSpec(String str) {
        this.origin = Origin.USER;
        this.family = str;
    }

    public FontSpec(String str, String str2, String str3) {
        this.origin = Origin.USER;
        this.family = str;
        this.fontWeight = str2;
        this.fontStyle = str3;
    }

    public FontSpec(String str, String str2, String str3, Origin origin) {
        Origin origin2 = Origin.USER;
        this.family = str;
        this.fontWeight = str2;
        this.fontStyle = str3;
        this.origin = origin;
    }

    public FontSpec(String str, String str2, String str3, int i) {
        this.origin = Origin.USER;
        this.family = str;
        this.fontWeight = str2;
        this.fontStyle = str3;
        this.origin = Origin.valueOf(i);
    }
}
