package com.google.zxing.client.result;

import com.google.zxing.Result;

/* loaded from: classes4.dex */
public final class WifiResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public WifiParsedResult parse(Result result) {
        String m30482d;
        String massagedText = ResultParser.getMassagedText(result);
        if (!massagedText.startsWith("WIFI:") || (m30482d = ResultParser.m30482d("S:", massagedText, ';', false)) == null || m30482d.isEmpty()) {
            return null;
        }
        String m30482d2 = ResultParser.m30482d("P:", massagedText, ';', false);
        String m30482d3 = ResultParser.m30482d("T:", massagedText, ';', false);
        if (m30482d3 == null) {
            m30482d3 = "nopass";
        }
        return new WifiParsedResult(m30482d3, m30482d, m30482d2, Boolean.parseBoolean(ResultParser.m30482d("H:", massagedText, ';', false)));
    }
}
