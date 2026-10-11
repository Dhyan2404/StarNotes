package com.google.zxing.client.result;

import androidx.core.net.MailTo;
import com.google.zxing.Result;
import java.util.Map;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public final class EmailAddressResultParser extends ResultParser {

    /* renamed from: f */
    public static final Pattern f38300f = Pattern.compile(",");

    @Override // com.google.zxing.client.result.ResultParser
    public EmailAddressParsedResult parse(Result result) {
        String[] strArr;
        String[] strArr2;
        String[] strArr3;
        String str;
        String str2;
        String str3;
        String massagedText = ResultParser.getMassagedText(result);
        if (!massagedText.startsWith(MailTo.MAILTO_SCHEME) && !massagedText.startsWith("MAILTO:")) {
            if (EmailDoCoMoResultParser.m30474i(massagedText)) {
                return new EmailAddressParsedResult(massagedText);
            }
            return null;
        }
        String substring = massagedText.substring(7);
        int indexOf = substring.indexOf(63);
        if (indexOf >= 0) {
            substring = substring.substring(0, indexOf);
        }
        try {
            String m30484f = ResultParser.m30484f(substring);
            String[] split = !m30484f.isEmpty() ? f38300f.split(m30484f) : null;
            Map<String, String> m30483e = ResultParser.m30483e(massagedText);
            if (m30483e != null) {
                if (split == null && (str3 = m30483e.get("to")) != null) {
                    split = f38300f.split(str3);
                }
                String str4 = m30483e.get(MailTo.f5527e);
                String[] split2 = str4 != null ? f38300f.split(str4) : null;
                String str5 = m30483e.get(MailTo.f5528f);
                String[] split3 = str5 != null ? f38300f.split(str5) : null;
                String str6 = m30483e.get(MailTo.f5529g);
                str2 = m30483e.get("body");
                strArr = split;
                strArr3 = split3;
                strArr2 = split2;
                str = str6;
            } else {
                strArr = split;
                strArr2 = null;
                strArr3 = null;
                str = null;
                str2 = null;
            }
            return new EmailAddressParsedResult(strArr, strArr2, strArr3, str, str2);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }
}
