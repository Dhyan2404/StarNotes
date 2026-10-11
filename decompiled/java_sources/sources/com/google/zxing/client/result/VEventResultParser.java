package com.google.zxing.client.result;

import androidx.core.net.MailTo;
import com.google.zxing.Result;
import java.util.List;

/* loaded from: classes4.dex */
public final class VEventResultParser extends ResultParser {
    /* renamed from: g */
    public static String m30499g(CharSequence charSequence, String str, boolean z) {
        List<String> m30492j = VCardResultParser.m30492j(charSequence, str, z, false);
        if (m30492j == null || m30492j.isEmpty()) {
            return null;
        }
        return m30492j.get(0);
    }

    /* renamed from: h */
    public static String[] m30500h(CharSequence charSequence, String str, boolean z) {
        List<List<String>> m30493k = VCardResultParser.m30493k(charSequence, str, z, false);
        if (m30493k == null || m30493k.isEmpty()) {
            return null;
        }
        int size = m30493k.size();
        String[] strArr = new String[size];
        for (int i = 0; i < size; i++) {
            strArr[i] = m30493k.get(i).get(0);
        }
        return strArr;
    }

    /* renamed from: i */
    public static String m30501i(String str) {
        return str != null ? (str.startsWith(MailTo.MAILTO_SCHEME) || str.startsWith("MAILTO:")) ? str.substring(7) : str : str;
    }

    @Override // com.google.zxing.client.result.ResultParser
    public CalendarParsedResult parse(Result result) {
        double parseDouble;
        double parseDouble2;
        String massagedText = ResultParser.getMassagedText(result);
        if (massagedText.indexOf("BEGIN:VEVENT") < 0) {
            return null;
        }
        String m30499g = m30499g("SUMMARY", massagedText, true);
        String m30499g2 = m30499g("DTSTART", massagedText, true);
        if (m30499g2 == null) {
            return null;
        }
        String m30499g3 = m30499g("DTEND", massagedText, true);
        String m30499g4 = m30499g("DURATION", massagedText, true);
        String m30499g5 = m30499g("LOCATION", massagedText, true);
        String m30501i = m30501i(m30499g("ORGANIZER", massagedText, true));
        String[] m30500h = m30500h("ATTENDEE", massagedText, true);
        if (m30500h != null) {
            for (int i = 0; i < m30500h.length; i++) {
                m30500h[i] = m30501i(m30500h[i]);
            }
        }
        String m30499g6 = m30499g("DESCRIPTION", massagedText, true);
        String m30499g7 = m30499g("GEO", massagedText, true);
        if (m30499g7 == null) {
            parseDouble = Double.NaN;
            parseDouble2 = Double.NaN;
        } else {
            int indexOf = m30499g7.indexOf(59);
            if (indexOf < 0) {
                return null;
            }
            try {
                parseDouble = Double.parseDouble(m30499g7.substring(0, indexOf));
                parseDouble2 = Double.parseDouble(m30499g7.substring(indexOf + 1));
            } catch (NumberFormatException | IllegalArgumentException unused) {
                return null;
            }
        }
        return new CalendarParsedResult(m30499g, m30499g2, m30499g3, m30499g4, m30499g5, m30501i, m30500h, m30499g6, parseDouble, parseDouble2);
    }
}
