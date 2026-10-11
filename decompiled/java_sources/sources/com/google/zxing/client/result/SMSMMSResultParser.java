package com.google.zxing.client.result;

import androidx.core.net.MailTo;
import com.google.zxing.Result;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* loaded from: classes4.dex */
public final class SMSMMSResultParser extends ResultParser {
    /* renamed from: g */
    public static void m30485g(Collection<String> collection, Collection<String> collection2, String str) {
        int indexOf = str.indexOf(59);
        if (indexOf < 0) {
            collection.add(str);
            collection2.add(null);
        } else {
            collection.add(str.substring(0, indexOf));
            String substring = str.substring(indexOf + 1);
            collection2.add(substring.startsWith("via=") ? substring.substring(4) : null);
        }
    }

    @Override // com.google.zxing.client.result.ResultParser
    public SMSParsedResult parse(Result result) {
        boolean z;
        String str;
        String substring;
        String massagedText = ResultParser.getMassagedText(result);
        String str2 = null;
        if (!massagedText.startsWith("sms:") && !massagedText.startsWith("SMS:") && !massagedText.startsWith("mms:") && !massagedText.startsWith("MMS:")) {
            return null;
        }
        Map<String, String> m30483e = ResultParser.m30483e(massagedText);
        if (m30483e == null || m30483e.isEmpty()) {
            z = false;
            str = null;
        } else {
            str2 = m30483e.get(MailTo.f5529g);
            str = m30483e.get("body");
            z = true;
        }
        int indexOf = massagedText.indexOf(63, 4);
        if (indexOf >= 0 && z) {
            substring = massagedText.substring(4, indexOf);
        } else {
            substring = massagedText.substring(4);
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        int i = -1;
        while (true) {
            int i2 = i + 1;
            int indexOf2 = substring.indexOf(44, i2);
            if (indexOf2 > i) {
                m30485g(arrayList, arrayList2, substring.substring(i2, indexOf2));
                i = indexOf2;
            } else {
                m30485g(arrayList, arrayList2, substring.substring(i2));
                return new SMSParsedResult((String[]) arrayList.toArray(new String[arrayList.size()]), (String[]) arrayList2.toArray(new String[arrayList2.size()]), str2, str);
            }
        }
    }
}
