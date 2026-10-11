package com.vdurmont.emoji;

import java.io.UnsupportedEncodingException;
import java.util.Collections;
import java.util.List;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes10.dex */
public class Emoji {

    /* renamed from: a */
    public final String f94439a;

    /* renamed from: b */
    public final boolean f94440b;

    /* renamed from: c */
    public final List<String> f94441c;

    /* renamed from: d */
    public final List<String> f94442d;

    /* renamed from: e */
    public final String f94443e;

    /* renamed from: f */
    public final String f94444f;

    /* renamed from: g */
    public final String f94445g;

    public Emoji(String str, boolean z, List<String> list, List<String> list2, byte... bArr) {
        this.f94439a = str;
        this.f94440b = z;
        this.f94441c = Collections.unmodifiableList(list);
        this.f94442d = Collections.unmodifiableList(list2);
        try {
            this.f94443e = new String(bArr, "UTF-8");
            int length = getUnicode().length();
            String[] strArr = new String[length];
            String[] strArr2 = new String[length];
            int i = 0;
            int i2 = 0;
            while (i < length) {
                int codePointAt = getUnicode().codePointAt(i);
                strArr[i2] = String.format("&#%d;", Integer.valueOf(codePointAt));
                strArr2[i2] = String.format("&#x%x;", Integer.valueOf(codePointAt));
                i += Character.charCount(codePointAt);
                i2++;
            }
            this.f94444f = m60826a(strArr, i2);
            this.f94445g = m60826a(strArr2, i2);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: a */
    public final String m60826a(String[] strArr, int i) {
        String str = "";
        for (int i2 = 0; i2 < i; i2++) {
            str = str + strArr[i2];
        }
        return str;
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof Emoji) && ((Emoji) obj).getUnicode().equals(getUnicode());
    }

    public List<String> getAliases() {
        return this.f94441c;
    }

    public String getDescription() {
        return this.f94439a;
    }

    public String getHtmlDecimal() {
        return this.f94444f;
    }

    public String getHtmlHexadecimal() {
        return this.f94445g;
    }

    public String getHtmlHexidecimal() {
        return getHtmlHexadecimal();
    }

    public List<String> getTags() {
        return this.f94442d;
    }

    public String getUnicode() {
        return this.f94443e;
    }

    public int hashCode() {
        return this.f94443e.hashCode();
    }

    public boolean supportsFitzpatrick() {
        return this.f94440b;
    }

    public String toString() {
        return "Emoji{description='" + this.f94439a + Chars.QUOTE + ", supportsFitzpatrick=" + this.f94440b + ", aliases=" + this.f94441c + ", tags=" + this.f94442d + ", unicode='" + this.f94443e + Chars.QUOTE + ", htmlDec='" + this.f94444f + Chars.QUOTE + ", htmlHex='" + this.f94445g + Chars.QUOTE + '}';
    }

    public String getUnicode(Fitzpatrick fitzpatrick) {
        if (!supportsFitzpatrick()) {
            throw new UnsupportedOperationException("Cannot get the unicode with a fitzpatrick modifier, the emoji doesn't support fitzpatrick.");
        }
        if (fitzpatrick == null) {
            return getUnicode();
        }
        return getUnicode() + fitzpatrick.unicode;
    }
}
