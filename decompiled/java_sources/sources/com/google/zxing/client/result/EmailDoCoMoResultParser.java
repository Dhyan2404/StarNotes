package com.google.zxing.client.result;

import com.google.zxing.Result;
import com.sunia.HTREnginev2.AbstractC13511b3;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public final class EmailDoCoMoResultParser extends AbstractC13511b3 {

    /* renamed from: f */
    public static final Pattern f38301f = Pattern.compile("[a-zA-Z0-9@.!#$%&'*+\\-/=?^_`{|}~]+");

    /* renamed from: i */
    public static boolean m30474i(String str) {
        return str != null && f38301f.matcher(str).matches() && str.indexOf(64) >= 0;
    }

    @Override // com.google.zxing.client.result.ResultParser
    public EmailAddressParsedResult parse(Result result) {
        String[] m53159g;
        String massagedText = ResultParser.getMassagedText(result);
        if (!massagedText.startsWith("MATMSG:") || (m53159g = AbstractC13511b3.m53159g("TO:", massagedText, true)) == null) {
            return null;
        }
        for (String str : m53159g) {
            if (!m30474i(str)) {
                return null;
            }
        }
        return new EmailAddressParsedResult(m53159g, null, null, AbstractC13511b3.m53160h("SUB:", massagedText, false), AbstractC13511b3.m53160h("BODY:", massagedText, false));
    }
}
