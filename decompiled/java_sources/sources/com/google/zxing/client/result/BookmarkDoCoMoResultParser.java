package com.google.zxing.client.result;

import com.google.zxing.Result;
import com.sunia.HTREnginev2.AbstractC13511b3;

/* loaded from: classes4.dex */
public final class BookmarkDoCoMoResultParser extends AbstractC13511b3 {
    @Override // com.google.zxing.client.result.ResultParser
    public URIParsedResult parse(Result result) {
        String text = result.getText();
        if (!text.startsWith("MEBKM:")) {
            return null;
        }
        String m53160h = AbstractC13511b3.m53160h("TITLE:", text, true);
        String[] m53159g = AbstractC13511b3.m53159g("URL:", text, true);
        if (m53159g == null) {
            return null;
        }
        String str = m53159g[0];
        if (URIResultParser.m30488g(str)) {
            return new URIParsedResult(str, m53160h);
        }
        return null;
    }
}
