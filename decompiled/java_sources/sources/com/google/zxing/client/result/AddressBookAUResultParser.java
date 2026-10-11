package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.ArrayList;

/* loaded from: classes4.dex */
public final class AddressBookAUResultParser extends ResultParser {
    /* renamed from: g */
    public static String[] m30465g(String str, int i, String str2, boolean z) {
        ArrayList arrayList = null;
        for (int i2 = 1; i2 <= i; i2++) {
            String m30482d = ResultParser.m30482d(str + i2 + ':', str2, '\r', z);
            if (m30482d == null) {
                break;
            }
            if (arrayList == null) {
                arrayList = new ArrayList(i);
            }
            arrayList.add(m30482d);
        }
        if (arrayList == null) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    @Override // com.google.zxing.client.result.ResultParser
    public AddressBookParsedResult parse(Result result) {
        String massagedText = ResultParser.getMassagedText(result);
        if (!massagedText.contains("MEMORY") || !massagedText.contains("\r\n")) {
            return null;
        }
        String m30482d = ResultParser.m30482d("NAME1:", massagedText, '\r', true);
        String m30482d2 = ResultParser.m30482d("NAME2:", massagedText, '\r', true);
        String[] m30465g = m30465g("TEL", 3, massagedText, true);
        String[] m30465g2 = m30465g("MAIL", 3, massagedText, true);
        String m30482d3 = ResultParser.m30482d("MEMORY:", massagedText, '\r', false);
        String m30482d4 = ResultParser.m30482d("ADD:", massagedText, '\r', true);
        return new AddressBookParsedResult(ResultParser.maybeWrap(m30482d), null, m30482d2, m30465g, null, m30465g2, null, null, m30482d3, m30482d4 != null ? new String[]{m30482d4} : null, null, null, null, null, null, null);
    }
}
