package org.apache.commons.lang3.text.translate;

import java.io.IOException;
import java.io.Writer;

@Deprecated
/* loaded from: classes12.dex */
public class NumericEntityEscaper extends CodePointTranslator {

    /* renamed from: b */
    public final int f107615b;

    /* renamed from: c */
    public final int f107616c;

    /* renamed from: d */
    public final boolean f107617d;

    public NumericEntityEscaper(int i, int i2, boolean z) {
        this.f107615b = i;
        this.f107616c = i2;
        this.f107617d = z;
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

    @Override // org.apache.commons.lang3.text.translate.CodePointTranslator
    public boolean translate(int i, Writer writer) throws IOException {
        if (this.f107617d) {
            if (i < this.f107615b || i > this.f107616c) {
                return false;
            }
        } else if (i >= this.f107615b && i <= this.f107616c) {
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
