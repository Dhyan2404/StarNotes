package com.onyx.engine.sdk;

import com.onyx.engine.sdk.FontSpec;
import java.util.Objects;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes8.dex */
public class FontEntry {
    private String fontFamily;
    private int fontIndex;
    private String fontPath;
    private String fontStyle;
    private String fontWeight;
    private FontSpec.Origin origin = FontSpec.Origin.USER;

    public FontEntry() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        FontEntry fontEntry = (FontEntry) obj;
        return this.fontIndex == fontEntry.fontIndex && this.origin == fontEntry.origin && Objects.equals(this.fontPath, fontEntry.fontPath) && Objects.equals(this.fontFamily, fontEntry.fontFamily) && Objects.equals(this.fontStyle, fontEntry.fontStyle) && Objects.equals(this.fontWeight, fontEntry.fontWeight);
    }

    public String getFontFamily() {
        return this.fontFamily;
    }

    public int getFontIndex() {
        return this.fontIndex;
    }

    public String getFontPath() {
        return this.fontPath;
    }

    public String getFontStyle() {
        return this.fontStyle;
    }

    public String getFontWeight() {
        return this.fontWeight;
    }

    public FontSpec.Origin getOrigin() {
        return this.origin;
    }

    public int hashCode() {
        return Objects.hash(this.fontPath, this.fontFamily, this.fontStyle, this.fontWeight, Integer.valueOf(this.fontIndex), this.origin);
    }

    public FontEntry setFontFamily(String str) {
        this.fontFamily = str;
        return this;
    }

    public FontEntry setFontIndex(int i) {
        this.fontIndex = i;
        return this;
    }

    public FontEntry setFontPath(String str) {
        this.fontPath = str;
        return this;
    }

    public FontEntry setFontStyle(String str) {
        this.fontStyle = str;
        return this;
    }

    public FontEntry setFontWeight(String str) {
        this.fontWeight = str;
        return this;
    }

    public FontEntry setOrigin(int i) {
        this.origin = FontSpec.Origin.valueOf(i);
        return this;
    }

    public String toString() {
        return "FontEntry{fontPath='" + this.fontPath + Chars.QUOTE + ", fontFamily='" + this.fontFamily + Chars.QUOTE + ", fontStyle='" + this.fontStyle + Chars.QUOTE + ", fontWeight='" + this.fontWeight + Chars.QUOTE + ", fontIndex=" + this.fontIndex + ", origin=" + this.origin + '}';
    }

    public FontEntry setOrigin(FontSpec.Origin origin) {
        this.origin = origin;
        return this;
    }

    public FontEntry(String str) {
        this.fontPath = str;
    }
}
