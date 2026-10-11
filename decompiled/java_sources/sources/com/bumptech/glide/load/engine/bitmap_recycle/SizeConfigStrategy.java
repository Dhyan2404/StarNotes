package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.util.Util;
import com.google.android.material.motion.MotionUtils;
import com.sunia.HTREnginev2.AbstractC14312qn;
import com.sunia.HTREnginev2.d6j;
import com.sunia.HTREnginev2.e5l;
import com.sunia.HTREnginev2.g6h;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
import org.apache.commons.collections4.IteratorUtils;

@RequiresApi(19)
/* loaded from: classes3.dex */
public class SizeConfigStrategy implements d6j {

    /* renamed from: d */
    public static final int f14665d = 8;

    /* renamed from: e */
    public static final Bitmap.Config[] f14666e;

    /* renamed from: f */
    public static final Bitmap.Config[] f14667f;

    /* renamed from: g */
    public static final Bitmap.Config[] f14668g;

    /* renamed from: h */
    public static final Bitmap.Config[] f14669h;

    /* renamed from: i */
    public static final Bitmap.Config[] f14670i;

    /* renamed from: a */
    public final C1945c f14671a = new C1945c();

    /* renamed from: b */
    public final g6h<C1944b, Bitmap> f14672b = new g6h<>();

    /* renamed from: c */
    public final Map<Bitmap.Config, NavigableMap<Integer, Integer>> f14673c = new HashMap();

