package com.onyx.poi.cache;

import android.graphics.Bitmap;
import com.onyx.common.util.BitmapUtils;

/* loaded from: classes9.dex */
public class BitmapHolder {

    /* renamed from: b */
    public Bitmap f62929b;

    /* renamed from: c */
    public int f62930c;

    /* renamed from: d */
    public Object f62931d = new Object();

    /* renamed from: e */
    public boolean f62932e = false;

    /* renamed from: a */
    public int f62928a = 1;

    public BitmapHolder(Bitmap bitmap) {
        this.f62929b = bitmap;
    }

    public static BitmapHolder create(Bitmap bitmap) {
        return new BitmapHolder(bitmap);
    }

    /* renamed from: a */
    public final boolean m52133a() {
        Bitmap bitmap = this.f62929b;
        return (bitmap == null || bitmap.isRecycled()) ? false : true;
    }

    public BitmapHolder attach() {
        synchronized (this.f62931d) {
            this.f62928a++;
        }
        return this;
    }

    public void detach() {
        synchronized (this.f62931d) {
            int i = this.f62928a - 1;
            this.f62928a = i;
            if (i <= 0 && m52133a()) {
                this.f62929b.recycle();
                this.f62929b = null;
            }
        }
    }

    public void eraseColor(int i) {
        synchronized (this.f62931d) {
            if (m52133a()) {
                this.f62929b.eraseColor(i);
            }
        }
    }

    public Bitmap getBitmap() {
        Bitmap bitmap;
        synchronized (this.f62931d) {
            bitmap = this.f62929b;
        }
        return bitmap;
    }

    public int getHeight() {
        synchronized (this.f62931d) {
            if (!m52133a()) {
                return 0;
            }
            return this.f62929b.getHeight();
        }
    }

    public int getSize() {
        int i;
        synchronized (this.f62931d) {
            if (this.f62930c == 0 && m52133a()) {
                this.f62930c = BitmapUtils.getSizeInBytes(this.f62929b);
            }
            i = this.f62930c;
        }
        return i;
    }

    public int getWidth() {
        synchronized (this.f62931d) {
            if (!m52133a()) {
                return 0;
            }
            return this.f62929b.getWidth();
        }
    }

    public boolean isRecycled() {
        boolean z;
        synchronized (this.f62931d) {
            z = !m52133a();
        }
        return z;
    }

    public static BitmapHolder create(int i, int i2, Bitmap.Config config) {
        return create(Bitmap.createBitmap(i, i2, config));
    }
}
