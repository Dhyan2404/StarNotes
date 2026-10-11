package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public final class URIResultParser extends ResultParser {

    /* renamed from: f */
    public static final Pattern f38343f = Pattern.compile("[a-zA-Z][a-zA-Z0-9+-.]+:");

    /* renamed from: g */
    public static final Pattern f38344g = Pattern.compile("([a-zA-Z0-9\\-]+\\.){1,6}[a-zA-Z]{2,}(:\\d{1,5})?(/|\\?|$)");

    /* renamed from: g */
    public static boolean m30488g(String str) {
        if (str.contains(" ")) {
            return false;
        }
        Matcher matcher = f38343f.matcher(str);
        if (matcher.find() && matcher.start() == 0) {
            return true;
        }
        Matcher matcher2 = f38344g.matcher(str);
        return matcher2.find() && matcher2.start() == 0;
    }

    @Override // com.google.zxing.client.result.ResultParser
    public URIParsedResult parse(Result result) {
        String massagedText = ResultParser.getMassagedText(result);
        if (!massagedText.startsWith("URL:") && !massagedText.startsWith("URI:")) {
            String trim = massagedText.trim();
            if (m30488g(trim)) {
                return new URIParsedResult(trim, null);
            }
            return null;
        }
        return new URIParsedResult(massagedText.substring(4).trim(), null);
    }
}
