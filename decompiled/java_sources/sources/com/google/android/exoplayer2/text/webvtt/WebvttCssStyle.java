package com.google.android.exoplayer2.text.webvtt;

import android.text.TextUtils;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import com.google.common.base.Ascii;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes5.dex */
public final class WebvttCssStyle {
    public static final int FONT_SIZE_UNIT_EM = 2;
    public static final int FONT_SIZE_UNIT_PERCENT = 3;
    public static final int FONT_SIZE_UNIT_PIXEL = 1;
    public static final int STYLE_BOLD = 1;
    public static final int STYLE_BOLD_ITALIC = 3;
    public static final int STYLE_ITALIC = 2;
    public static final int STYLE_NORMAL = 0;
    public static final int UNSPECIFIED = -1;

    /* renamed from: r */
    public static final int f27198r = 0;

    /* renamed from: s */
    public static final int f27199s = 1;

    /* renamed from: f */
    @ColorInt
    public int f27205f;

    /* renamed from: h */
    public int f27207h;

    /* renamed from: o */
    public float f27214o;

    /* renamed from: a */
    public String f27200a = "";

    /* renamed from: b */
    public String f27201b = "";

    /* renamed from: c */
    public Set<String> f27202c = Collections.emptySet();

    /* renamed from: d */
    public String f27203d = "";

    /* renamed from: e */
    @Nullable
    public String f27204e = null;

    /* renamed from: g */
    public boolean f27206g = false;

    /* renamed from: i */
    public boolean f27208i = false;

    /* renamed from: j */
    public int f27209j = -1;

    /* renamed from: k */
    public int f27210k = -1;

    /* renamed from: l */
    public int f27211l = -1;

    /* renamed from: m */
    public int f27212m = -1;

    /* renamed from: n */
    public int f27213n = -1;

    /* renamed from: p */
    public int f27215p = -1;

    /* renamed from: q */
    public boolean f27216q = false;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface FontSizeUnit {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface StyleFlags {
    }

    /* renamed from: a */
    public static int m20739a(int i, String str, @Nullable String str2, int i2) {
        if (str.isEmpty() || i == -1) {
            return i;
        }
        if (str.equals(str2)) {
            return i + i2;
        }
        return -1;
    }

    public int getBackgroundColor() {
        if (this.f27208i) {
            return this.f27207h;
        }
        throw new IllegalStateException("Background color not defined.");
    }

    public boolean getCombineUpright() {
        return this.f27216q;
    }

    public int getFontColor() {
        if (this.f27206g) {
            return this.f27205f;
        }
        throw new IllegalStateException("Font color not defined");
    }

    @Nullable
    public String getFontFamily() {
        return this.f27204e;
    }

    public float getFontSize() {
        return this.f27214o;
    }

    public int getFontSizeUnit() {
        return this.f27213n;
    }

    public int getRubyPosition() {
        return this.f27215p;
    }

    public int getSpecificityScore(@Nullable String str, @Nullable String str2, Set<String> set, @Nullable String str3) {
        if (this.f27200a.isEmpty() && this.f27201b.isEmpty() && this.f27202c.isEmpty() && this.f27203d.isEmpty()) {
            return TextUtils.isEmpty(str2) ? 1 : 0;
        }
        int m20739a = m20739a(m20739a(m20739a(0, this.f27200a, str, 1073741824), this.f27201b, str2, 2), this.f27203d, str3, 4);
        if (m20739a == -1 || !set.containsAll(this.f27202c)) {
            return 0;
        }
        return m20739a + (this.f27202c.size() * 4);
    }

    public int getStyle() {
        int i = this.f27211l;
        if (i == -1 && this.f27212m == -1) {
            return -1;
        }
        return (i == 1 ? 1 : 0) | (this.f27212m == 1 ? 2 : 0);
    }

    public boolean hasBackgroundColor() {
        return this.f27208i;
    }

    public boolean hasFontColor() {
        return this.f27206g;
    }

    public boolean isLinethrough() {
        return this.f27209j == 1;
    }

    public boolean isUnderline() {
        return this.f27210k == 1;
    }

    public WebvttCssStyle setBackgroundColor(int i) {
        this.f27207h = i;
        this.f27208i = true;
        return this;
    }

    public WebvttCssStyle setBold(boolean z) {
        this.f27211l = z ? 1 : 0;
        return this;
    }

    public WebvttCssStyle setCombineUpright(boolean z) {
        this.f27216q = z;
        return this;
    }

    public WebvttCssStyle setFontColor(int i) {
        this.f27205f = i;
        this.f27206g = true;
        return this;
    }

    public WebvttCssStyle setFontFamily(@Nullable String str) {
        this.f27204e = str == null ? null : Ascii.toLowerCase(str);
        return this;
    }

    public WebvttCssStyle setFontSize(float f) {
        this.f27214o = f;
        return this;
    }

    public WebvttCssStyle setFontSizeUnit(int i) {
        this.f27213n = i;
        return this;
    }

    public WebvttCssStyle setItalic(boolean z) {
        this.f27212m = z ? 1 : 0;
        return this;
    }

    public WebvttCssStyle setLinethrough(boolean z) {
        this.f27209j = z ? 1 : 0;
        return this;
    }

    public WebvttCssStyle setRubyPosition(int i) {
        this.f27215p = i;
        return this;
    }

    public void setTargetClasses(String[] strArr) {
        this.f27202c = new HashSet(Arrays.asList(strArr));
    }

    public void setTargetId(String str) {
        this.f27200a = str;
    }

    public void setTargetTagName(String str) {
        this.f27201b = str;
    }

    public void setTargetVoice(String str) {
        this.f27203d = str;
    }

    public WebvttCssStyle setUnderline(boolean z) {
        this.f27210k = z ? 1 : 0;
        return this;
    }
}
