package com.sunia.HTREnginev2;

import android.net.Uri;

/* loaded from: classes5.dex */
public final class lop implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ boolean f76727e;

    /* renamed from: f */
    public final /* synthetic */ Uri f76728f;

    /* renamed from: g */
    public final /* synthetic */ String f76729g;

    /* renamed from: h */
    public final /* synthetic */ String f76730h;

    /* renamed from: i */
    public final /* synthetic */ eop f76731i;

    public lop(eop eopVar, boolean z, Uri uri, String str, String str2) {
        this.f76727e = z;
        this.f76728f = uri;
        this.f76729g = str;
        this.f76730h = str2;
        this.f76731i = eopVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        eop.m53999a(this.f76731i, this.f76727e, this.f76728f, this.f76729g, this.f76730h);
    }
}
