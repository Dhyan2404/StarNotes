package com.google.zxing.client.result;

import com.onyx.android.sdk.base.common.CommonConstant;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public final class URIParsedResult extends ParsedResult {

    /* renamed from: d */
    public static final Pattern f38340d = Pattern.compile(":/*([^/@]+)@[^/]+");

    /* renamed from: b */
    public final String f38341b;

    /* renamed from: c */
    public final String f38342c;

    public URIParsedResult(String str, String str2) {
        super(ParsedResultType.URI);
        this.f38341b = m30487b(str);
        this.f38342c = str2;
    }

    /* renamed from: a */
    public static boolean m30486a(String str, int i) {
        int i2 = i + 1;
        int indexOf = str.indexOf(47, i2);
        if (indexOf < 0) {
            indexOf = str.length();
        }
        return ResultParser.isSubstringOfDigits(str, i2, indexOf - i2);
    }

    /* renamed from: b */
    public static String m30487b(String str) {
        String trim = str.trim();
        int indexOf = trim.indexOf(58);
        if (indexOf >= 0 && !m30486a(trim, indexOf)) {
            return trim;
        }
        return CommonConstant.SCHEME_HTTP + trim;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(30);
        ParsedResult.maybeAppend(this.f38342c, sb);
        ParsedResult.maybeAppend(this.f38341b, sb);
        return sb.toString();
    }

    public String getTitle() {
        return this.f38342c;
    }

    public String getURI() {
        return this.f38341b;
    }

    public boolean isPossiblyMaliciousURI() {
        return f38340d.matcher(this.f38341b).find();
    }
}
