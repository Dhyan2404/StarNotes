package com.onegravity.rteditor.converter.tagsoup.util;

import java.io.IOException;
import java.io.Writer;

/* loaded from: classes7.dex */
public class AggregateTranslator extends CharSequenceTranslator {

    /* renamed from: a */
    public final CharSequenceTranslator[] f40356a;

    public AggregateTranslator(CharSequenceTranslator... charSequenceTranslatorArr) {
        this.f40356a = (CharSequenceTranslator[]) clone(charSequenceTranslatorArr);
    }

    public static <T> T[] clone(T[] tArr) {
        if (tArr == null) {
            return null;
        }
        return (T[]) ((Object[]) tArr.clone());
    }

    @Override // com.onegravity.rteditor.converter.tagsoup.util.CharSequenceTranslator
    public int translate(CharSequence charSequence, int i, Writer writer) throws IOException {
        for (CharSequenceTranslator charSequenceTranslator : this.f40356a) {
            int translate = charSequenceTranslator.translate(charSequence, i, writer);
            if (translate != 0) {
                return translate;
            }
        }
        return 0;
    }
}
