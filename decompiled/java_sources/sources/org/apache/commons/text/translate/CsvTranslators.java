package org.apache.commons.text.translate;

import com.sunia.HTREnginev2.btm;
import java.io.IOException;
import java.io.Writer;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes12.dex */
public final class CsvTranslators {

    /* renamed from: a */
    public static final char f110069a = ',';

    /* renamed from: b */
    public static final char f110070b = '\"';

    /* renamed from: c */
    public static final String f110071c;

    /* renamed from: d */
    public static final String f110072d;

    /* renamed from: e */
    public static final char[] f110073e;

    /* loaded from: classes12.dex */
    public static class CsvEscaper extends btm {
        @Override // com.sunia.HTREnginev2.btm
        /* renamed from: b */
        public void mo53345b(CharSequence charSequence, Writer writer) throws IOException {
            String charSequence2 = charSequence.toString();
            if (StringUtils.containsNone(charSequence2, CsvTranslators.f110073e)) {
                writer.write(charSequence2);
                return;
            }
            writer.write(34);
            writer.write(StringUtils.replace(charSequence2, CsvTranslators.f110071c, CsvTranslators.f110072d));
            writer.write(34);
        }

        @Override // com.sunia.HTREnginev2.btm, org.apache.commons.text.translate.CharSequenceTranslator
        public /* bridge */ /* synthetic */ int translate(CharSequence charSequence, int i, Writer writer) throws IOException {
            return super.translate(charSequence, i, writer);
        }
    }

    /* loaded from: classes12.dex */
    public static class CsvUnescaper extends btm {
        @Override // com.sunia.HTREnginev2.btm
        /* renamed from: b */
        public void mo53345b(CharSequence charSequence, Writer writer) throws IOException {
            if (charSequence.charAt(0) != '\"' || charSequence.charAt(charSequence.length() - 1) != '\"') {
                writer.write(charSequence.toString());
                return;
            }
            String charSequence2 = charSequence.subSequence(1, charSequence.length() - 1).toString();
            if (StringUtils.containsAny(charSequence2, CsvTranslators.f110073e)) {
                writer.write(StringUtils.replace(charSequence2, CsvTranslators.f110072d, CsvTranslators.f110071c));
            } else {
                writer.write(charSequence.toString());
            }
        }

        @Override // com.sunia.HTREnginev2.btm, org.apache.commons.text.translate.CharSequenceTranslator
        public /* bridge */ /* synthetic */ int translate(CharSequence charSequence, int i, Writer writer) throws IOException {
            return super.translate(charSequence, i, writer);
        }
    }

    static {
        String valueOf = String.valueOf('\"');
        f110071c = valueOf;
        f110072d = valueOf + valueOf;
        f110073e = new char[]{',', '\"', '\r', '\n'};
    }
}
