package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.internal.base.zam;
import com.sunia.HTREnginev2.uap;

/* loaded from: classes5.dex */
public abstract class zag {

    /* renamed from: a */
    public final uap f29337a;
    protected int zab;

    public zag(Uri uri, int i) {
        this.zab = 0;
        this.f29337a = new uap(uri);
        this.zab = i;
    }

    /* renamed from: a */
    public final void m22151a(Context context, zam zamVar, boolean z) {
        int i = this.zab;
        zaa(i != 0 ? context.getResources().getDrawable(i) : null, z, false, false);
    }

    /* renamed from: b */
    public final void m22152b(Context context, Bitmap bitmap, boolean z) {
        Asserts.checkNotNull(bitmap);
        zaa(new BitmapDrawable(context.getResources(), bitmap), false, false, true);
    }

    public abstract void zaa(@Nullable Drawable drawable, boolean z, boolean z2, boolean z3);
}
