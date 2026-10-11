package com.sunia.HTREnginev2;

import java.io.IOException;
import java.io.Writer;
import org.apache.commons.text.translate.CharSequenceTranslator;

/* loaded from: classes12.dex */
public abstract class btm extends CharSequenceTranslator {
    /* renamed from: a */
    public final String m53344a() {
        Class<?> cls = getClass();
        return cls.isAnonymousClass() ? cls.getName() : cls.getSimpleName();
    }

    /* renamed from: b */
    public abstract void mo53345b(CharSequence charSequence, Writer writer) throws IOException;

    @Override // org.apache.commons.text.translate.CharSequenceTranslator
    public int translate(CharSequence charSequence, int i, Writer writer) throws IOException {
        if (i == 0) {
            mo53345b(charSequence, writer);
            return Character.codePointCount(charSequence, i, charSequence.length());
        }
        throw new IllegalArgumentException(m53344a() + ".translate(final CharSequence input, final int index, final Writer out) can not handle a non-zero index.");
    }
}
