package com.onegravity.rteditor.converter.tagsoup.util;

import java.io.IOException;
import java.io.Writer;
import java.util.HashMap;

/* loaded from: classes7.dex */
public class LookupTranslator extends CharSequenceTranslator {

    /* renamed from: a */
    public final HashMap<String, CharSequence> f40363a = new HashMap<>();

    /* renamed from: b */
    public final int f40364b;

    /* renamed from: c */
    public final int f40365c;

    public LookupTranslator(CharSequence[]... charSequenceArr) {
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        if (charSequenceArr != null) {
            int i3 = 0;
            for (CharSequence[] charSequenceArr2 : charSequenceArr) {
                this.f40363a.put(charSequenceArr2[0].toString(), charSequenceArr2[1]);
                int length = charSequenceArr2[0].length();
                i = length < i ? length : i;
                if (length > i3) {
                    i3 = length;
                }
            }
            i2 = i3;
        }
        this.f40364b = i;
        this.f40365c = i2;
    }

    @Override // com.onegravity.rteditor.converter.tagsoup.util.CharSequenceTranslator
    public int translate(CharSequence charSequence, int i, Writer writer) throws IOException {
        int i2 = this.f40365c;
        if (i + i2 > charSequence.length()) {
            i2 = charSequence.length() - i;
        }
        while (i2 >= this.f40364b) {
            CharSequence charSequence2 = this.f40363a.get(charSequence.subSequence(i, i + i2).toString());
            if (charSequence2 != null) {
                writer.write(charSequence2.toString());
                return i2;
            }
            i2--;
        }
        return 0;
    }
}
