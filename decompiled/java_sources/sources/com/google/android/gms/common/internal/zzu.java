package com.google.android.gms.common.internal;

import android.net.Uri;

/* loaded from: classes5.dex */
public final class zzu {

    /* renamed from: a */
    public static final Uri f29422a;

    /* renamed from: b */
    public static final Uri f29423b;

    static {
        Uri parse = Uri.parse("https://plus.google.com/");
        f29422a = parse;
        f29423b = parse.buildUpon().appendPath("circles").appendPath("find").build();
    }
}
