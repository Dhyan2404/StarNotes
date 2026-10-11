package com.google.zxing.client.result;

import com.google.zxing.Result;
import com.sunia.HTREnginev2.AbstractC13511b3;

/* loaded from: classes4.dex */
public final class AddressBookDoCoMoResultParser extends AbstractC13511b3 {
    /* renamed from: i */
    public static String m30466i(String str) {
        int indexOf = str.indexOf(44);
        if (indexOf < 0) {
            return str;
        }
        return str.substring(indexOf + 1) + ' ' + str.substring(0, indexOf);
    }

    @Override // com.google.zxing.client.result.ResultParser
    public AddressBookParsedResult parse(Result result) {
        String[] m53159g;
        String massagedText = ResultParser.getMassagedText(result);
        if (!massagedText.startsWith("MECARD:") || (m53159g = AbstractC13511b3.m53159g("N:", massagedText, true)) == null) {
            return null;
        }
        String m30466i = m30466i(m53159g[0]);
        String m53160h = AbstractC13511b3.m53160h("SOUND:", massagedText, true);
        String[] m53159g2 = AbstractC13511b3.m53159g("TEL:", massagedText, true);
        String[] m53159g3 = AbstractC13511b3.m53159g("EMAIL:", massagedText, true);
        String m53160h2 = AbstractC13511b3.m53160h("NOTE:", massagedText, false);
        String[] m53159g4 = AbstractC13511b3.m53159g("ADR:", massagedText, true);
        String m53160h3 = AbstractC13511b3.m53160h("BDAY:", massagedText, true);
        return new AddressBookParsedResult(ResultParser.maybeWrap(m30466i), null, m53160h, m53159g2, null, m53159g3, null, null, m53160h2, m53159g4, null, AbstractC13511b3.m53160h("ORG:", massagedText, true), !ResultParser.isStringOfDigits(m53160h3, 8) ? null : m53160h3, null, AbstractC13511b3.m53159g("URL:", massagedText, true), null);
    }
}
