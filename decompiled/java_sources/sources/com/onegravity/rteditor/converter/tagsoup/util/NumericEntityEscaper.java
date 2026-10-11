package com.onegravity.rteditor.converter.tagsoup.util;

import java.io.IOException;
import java.io.Writer;

/* loaded from: classes7.dex */
public class NumericEntityEscaper extends CodePointTranslator {

    /* renamed from: a */
    public final int f40366a;

    /* renamed from: b */
    public final int f40367b;

    /* renamed from: c */
    public final boolean f40368c;

    public NumericEntityEscaper(int i, int i2, boolean z) {
        this.f40366a = i;
        this.f40367b = i2;
        this.f40368c = z;
    }

    public static NumericEntityEscaper above(int i) {
        return outsideOf(0, i);
    }

    public static NumericEntityEscaper below(int i) {
        return outsideOf(i, Integer.MAX_VALUE);
    }

    public static NumericEntityEscaper between(int i, int i2) {
        return new NumericEntityEscaper(i, i2, true);
    }

    public static NumericEntityEscaper outsideOf(int i, int i2) {
        return new NumericEntityEscaper(i, i2, false);
    }

    @Override // com.onegravity.rteditor.converter.tagsoup.util.CodePointTranslator
    public boolean translate(int i, Writer writer) throws IOException {
        if (this.f40368c) {
            if (i < this.f40366a || i > this.f40367b) {
                return false;
            }
        } else if (i >= this.f40366a && i <= this.f40367b) {
            return false;
        }
        writer.write("&#");
        writer.write(Integer.toString(i, 10));
        writer.write(59);
        return true;
    }

    public NumericEntityEscaper() {
        this(0, Integer.MAX_VALUE, true);
    }
}
