package org.apache.commons.lang3.text.translate;

import java.io.IOException;
import java.io.Writer;

@Deprecated
/* loaded from: classes12.dex */
public class UnicodeEscaper extends CodePointTranslator {

    /* renamed from: b */
    public final int f107619b;

    /* renamed from: c */
    public final int f107620c;

    /* renamed from: d */
    public final boolean f107621d;

    public UnicodeEscaper() {
        this(0, Integer.MAX_VALUE, true);
    }

    public static UnicodeEscaper above(int i) {
        return outsideOf(0, i);
    }

    public static UnicodeEscaper below(int i) {
        return outsideOf(i, Integer.MAX_VALUE);
    }

    public static UnicodeEscaper between(int i, int i2) {
        return new UnicodeEscaper(i, i2, true);
    }

    public static UnicodeEscaper outsideOf(int i, int i2) {
        return new UnicodeEscaper(i, i2, false);
    }

    public String toUtf16Escape(int i) {
        return "\\u" + CharSequenceTranslator.hex(i);
    }

    @Override // org.apache.commons.lang3.text.translate.CodePointTranslator
    public boolean translate(int i, Writer writer) throws IOException {
        if (this.f107621d) {
            if (i < this.f107619b || i > this.f107620c) {
                return false;
            }
        } else if (i >= this.f107619b && i <= this.f107620c) {
            return false;
        }
        if (i > 65535) {
            writer.write(toUtf16Escape(i));
            return true;
        }
        writer.write("\\u");
        char[] cArr = CharSequenceTranslator.f107600a;
        writer.write(cArr[(i >> 12) & 15]);
        writer.write(cArr[(i >> 8) & 15]);
        writer.write(cArr[(i >> 4) & 15]);
        writer.write(cArr[i & 15]);
        return true;
    }

    public UnicodeEscaper(int i, int i2, boolean z) {
        this.f107619b = i;
        this.f107620c = i2;
        this.f107621d = z;
    }
}
