package com.dropbox.core.p005v1;

/* loaded from: classes4.dex */
public final class DbxWriteMode {

    /* renamed from: b */
    public static final DbxWriteMode f16735b = new DbxWriteMode("overwrite", "false");

    /* renamed from: c */
    public static final DbxWriteMode f16736c = new DbxWriteMode("overwrite", "true");

    /* renamed from: a */
    public final String[] f16737a;

    public DbxWriteMode(String... strArr) {
        this.f16737a = strArr;
    }

    public static DbxWriteMode add() {
        return f16735b;
    }

    public static DbxWriteMode force() {
        return f16736c;
    }

    public static DbxWriteMode update(String str) {
        return new DbxWriteMode("parent_rev", str);
    }
}
