package net.p110sf.saxon.lib;

/* loaded from: classes11.dex */
public final class Validation {
    public static final int BY_TYPE = 8;
    public static final int DEFAULT = 0;
    public static final int INVALID = -1;
    public static final int LAX = 2;
    public static final int PRESERVE = 3;
    public static final int SKIP = 4;
    public static final int STRICT = 1;
    public static final int STRIP = 4;

    public static String describe(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 8 ? "invalid" : "by type" : "skip" : "preserve" : "lax" : "strict";
    }

    public static int getCode(String str) {
        if (str.equals("strict")) {
            return 1;
        }
        if (str.equals("lax")) {
            return 2;
        }
        if (str.equals("preserve")) {
            return 3;
        }
        return str.equals("strip") ? 4 : -1;
    }
}
