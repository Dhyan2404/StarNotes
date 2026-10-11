package org.apache.commons.lang3.text.translate;

import java.io.IOException;
import java.io.Writer;
import org.apache.commons.lang3.ArrayUtils;

@Deprecated
/* loaded from: classes12.dex */
public class AggregateTranslator extends CharSequenceTranslator {

    /* renamed from: b */
    public final CharSequenceTranslator[] f107599b;

    public AggregateTranslator(CharSequenceTranslator... charSequenceTranslatorArr) {
        this.f107599b = (CharSequenceTranslator[]) ArrayUtils.clone(charSequenceTranslatorArr);
    }

    @Override // org.apache.commons.lang3.text.translate.CharSequenceTranslator
    public int translate(CharSequence charSequence, int i, Writer writer) throws IOException {
        for (CharSequenceTranslator charSequenceTranslator : this.f107599b) {
            int translate = charSequenceTranslator.translate(charSequence, i, writer);
            if (translate != 0) {
                return translate;
            }
        }
        return 0;
    }
}
