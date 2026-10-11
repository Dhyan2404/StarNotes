package com.google.zxing.client.result;

import com.google.zxing.Result;
import com.sunia.HTREnginev2.AbstractC13511b3;
import java.util.ArrayList;

/* loaded from: classes4.dex */
public final class BizcardResultParser extends AbstractC13511b3 {
    /* renamed from: i */
    public static String m30467i(String str, String str2) {
        if (str == null) {
            return str2;
        }
        if (str2 == null) {
            return str;
        }
        return str + ' ' + str2;
    }

    /* renamed from: j */
    public static String[] m30468j(String str, String str2, String str3) {
        ArrayList arrayList = new ArrayList(3);
        if (str != null) {
            arrayList.add(str);
        }
        if (str2 != null) {
            arrayList.add(str2);
        }
        if (str3 != null) {
            arrayList.add(str3);
        }
        int size = arrayList.size();
        if (size == 0) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[size]);
    }

    @Override // com.google.zxing.client.result.ResultParser
    public AddressBookParsedResult parse(Result result) {
        String massagedText = ResultParser.getMassagedText(result);
        if (!massagedText.startsWith("BIZCARD:")) {
            return null;
        }
        String m30467i = m30467i(AbstractC13511b3.m53160h("N:", massagedText, true), AbstractC13511b3.m53160h("X:", massagedText, true));
        String m53160h = AbstractC13511b3.m53160h("T:", massagedText, true);
        String m53160h2 = AbstractC13511b3.m53160h("C:", massagedText, true);
        return new AddressBookParsedResult(ResultParser.maybeWrap(m30467i), null, null, m30468j(AbstractC13511b3.m53160h("B:", massagedText, true), AbstractC13511b3.m53160h("M:", massagedText, true), AbstractC13511b3.m53160h("F:", massagedText, true)), null, ResultParser.maybeWrap(AbstractC13511b3.m53160h("E:", massagedText, true)), null, null, null, AbstractC13511b3.m53159g("A:", massagedText, true), null, m53160h2, null, m53160h, null, null);
    }
}
