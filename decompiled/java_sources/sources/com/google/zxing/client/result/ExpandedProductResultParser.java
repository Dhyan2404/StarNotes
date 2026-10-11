package com.google.zxing.client.result;

/* loaded from: classes4.dex */
public final class ExpandedProductResultParser extends ResultParser {
    /* renamed from: g */
    public static String m30477g(int i, String str) {
        char charAt;
        if (str.charAt(i) != '(') {
            return null;
        }
        String substring = str.substring(i + 1);
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < substring.length() && (charAt = substring.charAt(i2)) != ')'; i2++) {
            if (charAt < '0' || charAt > '9') {
                return null;
            }
            sb.append(charAt);
        }
        return sb.toString();
    }

    /* renamed from: h */
    public static String m30478h(int i, String str) {
        StringBuilder sb = new StringBuilder();
        String substring = str.substring(i);
        for (int i2 = 0; i2 < substring.length(); i2++) {
            char charAt = substring.charAt(i2);
            if (charAt != '(') {
                sb.append(charAt);
            } else {
                if (m30477g(i2, substring) != null) {
                    break;
                }
                sb.append('(');
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:144:0x020b, code lost:
    
        if (r1.equals("10") == false) goto L13;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x0228. Please report as an issue. */
    @Override // com.google.zxing.client.result.ResultParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.zxing.client.result.ExpandedProductParsedResult parse(com.google.zxing.Result r23) {
        /*
            Method dump skipped, instructions count: 882
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.client.result.ExpandedProductResultParser.parse(com.google.zxing.Result):com.google.zxing.client.result.ExpandedProductParsedResult");
    }
}
