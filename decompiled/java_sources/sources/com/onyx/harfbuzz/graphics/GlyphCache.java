package com.onyx.harfbuzz.graphics;

import android.graphics.Bitmap;
import android.graphics.Path;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.onyx.harfbuzz.graphics.GlyphKey;
import com.onyx.harfbuzz.utils.LruCache;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes9.dex */
public class GlyphCache extends LruCache<Integer> {

    /* renamed from: e */
    public static final int f62750e = 12;

    /* renamed from: f */
    public static final int f62751f = 16;

    /* renamed from: d */
    @NonNull
    public final HashMap<GlyphKey, LruCache.Segment<Integer>> f62752d;

    /* renamed from: com.onyx.harfbuzz.graphics.GlyphCache$a */
    /* loaded from: classes9.dex */
    public static class C12990a extends LruCache.Segment<Integer> {

        /* renamed from: c */
        public static final int f62753c = 68;

        /* renamed from: b */
        @NonNull
        public final GlyphRasterizer f62754b;

        public C12990a(@NonNull LruCache<Integer> lruCache, @NonNull GlyphRasterizer glyphRasterizer) {
            super(lruCache);
            this.f62754b = glyphRasterizer;
        }

        @Override // com.onyx.harfbuzz.utils.LruCache.Segment
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int sizeOf(@NonNull Integer num, @NonNull Object obj) {
            GlyphImage m52033a = ((Glyph) obj).m52033a();
            return (m52033a != null ? GlyphCache.m52046k(m52033a.bitmap()) : 0) + 68;
        }
    }

    /* renamed from: com.onyx.harfbuzz.graphics.GlyphCache$b */
    /* loaded from: classes9.dex */
    public static class C12991b {

        /* renamed from: a */
        @NonNull
        public static final GlyphCache f62755a = new GlyphCache((int) (Runtime.getRuntime().maxMemory() / 8));
    }

    /* renamed from: com.onyx.harfbuzz.graphics.GlyphCache$c */
    /* loaded from: classes9.dex */
    public static class C12992c extends LruCache.Segment<Integer> {

        /* renamed from: b */
        public static final int f62756b = 52;

        public C12992c(@NonNull LruCache<Integer> lruCache) {
            super(lruCache);
        }

        @Override // com.onyx.harfbuzz.utils.LruCache.Segment
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int sizeOf(@NonNull Integer num, @NonNull Object obj) {
            return GlyphCache.m52046k(((GlyphImage) obj).bitmap()) + 52;
        }
    }

    public GlyphCache(int i) {
        super(i);
        this.f62752d = new HashMap<>();
    }

    @NonNull
    public static GlyphCache getInstance() {
        return C12991b.f62755a;
    }

    /* renamed from: k */
    public static int m52046k(@NonNull Bitmap bitmap) {
        int width = bitmap.getWidth() * bitmap.getHeight();
        return bitmap.getConfig() == Bitmap.Config.ARGB_8888 ? width * 4 : width;
    }

    @Override // com.onyx.harfbuzz.utils.LruCache
    public void clear() {
        super.clear();
        Iterator<Map.Entry<GlyphKey, LruCache.Segment<Integer>>> it2 = this.f62752d.entrySet().iterator();
        while (it2.hasNext()) {
            LruCache.Segment<Integer> value = it2.next().getValue();
            if (value instanceof C12990a) {
                ((C12990a) value).f62754b.dispose();
            }
        }
        this.f62752d.clear();
    }

    @Nullable
    /* renamed from: f */
    public final GlyphImage m52047f(@NonNull GlyphKey.Color color, @NonNull GlyphRasterizer glyphRasterizer, int i) {
        C12992c m52051j;
        GlyphImage glyphImage;
        synchronized (this) {
            m52051j = m52051j(color);
            glyphImage = (GlyphImage) m52051j.get(Integer.valueOf(i));
        }
        if (glyphImage == null && (glyphImage = glyphRasterizer.m52056b(i, color.foregroundColor, true, null, 0)) != null) {
            synchronized (this) {
                m52051j.remove(Integer.valueOf(i));
                m52051j.put(Integer.valueOf(i), glyphImage);
            }
        }
        return glyphImage;
    }

