package org.apache.commons.lang3.text.translate;

import java.io.IOException;
import java.io.Writer;

@Deprecated
/* loaded from: classes12.dex */
public class OctalUnescaper extends CharSequenceTranslator {
    /* renamed from: a */
    public final boolean m67380a(char c) {
        return c >= '0' && c <= '7';
    }

    /* renamed from: b */
    public final boolean m67381b(char c) {
        return c >= '0' && c <= '3';
    }

    @Override // org.apache.commons.lang3.text.translate.CharSequenceTranslator
    public int translate(CharSequence charSequence, int i, Writer writer) throws IOException {
        int length = (charSequence.length() - i) - 1;
        StringBuilder sb = new StringBuilder();
        if (charSequence.charAt(i) != '\\' || length <= 0) {
            return 0;
        }
        int i2 = i + 1;
        if (!m67380a(charSequence.charAt(i2))) {
            return 0;
        }
        int i3 = i + 2;
        int i4 = i + 3;
        sb.append(charSequence.charAt(i2));
        if (length > 1 && m67380a(charSequence.charAt(i3))) {
            sb.append(charSequence.charAt(i3));
            if (length > 2 && m67381b(charSequence.charAt(i2)) && m67380a(charSequence.charAt(i4))) {
                sb.append(charSequence.charAt(i4));
            }
        }
        writer.write(Integer.parseInt(sb.toString(), 8));
        return sb.length() + 1;
    }
}
