package com.sunia.HTREnginev2;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.common.images.RunnableC5063b;
import com.google.android.gms.common.internal.Asserts;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes5.dex */
public final class x8p implements Runnable {

    /* renamed from: e */
    public final Uri f89391e;

    /* renamed from: f */
    @Nullable
    public final ParcelFileDescriptor f89392f;

    /* renamed from: g */
    public final /* synthetic */ ImageManager f89393g;

    public x8p(ImageManager imageManager, @Nullable Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
        this.f89393g = imageManager;
        this.f89391e = uri;
        this.f89392f = parcelFileDescriptor;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Handler handler;
        Asserts.checkNotMainThread("LoadBitmapFromDiskRunnable can't be executed in the main thread");
        ParcelFileDescriptor parcelFileDescriptor = this.f89392f;
        boolean z = false;
        Bitmap bitmap = null;
        if (parcelFileDescriptor != null) {
            try {
                bitmap = BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor());
            } catch (OutOfMemoryError e) {
                Log.e("ImageManager", "OOM while loading bitmap for uri: ".concat(String.valueOf(this.f89391e)), e);
                z = true;
            }
            try {
                this.f89392f.close();
            } catch (IOException e2) {
                Log.e("ImageManager", "closed failed", e2);
            }
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        ImageManager imageManager = this.f89393g;
        Uri uri = this.f89391e;
        handler = imageManager.f29321b;
        handler.post(new RunnableC5063b(imageManager, uri, bitmap, z, countDownLatch));
        try {
            countDownLatch.await();
        } catch (InterruptedException unused) {
            Log.w("ImageManager", "Latch interrupted while posting ".concat(String.valueOf(this.f89391e)));
        }
    }
}
