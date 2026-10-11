package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.internal.base.zam;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

/* renamed from: com.google.android.gms.common.images.b */
/* loaded from: classes5.dex */
public final class RunnableC5063b implements Runnable {

    /* renamed from: e */
    public final Uri f29331e;

    /* renamed from: f */
    @Nullable
    public final Bitmap f29332f;

    /* renamed from: g */
    public final CountDownLatch f29333g;

    /* renamed from: h */
    public final /* synthetic */ ImageManager f29334h;

    public RunnableC5063b(ImageManager imageManager, @Nullable Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
        this.f29334h = imageManager;
        this.f29331e = uri;
        this.f29332f = bitmap;
        this.f29333g = countDownLatch;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map map;
        Object obj;
        HashSet hashSet;
        ArrayList arrayList;
        Map map2;
        zam zamVar;
        Map map3;
        Asserts.checkMainThread("OnBitmapLoadedRunnable must be executed in the main thread");
        map = this.f29334h.f29325f;
        ImageManager.ImageReceiver imageReceiver = (ImageManager.ImageReceiver) map.remove(this.f29331e);
        if (imageReceiver != null) {
            arrayList = imageReceiver.zac;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                zag zagVar = (zag) arrayList.get(i);
                Bitmap bitmap = this.f29332f;
                if (bitmap != null) {
                    zagVar.m22152b(this.f29334h.f29320a, bitmap, false);
                } else {
                    ImageManager imageManager = this.f29334h;
                    Uri uri = this.f29331e;
                    map2 = imageManager.f29326g;
                    map2.put(uri, Long.valueOf(SystemClock.elapsedRealtime()));
                    ImageManager imageManager2 = this.f29334h;
                    Context context = imageManager2.f29320a;
                    zamVar = imageManager2.f29323d;
                    zagVar.m22151a(context, zamVar, false);
                }
                if (!(zagVar instanceof zaf)) {
                    map3 = this.f29334h.f29324e;
                    map3.remove(zagVar);
                }
            }
        }
        this.f29333g.countDown();
        obj = ImageManager.f29317h;
        synchronized (obj) {
            hashSet = ImageManager.f29318i;
            hashSet.remove(this.f29331e);
        }
    }
}
