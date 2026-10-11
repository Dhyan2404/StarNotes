package com.google.android.gms.common.images;

import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.internal.base.zam;
import com.sunia.HTREnginev2.uap;
import java.util.HashSet;
import java.util.Map;

/* renamed from: com.google.android.gms.common.images.a */
/* loaded from: classes5.dex */
public final class RunnableC5062a implements Runnable {

    /* renamed from: e */
    public final zag f29329e;

    /* renamed from: f */
    public final /* synthetic */ ImageManager f29330f;

    public RunnableC5062a(ImageManager imageManager, zag zagVar) {
        this.f29330f = imageManager;
        this.f29329e = zagVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map map;
        zam zamVar;
        Map map2;
        Map map3;
        Object obj;
        HashSet hashSet;
        HashSet hashSet2;
        Map map4;
        Map map5;
        Map map6;
        zam zamVar2;
        Map map7;
        Asserts.checkMainThread("LoadImageRunnable must be executed on the main thread");
        map = this.f29330f.f29324e;
        ImageManager.ImageReceiver imageReceiver = (ImageManager.ImageReceiver) map.get(this.f29329e);
        if (imageReceiver != null) {
            ImageManager imageManager = this.f29330f;
            zag zagVar = this.f29329e;
            map7 = imageManager.f29324e;
            map7.remove(zagVar);
            imageReceiver.zac(this.f29329e);
        }
        zag zagVar2 = this.f29329e;
        uap uapVar = zagVar2.f29337a;
        Uri uri = uapVar.f86303a;
        if (uri == null) {
            ImageManager imageManager2 = this.f29330f;
            Context context = imageManager2.f29320a;
            zamVar = imageManager2.f29323d;
            zagVar2.m22151a(context, zamVar, true);
            return;
        }
        map2 = this.f29330f.f29326g;
        Long l = (Long) map2.get(uri);
        if (l != null) {
            if (SystemClock.elapsedRealtime() - l.longValue() < 3600000) {
                zag zagVar3 = this.f29329e;
                ImageManager imageManager3 = this.f29330f;
                Context context2 = imageManager3.f29320a;
                zamVar2 = imageManager3.f29323d;
                zagVar3.m22151a(context2, zamVar2, true);
                return;
            }
            ImageManager imageManager4 = this.f29330f;
            Uri uri2 = uapVar.f86303a;
            map6 = imageManager4.f29326g;
            map6.remove(uri2);
        }
        this.f29329e.zaa(null, false, true, false);
        ImageManager imageManager5 = this.f29330f;
        Uri uri3 = uapVar.f86303a;
        map3 = imageManager5.f29325f;
        ImageManager.ImageReceiver imageReceiver2 = (ImageManager.ImageReceiver) map3.get(uri3);
        if (imageReceiver2 == null) {
            ImageManager.ImageReceiver imageReceiver3 = new ImageManager.ImageReceiver(uapVar.f86303a);
            ImageManager imageManager6 = this.f29330f;
            Uri uri4 = uapVar.f86303a;
            map5 = imageManager6.f29325f;
            map5.put(uri4, imageReceiver3);
            imageReceiver2 = imageReceiver3;
        }
        imageReceiver2.zab(this.f29329e);
        zag zagVar4 = this.f29329e;
        if (!(zagVar4 instanceof zaf)) {
            map4 = this.f29330f.f29324e;
            map4.put(zagVar4, imageReceiver2);
        }
        obj = ImageManager.f29317h;
        synchronized (obj) {
            hashSet = ImageManager.f29318i;
            if (!hashSet.contains(uapVar.f86303a)) {
                hashSet2 = ImageManager.f29318i;
                hashSet2.add(uapVar.f86303a);
                imageReceiver2.zad();
            }
        }
    }
}