    @Nullable
    /* renamed from: g */
    public final GlyphImage m52048g(@NonNull GlyphKey.Stroke stroke, @NonNull GlyphRasterizer glyphRasterizer, @NonNull GlyphOutline glyphOutline, int i) {
        C12992c m52051j;
        GlyphImage glyphImage;
        synchronized (this) {
            m52051j = m52051j(stroke);
            glyphImage = (GlyphImage) m52051j.get(Integer.valueOf(i));
        }
        if (glyphImage == null && (glyphImage = glyphRasterizer.m52060f(glyphOutline, stroke.lineRadius, stroke.lineCap, stroke.lineJoin, stroke.miterLimit)) != null) {
            synchronized (this) {
                m52051j.remove(Integer.valueOf(i));
                m52051j.put(Integer.valueOf(i), glyphImage);
            }
        }
        return glyphImage;
    }

    @Nullable
    public GlyphImage getGlyphImage(@NonNull GlyphAttributes glyphAttributes, int i, int[] iArr, int i2) {
        C12990a m52049h;
        Glyph m52050i;
        synchronized (this) {
            m52049h = m52049h(glyphAttributes.dataKey());
            m52050i = m52050i(m52049h, i);
        }
        if (m52050i.m52039g(glyphAttributes.dataKey().strength)) {
            int m52059e = m52049h.f62754b.m52059e(i);
            GlyphImage m52056b = m52059e != 3 ? m52049h.f62754b.m52056b(i, glyphAttributes.dataKey().strength, glyphAttributes.isAntiAlias(), iArr, i2) : null;
            synchronized (this) {
                if (m52050i.m52039g(glyphAttributes.dataKey().strength)) {
                    m52049h.remove(Integer.valueOf(i));
                    m52050i.m52044l(m52059e);
                    m52050i.m52040h(m52056b);
                    m52050i.m52043k(glyphAttributes.dataKey().strength);
                    m52049h.put(Integer.valueOf(i), m52050i);
                }
            }
        }
        return m52050i.m52037e() == 3 ? m52047f(glyphAttributes.colorKey(), m52049h.f62754b, i) : m52050i.m52033a();
    }

    @NonNull
    public Path getGlyphPath(@NonNull GlyphAttributes glyphAttributes, int i) {
        C12990a m52049h;
        Glyph m52050i;
        synchronized (this) {
            m52049h = m52049h(glyphAttributes.dataKey());
            m52050i = m52050i(m52049h, i);
        }
        Path m52035c = m52050i.m52035c();
        if (m52035c == null) {
            m52035c = m52049h.f62754b.m52058d(i);
            synchronized (this) {
                if (m52050i.m52035c() == null) {
                    m52049h.remove(Integer.valueOf(i));
                    m52050i.m52042j(m52035c);
                    m52049h.put(Integer.valueOf(i), m52050i);
                }
            }
        }
        return m52035c;
    }

    @Nullable
    public GlyphImage getStrokeImage(@NonNull GlyphAttributes glyphAttributes, int i) {
        C12990a m52049h;
        Glyph m52050i;
        synchronized (this) {
            m52049h = m52049h(glyphAttributes.dataKey());
            m52050i = m52050i(m52049h, i);
        }
        GlyphOutline m52034b = m52050i.m52034b();
        if (m52034b == null) {
            m52034b = m52049h.f62754b.m52057c(i);
            synchronized (this) {
                if (m52050i.m52034b() == null) {
                    m52049h.remove(Integer.valueOf(i));
                    m52050i.m52041i(m52034b);
                    m52049h.put(Integer.valueOf(i), m52050i);
                }
            }
        }
        if (m52034b != null) {
            return m52048g(glyphAttributes.strokeKey(), m52049h.f62754b, m52034b, i);
        }
        return null;
    }

    @NonNull
    @GuardedBy("this")
    /* renamed from: h */
    public final C12990a m52049h(@NonNull GlyphKey glyphKey) {
        C12990a c12990a = (C12990a) this.f62752d.get(glyphKey);
        if (c12990a != null) {
            return c12990a;
        }
        C12990a c12990a2 = new C12990a(this, new GlyphRasterizer(glyphKey));
        this.f62752d.put(glyphKey.copy(), c12990a2);
        return c12990a2;
    }

    @NonNull
    @GuardedBy("this")
    /* renamed from: i */
    public final Glyph m52050i(@NonNull C12990a c12990a, int i) {
        Glyph glyph = (Glyph) c12990a.get(Integer.valueOf(i));
        return glyph == null ? new Glyph() : glyph;
    }

    @NonNull
    @GuardedBy("this")
    /* renamed from: j */
    public final C12992c m52051j(@NonNull GlyphKey glyphKey) {
        C12992c c12992c = (C12992c) this.f62752d.get(glyphKey);
        if (c12992c != null) {
            return c12992c;
        }
        C12992c c12992c2 = new C12992c(this);
        this.f62752d.put(glyphKey.copy(), c12992c2);
        return c12992c2;
    }
}
