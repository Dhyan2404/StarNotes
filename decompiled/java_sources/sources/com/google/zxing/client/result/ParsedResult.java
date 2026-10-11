package com.google.zxing.client.result;

/* loaded from: classes4.dex */
public abstract class ParsedResult {

    /* renamed from: a */
    public final ParsedResultType f38323a;

    public ParsedResult(ParsedResultType parsedResultType) {
        this.f38323a = parsedResultType;
    }

    public static void maybeAppend(String str, StringBuilder sb) {
        if (str == null || str.isEmpty()) {
            return;
        }
        if (sb.length() > 0) {
            sb.append('\n');
        }
        sb.append(str);
    }

    public abstract String getDisplayResult();

    public final ParsedResultType getType() {
        return this.f38323a;
    }

    public final String toString() {
        return getDisplayResult();
    }

    public static void maybeAppend(String[] strArr, StringBuilder sb) {
        if (strArr != null) {
            for (String str : strArr) {
                maybeAppend(str, sb);
            }
        }
    }
}
