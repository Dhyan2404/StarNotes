package com.sunia.HTREnginev2;

import android.graphics.Bitmap;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.util.Util;
import org.apache.commons.collections4.IteratorUtils;

/* renamed from: com.sunia.HTREnginev2.nh */
/* loaded from: classes3.dex */
public class C14138nh implements d6j {

    /* renamed from: a */
    public final b f78640a = new b();

    /* renamed from: b */
    public final g6h<a, Bitmap> f78641b = new g6h<>();

    @VisibleForTesting
    /* renamed from: com.sunia.HTREnginev2.nh$a */
    /* loaded from: classes3.dex */
    public static class a implements e5l {

        /* renamed from: a */
        public final b f78642a;

        /* renamed from: b */
        public int f78643b;

        /* renamed from: c */
        public int f78644c;

        /* renamed from: d */
        public Bitmap.Config f78645d;

        public a(b bVar) {
            this.f78642a = bVar;
        }

        @Override // com.sunia.HTREnginev2.e5l
        /* renamed from: a */
        public void mo8766a() {
            this.f78642a.m56729c(this);
        }

        /* renamed from: b */
        public void m55757b(int i, int i2, Bitmap.Config config) {
            this.f78643b = i;
            this.f78644c = i2;
            this.f78645d = config;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f78643b == aVar.f78643b && this.f78644c == aVar.f78644c && this.f78645d == aVar.f78645d;
        }

        public int hashCode() {
            int i = ((this.f78643b * 31) + this.f78644c) * 31;
            Bitmap.Config config = this.f78645d;
            return i + (config != null ? config.hashCode() : 0);
        }

        public String toString() {
            return C14138nh.m55755a(this.f78643b, this.f78644c, this.f78645d);
        }
    }

    @VisibleForTesting
    /* renamed from: com.sunia.HTREnginev2.nh$b */
    /* loaded from: classes3.dex */
    public static class b extends AbstractC14312qn<a> {
        @Override // com.sunia.HTREnginev2.AbstractC14312qn
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public a mo8768a() {
            return new a(this);
        }

        /* renamed from: e */
        public a m55759e(int i, int i2, Bitmap.Config config) {
            a m56728b = m56728b();
            m56728b.m55757b(i, i2, config);
            return m56728b;
        }
    }

    /* renamed from: a */
    public static String m55755a(int i, int i2, Bitmap.Config config) {
        return IteratorUtils.f104923a + i + "x" + i2 + "], " + config;
    }

    /* renamed from: b */
    public static String m55756b(Bitmap bitmap) {
        return m55755a(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
    }

    @Override // com.sunia.HTREnginev2.d6j
    public Bitmap get(int i, int i2, Bitmap.Config config) {
        return this.f78641b.m54227a(this.f78640a.m55759e(i, i2, config));
    }

    @Override // com.sunia.HTREnginev2.d6j
    public int getSize(Bitmap bitmap) {
        return Util.getBitmapByteSize(bitmap);
    }

    @Override // com.sunia.HTREnginev2.d6j
    public String logBitmap(Bitmap bitmap) {
        return m55756b(bitmap);
    }

    @Override // com.sunia.HTREnginev2.d6j
    public void put(Bitmap bitmap) {
        this.f78641b.m54230d(this.f78640a.m55759e(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig()), bitmap);
    }

    @Override // com.sunia.HTREnginev2.d6j
    public Bitmap removeLast() {
        return this.f78641b.m54231f();
    }

    public String toString() {
        return "AttributeStrategy:\n  " + this.f78641b;
    }

    @Override // com.sunia.HTREnginev2.d6j
    public String logBitmap(int i, int i2, Bitmap.Config config) {
        return m55755a(i, i2, config);
    }
}