    /* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy$a */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C1943a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f14674a;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f14674a = iArr;
            try {
                iArr[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14674a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14674a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14674a[Bitmap.Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy$c */
    /* loaded from: classes3.dex */
    public static class C1945c extends AbstractC14312qn<C1944b> {
        @Override // com.sunia.HTREnginev2.AbstractC14312qn
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public C1944b mo8768a() {
            return new C1944b(this);
        }

        /* renamed from: e */
        public C1944b m8791e(int i, Bitmap.Config config) {
            C1944b m56728b = m56728b();
            m56728b.m8789b(i, config);
            return m56728b;
        }
    }

    static {
        Bitmap.Config[] configArr = (Bitmap.Config[]) Arrays.copyOf(new Bitmap.Config[]{Bitmap.Config.ARGB_8888, null}, 3);
        configArr[configArr.length - 1] = Bitmap.Config.RGBA_F16;
        f14666e = configArr;
        f14667f = configArr;
        f14668g = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        f14669h = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        f14670i = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    /* renamed from: c */
    public static String m8784c(int i, Bitmap.Config config) {
        return IteratorUtils.f104923a + i + "](" + config + MotionUtils.f31762d;
    }

    /* renamed from: d */
    public static Bitmap.Config[] m8785d(Bitmap.Config config) {
        if (Bitmap.Config.RGBA_F16.equals(config)) {
            return f14667f;
        }
        int i = C1943a.f14674a[config.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? new Bitmap.Config[]{config} : f14670i : f14669h : f14668g : f14666e;
    }

    /* renamed from: a */
    public final void m8786a(Integer num, Bitmap bitmap) {
        NavigableMap<Integer, Integer> m8788e = m8788e(bitmap.getConfig());
        Integer num2 = m8788e.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                m8788e.remove(num);
                return;
            } else {
                m8788e.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + logBitmap(bitmap) + ", this: " + this);
    }

    /* renamed from: b */
    public final C1944b m8787b(int i, Bitmap.Config config) {
        C1944b m8791e = this.f14671a.m8791e(i, config);
        for (Bitmap.Config config2 : m8785d(config)) {
            Integer ceilingKey = m8788e(config2).ceilingKey(Integer.valueOf(i));
            if (ceilingKey != null && ceilingKey.intValue() <= i * 8) {
                if (ceilingKey.intValue() == i) {
                    if (config2 == null) {
                        if (config == null) {
                            return m8791e;
                        }
                    } else if (config2.equals(config)) {
                        return m8791e;
                    }
                }
                this.f14671a.m56729c(m8791e);
                return this.f14671a.m8791e(ceilingKey.intValue(), config2);
            }
        }
        return m8791e;
    }

    /* renamed from: e */
    public final NavigableMap<Integer, Integer> m8788e(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap = this.f14673c.get(config);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.f14673c.put(config, treeMap);
        return treeMap;
    }

    @Override // com.sunia.HTREnginev2.d6j
    @Nullable
    public Bitmap get(int i, int i2, Bitmap.Config config) {
        C1944b m8787b = m8787b(Util.getBitmapByteSize(i, i2, config), config);
        Bitmap m54227a = this.f14672b.m54227a(m8787b);
        if (m54227a != null) {
            m8786a(Integer.valueOf(m8787b.f14676b), m54227a);
            m54227a.reconfigure(i, i2, config);
        }
        return m54227a;
    }

    @Override // com.sunia.HTREnginev2.d6j
    public int getSize(Bitmap bitmap) {
        return Util.getBitmapByteSize(bitmap);
    }

    @Override // com.sunia.HTREnginev2.d6j
    public String logBitmap(Bitmap bitmap) {
        return m8784c(Util.getBitmapByteSize(bitmap), bitmap.getConfig());
    }

    @Override // com.sunia.HTREnginev2.d6j
    public void put(Bitmap bitmap) {
        C1944b m8791e = this.f14671a.m8791e(Util.getBitmapByteSize(bitmap), bitmap.getConfig());
        this.f14672b.m54230d(m8791e, bitmap);
        NavigableMap<Integer, Integer> m8788e = m8788e(bitmap.getConfig());
        Integer num = m8788e.get(Integer.valueOf(m8791e.f14676b));
        m8788e.put(Integer.valueOf(m8791e.f14676b), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    @Override // com.sunia.HTREnginev2.d6j
    @Nullable
    public Bitmap removeLast() {
        Bitmap m54231f = this.f14672b.m54231f();
        if (m54231f != null) {
            m8786a(Integer.valueOf(Util.getBitmapByteSize(m54231f)), m54231f);
        }
        return m54231f;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("SizeConfigStrategy{groupedMap=");
        sb.append(this.f14672b);
        sb.append(", sortedSizes=(");
        for (Map.Entry<Bitmap.Config, NavigableMap<Integer, Integer>> entry : this.f14673c.entrySet()) {
            sb.append(entry.getKey());
            sb.append('[');
            sb.append(entry.getValue());
            sb.append("], ");
        }
        if (!this.f14673c.isEmpty()) {
            sb.replace(sb.length() - 2, sb.length(), "");
        }
        sb.append(")}");
        return sb.toString();
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy$b */
    /* loaded from: classes3.dex */
    public static final class C1944b implements e5l {

        /* renamed from: a */
        public final C1945c f14675a;

        /* renamed from: b */
        public int f14676b;

        /* renamed from: c */
        public Bitmap.Config f14677c;

        public C1944b(C1945c c1945c) {
            this.f14675a = c1945c;
        }

        @Override // com.sunia.HTREnginev2.e5l
        /* renamed from: a */
        public void mo8766a() {
            this.f14675a.m56729c(this);
        }

        /* renamed from: b */
        public void m8789b(int i, Bitmap.Config config) {
            this.f14676b = i;
            this.f14677c = config;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C1944b)) {
                return false;
            }
            C1944b c1944b = (C1944b) obj;
            return this.f14676b == c1944b.f14676b && Util.bothNullOrEqual(this.f14677c, c1944b.f14677c);
        }

        public int hashCode() {
            int i = this.f14676b * 31;
            Bitmap.Config config = this.f14677c;
            return i + (config != null ? config.hashCode() : 0);
        }

        public String toString() {
            return SizeConfigStrategy.m8784c(this.f14676b, this.f14677c);
        }

        @VisibleForTesting
        public C1944b(C1945c c1945c, int i, Bitmap.Config config) {
            this(c1945c);
            m8789b(i, config);
        }
    }

    @Override // com.sunia.HTREnginev2.d6j
    public String logBitmap(int i, int i2, Bitmap.Config config) {
        return m8784c(Util.getBitmapByteSize(i, i2, config), config);
    }
}
