package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.util.Util;
import com.sunia.HTREnginev2.AbstractC14312qn;
import com.sunia.HTREnginev2.d6j;
import com.sunia.HTREnginev2.e5l;
import com.sunia.HTREnginev2.g6h;
import java.util.NavigableMap;
import org.apache.commons.collections4.IteratorUtils;

@RequiresApi(19)
/* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.a */
/* loaded from: classes3.dex */
public final class C1946a implements d6j {

    /* renamed from: d */
    public static final int f14678d = 8;

    /* renamed from: a */
    public final b f14679a = new b();

    /* renamed from: b */
    public final g6h<a, Bitmap> f14680b = new g6h<>();

    /* renamed from: c */
    public final NavigableMap<Integer, Integer> f14681c = new PrettyPrintTreeMap();

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.a$a */
    /* loaded from: classes3.dex */
    public static final class a implements e5l {

        /* renamed from: a */
        public final b f14682a;

        /* renamed from: b */
        public int f14683b;

        public a(b bVar) {
            this.f14682a = bVar;
        }

        @Override // com.sunia.HTREnginev2.e5l
        /* renamed from: a */
        public void mo8766a() {
            this.f14682a.m56729c(this);
        }

        /* renamed from: b */
        public void m8795b(int i) {
            this.f14683b = i;
        }

        public boolean equals(Object obj) {
            return (obj instanceof a) && this.f14683b == ((a) obj).f14683b;
        }

        public int hashCode() {
            return this.f14683b;
        }

        public String toString() {
            return C1946a.m8792b(this.f14683b);
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.a$b */
    /* loaded from: classes3.dex */
    public static class b extends AbstractC14312qn<a> {
        @Override // com.sunia.HTREnginev2.AbstractC14312qn
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public a mo8768a() {
            return new a(this);
        }

        /* renamed from: e */
        public a m8797e(int i) {
            a aVar = (a) super.m56728b();
            aVar.m8795b(i);
            return aVar;
        }
    }

    /* renamed from: b */
    public static String m8792b(int i) {
        return IteratorUtils.f104923a + i + IteratorUtils.f104924b;
    }

    /* renamed from: c */
    public static String m8793c(Bitmap bitmap) {
        return m8792b(Util.getBitmapByteSize(bitmap));
    }

    /* renamed from: a */
    public final void m8794a(Integer num) {
        Integer num2 = this.f14681c.get(num);
        if (num2.intValue() == 1) {
            this.f14681c.remove(num);
        } else {
            this.f14681c.put(num, Integer.valueOf(num2.intValue() - 1));
        }
    }

    @Override // com.sunia.HTREnginev2.d6j
    @Nullable
    public Bitmap get(int i, int i2, Bitmap.Config config) {
        int bitmapByteSize = Util.getBitmapByteSize(i, i2, config);
        a m8797e = this.f14679a.m8797e(bitmapByteSize);
        Integer ceilingKey = this.f14681c.ceilingKey(Integer.valueOf(bitmapByteSize));
        if (ceilingKey != null && ceilingKey.intValue() != bitmapByteSize && ceilingKey.intValue() <= bitmapByteSize * 8) {
            this.f14679a.m56729c(m8797e);
            m8797e = this.f14679a.m8797e(ceilingKey.intValue());
        }
        Bitmap m54227a = this.f14680b.m54227a(m8797e);
        if (m54227a != null) {
            m54227a.reconfigure(i, i2, config);
            m8794a(ceilingKey);
        }
        return m54227a;
    }

    @Override // com.sunia.HTREnginev2.d6j
    public int getSize(Bitmap bitmap) {
        return Util.getBitmapByteSize(bitmap);
    }

    @Override // com.sunia.HTREnginev2.d6j
    public String logBitmap(Bitmap bitmap) {
        return m8793c(bitmap);
    }

    @Override // com.sunia.HTREnginev2.d6j
    public void put(Bitmap bitmap) {
        a m8797e = this.f14679a.m8797e(Util.getBitmapByteSize(bitmap));
        this.f14680b.m54230d(m8797e, bitmap);
        Integer num = this.f14681c.get(Integer.valueOf(m8797e.f14683b));
        this.f14681c.put(Integer.valueOf(m8797e.f14683b), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    @Override // com.sunia.HTREnginev2.d6j
    @Nullable
    public Bitmap removeLast() {
        Bitmap m54231f = this.f14680b.m54231f();
        if (m54231f != null) {
            m8794a(Integer.valueOf(Util.getBitmapByteSize(m54231f)));
        }
        return m54231f;
    }

    public String toString() {
        return "SizeStrategy:\n  " + this.f14680b + "\n  SortedSizes" + this.f14681c;
    }

    @Override // com.sunia.HTREnginev2.d6j
    public String logBitmap(int i, int i2, Bitmap.Config config) {
        return m8792b(Util.getBitmapByteSize(i, i2, config));
    }
}
