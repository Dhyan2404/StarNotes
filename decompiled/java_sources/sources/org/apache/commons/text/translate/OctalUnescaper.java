package org.apache.commons.text.translate;

import java.io.IOException;
import java.io.Writer;

/* loaded from: classes12.dex */
public class OctalUnescaper extends CharSequenceTranslator {
    /* renamed from: a */
    public final boolean m68280a(char c) {
        return c >= '0' && c <= '7';
    }

    /* renamed from: b */
    public final boolean m68281b(char c) {
        return c >= '0' && c <= '3';
    }

    @Override // org.apache.commons.text.translate.CharSequenceTranslator
    public int translate(CharSequence charSequence, int i, Writer writer) throws IOException {
        int length = (charSequence.length() - i) - 1;
        StringBuilder sb = new StringBuilder();
        if (charSequence.charAt(i) != '\\' || length <= 0) {
            return 0;
        }
        int i2 = i + 1;
        if (!m68280a(charSequence.charAt(i2))) {
            return 0;
        }
        int i3 = i + 2;
        int i4 = i + 3;
        sb.append(charSequence.charAt(i2));
        if (length > 1 && m68280a(charSequence.charAt(i3))) {
            sb.append(charSequence.charAt(i3));
            if (length > 2 && m68281b(charSequence.charAt(i2)) && m68280a(charSequence.charAt(i4))) {
                sb.append(charSequence.charAt(i4));
            }
        }
        writer.write(Integer.parseInt(sb.toString(), 8));
        return sb.length() + 1;
    }
}
