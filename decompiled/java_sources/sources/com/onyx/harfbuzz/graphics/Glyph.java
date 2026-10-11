package com.onyx.harfbuzz.graphics;

import android.graphics.Path;
import androidx.annotation.Nullable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes9.dex */
public final class Glyph {

    /* renamed from: f */
    public static final int f62739f = 1;

    /* renamed from: g */
    public static final int f62740g = 2;

    /* renamed from: h */
    public static final int f62741h = 3;

    /* renamed from: a */
    public int f62742a;

    /* renamed from: b */
    @Nullable
    public GlyphImage f62743b;

    /* renamed from: c */
    @Nullable
    public GlyphOutline f62744c;

    /* renamed from: d */
    @Nullable
    public Path f62745d;

    /* renamed from: e */
    public int f62746e = 0;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes9.dex */
    public @interface Type {
    }

    @Nullable
    /* renamed from: a */
    public GlyphImage m52033a() {
        return this.f62743b;
    }

    @Nullable
    /* renamed from: b */
    public GlyphOutline m52034b() {
        return this.f62744c;
    }

    @Nullable
    /* renamed from: c */
    public Path m52035c() {
        return this.f62745d;
    }

    /* renamed from: d */
    public int m52036d() {
        return this.f62746e;
    }

    /* renamed from: e */
    public int m52037e() {
        return this.f62742a;
    }

    /* renamed from: f */
    public boolean m52038f() {
        return this.f62742a != 0;
    }

    /* renamed from: g */
    public boolean m52039g(int i) {
        return (m52038f() && i == this.f62746e) ? false : true;
    }

    /* renamed from: h */
    public void m52040h(GlyphImage glyphImage) {
        this.f62743b = glyphImage;
    }

    /* renamed from: i */
    public void m52041i(GlyphOutline glyphOutline) {
        this.f62744c = glyphOutline;
    }

    /* renamed from: j */
    public void m52042j(Path path) {
        this.f62745d = path;
    }

    /* renamed from: k */
    public void m52043k(int i) {
        this.f62746e = i;
    }

    /* renamed from: l */
    public void m52044l(int i) {
        this.f62742a = i;
    }
}
