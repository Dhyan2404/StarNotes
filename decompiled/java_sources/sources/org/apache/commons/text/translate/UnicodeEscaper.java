package org.apache.commons.text.translate;

import java.io.IOException;
import java.io.Writer;

/* loaded from: classes12.dex */
public class UnicodeEscaper extends CodePointTranslator {

    /* renamed from: b */
    public final int f110081b;

    /* renamed from: c */
    public final int f110082c;

    /* renamed from: d */
    public final boolean f110083d;

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

    @Override // org.apache.commons.text.translate.CodePointTranslator
    public boolean translate(int i, Writer writer) throws IOException {
        if (this.f110083d) {
            if (i < this.f110081b || i > this.f110082c) {
                return false;
            }
        } else if (i >= this.f110081b && i <= this.f110082c) {
            return false;
        }
        if (i > 65535) {
            writer.write(toUtf16Escape(i));
            return true;
        }
        writer.write("\\u");
        char[] cArr = CharSequenceTranslator.f110068a;
        writer.write(cArr[(i >> 12) & 15]);
        writer.write(cArr[(i >> 8) & 15]);
        writer.write(cArr[(i >> 4) & 15]);
        writer.write(cArr[i & 15]);
        return true;
    }

    public UnicodeEscaper(int i, int i2, boolean z) {
        this.f110081b = i;
        this.f110082c = i2;
        this.f110083d = z;
    }
}
