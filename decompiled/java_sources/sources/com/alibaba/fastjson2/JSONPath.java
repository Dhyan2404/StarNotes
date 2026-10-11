package com.alibaba.fastjson2;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.JSONWriter;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class JSONPath {

    /* renamed from: f */
    public static final JSONPath f12258f = new JSONPath("$", new ArrayList(), true, false);

    /* renamed from: g */
    public static final JSONPath f12259g = new JSONPath("#-1", new ArrayList(), false, true);

    /* renamed from: h */
    public static final JSONReader.Context f12260h = JSONFactory.createReadContext();

    /* renamed from: a */
    public JSONReader.Context f12261a;

    /* renamed from: b */
    public JSONWriter.Context f12262b;

    /* renamed from: c */
    public final String f12263c;

    /* renamed from: d */
    public final List<AbstractC1733c> f12264d;

    /* renamed from: e */
    public final boolean f12265e;
    public final boolean previous;

    /* renamed from: com.alibaba.fastjson2.JSONPath$a */
    /* loaded from: classes3.dex */
    public static final class C1727a {

        /* renamed from: a */
        public final JSONPath f12266a;

        /* renamed from: b */
        public final C1727a f12267b;

        /* renamed from: c */
        public final AbstractC1733c f12268c;

        /* renamed from: d */
        public final AbstractC1733c f12269d;

        /* renamed from: e */
        public final long f12270e;

        /* renamed from: f */
        public Object f12271f;

        /* renamed from: g */
        public Object f12272g;

        /* renamed from: h */
        public boolean f12273h;

        public C1727a(JSONPath jSONPath, C1727a c1727a, AbstractC1733c abstractC1733c, AbstractC1733c abstractC1733c2, long j) {
            this.f12266a = jSONPath;
            this.f12268c = abstractC1733c;
            this.f12269d = abstractC1733c2;
            this.f12267b = c1727a;
            this.f12270e = j;
        }
    }

    public JSONPath(String str, List<AbstractC1733c> list, boolean z, boolean z2) {
        this.f12263c = str;
        this.f12264d = list;
        this.f12265e = z;
        this.previous = z2;
    }

    /* renamed from: of */
    public static JSONPath m7282of(String str) {
        return "#-1".equals(str) ? f12259g : new C1732b(str).m7345a();
    }

    public Object eval(Object obj) {
        int size;
        if (this.f12265e || (size = this.f12264d.size()) == 0) {
            return obj;
        }
        int i = 0;
        C1727a c1727a = null;
        while (i < size) {
            AbstractC1733c abstractC1733c = this.f12264d.get(i);
            int i2 = i + 1;
            C1727a c1727a2 = new C1727a(this, c1727a, abstractC1733c, i2 < size ? this.f12264d.get(i2) : null, 0L);
            if (i == 0) {
                c1727a2.f12271f = obj;
            }
            abstractC1733c.mo7348a(c1727a2);
            i = i2;
            c1727a = c1727a2;
        }
        return c1727a.f12272g;
    }

    public final String toString() {
        return this.f12263c;
    }
}
