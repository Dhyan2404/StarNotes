package com.bumptech.glide.load.engine;

import com.bumptech.glide.GlideContext;
import com.bumptech.glide.Priority;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DecodeJob;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.resource.UnitTransformation;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.bumptech.glide.load.engine.c */
/* loaded from: classes3.dex */
public final class C1947c<Transcode> {

    /* renamed from: a */
    public final List<ModelLoader.LoadData<?>> f14684a = new ArrayList();

    /* renamed from: b */
    public final List<Key> f14685b = new ArrayList();

    /* renamed from: c */
    public GlideContext f14686c;

    /* renamed from: d */
    public Object f14687d;

    /* renamed from: e */
    public int f14688e;

    /* renamed from: f */
    public int f14689f;

    /* renamed from: g */
    public Class<?> f14690g;

    /* renamed from: h */
    public DecodeJob.InterfaceC1924e f14691h;

    /* renamed from: i */
    public Options f14692i;

    /* renamed from: j */
    public Map<Class<?>, Transformation<?>> f14693j;

    /* renamed from: k */
    public Class<Transcode> f14694k;

    /* renamed from: l */
    public boolean f14695l;

    /* renamed from: m */
    public boolean f14696m;

    /* renamed from: n */
    public Key f14697n;

    /* renamed from: o */
    public Priority f14698o;

    /* renamed from: p */
    public DiskCacheStrategy f14699p;

    /* renamed from: q */
    public boolean f14700q;

    /* renamed from: r */
    public boolean f14701r;

    /* renamed from: a */
    public void m8798a() {
        this.f14686c = null;
        this.f14687d = null;
        this.f14697n = null;
        this.f14690g = null;
        this.f14694k = null;
        this.f14692i = null;
        this.f14698o = null;
        this.f14693j = null;
        this.f14699p = null;
        this.f14684a.clear();
        this.f14695l = false;
        this.f14685b.clear();
        this.f14696m = false;
    }

    /* renamed from: b */
    public ArrayPool m8799b() {
        return this.f14686c.getArrayPool();
    }

    /* renamed from: c */
    public List<Key> m8800c() {
        if (!this.f14696m) {
            this.f14696m = true;
            this.f14685b.clear();
            List<ModelLoader.LoadData<?>> m8804g = m8804g();
            int size = m8804g.size();
            for (int i = 0; i < size; i++) {
                ModelLoader.LoadData<?> loadData = m8804g.get(i);
                if (!this.f14685b.contains(loadData.sourceKey)) {
                    this.f14685b.add(loadData.sourceKey);
                }
                for (int i2 = 0; i2 < loadData.alternateKeys.size(); i2++) {
                    if (!this.f14685b.contains(loadData.alternateKeys.get(i2))) {
                        this.f14685b.add(loadData.alternateKeys.get(i2));
                    }
                }
            }
        }
        return this.f14685b;
    }

    /* renamed from: d */
    public DiskCache m8801d() {
        return this.f14691h.mo8721a();
    }

    /* renamed from: e */
    public DiskCacheStrategy m8802e() {
        return this.f14699p;
    }

    /* renamed from: f */
    public int m8803f() {
        return this.f14689f;
    }

    /* renamed from: g */
    public List<ModelLoader.LoadData<?>> m8804g() {
        if (!this.f14695l) {
            this.f14695l = true;
            this.f14684a.clear();
            List modelLoaders = this.f14686c.getRegistry().getModelLoaders(this.f14687d);
            int size = modelLoaders.size();
            for (int i = 0; i < size; i++) {
                ModelLoader.LoadData<?> buildLoadData = ((ModelLoader) modelLoaders.get(i)).buildLoadData(this.f14687d, this.f14688e, this.f14689f, this.f14692i);
                if (buildLoadData != null) {
                    this.f14684a.add(buildLoadData);
                }
            }
        }
        return this.f14684a;
    }

    /* renamed from: h */
    public <Data> LoadPath<Data, ?, Transcode> m8805h(Class<Data> cls) {
        return this.f14686c.getRegistry().getLoadPath(cls, this.f14690g, this.f14694k);
    }

    /* renamed from: i */
    public Class<?> m8806i() {
        return this.f14687d.getClass();
    }

    /* renamed from: j */
    public List<ModelLoader<File, ?>> m8807j(File file) throws Registry.NoModelLoaderAvailableException {
        return this.f14686c.getRegistry().getModelLoaders(file);
    }

    /* renamed from: k */
    public Options m8808k() {
        return this.f14692i;
    }

    /* renamed from: l */
    public Priority m8809l() {
        return this.f14698o;
    }

    /* renamed from: m */
    public List<Class<?>> m8810m() {
        return this.f14686c.getRegistry().getRegisteredResourceClasses(this.f14687d.getClass(), this.f14690g, this.f14694k);
    }

    /* renamed from: n */
    public <Z> ResourceEncoder<Z> m8811n(Resource<Z> resource) {
        return this.f14686c.getRegistry().getResultEncoder(resource);
    }

    /* renamed from: o */
    public Key m8812o() {
        return this.f14697n;
    }

    /* renamed from: p */
    public <X> Encoder<X> m8813p(X x) throws Registry.NoSourceEncoderAvailableException {
        return this.f14686c.getRegistry().getSourceEncoder(x);
    }

    /* renamed from: q */
    public Class<?> m8814q() {
        return this.f14694k;
    }

    /* renamed from: r */
    public <Z> Transformation<Z> m8815r(Class<Z> cls) {
        Transformation<Z> transformation = (Transformation) this.f14693j.get(cls);
        if (transformation == null) {
            Iterator<Map.Entry<Class<?>, Transformation<?>>> it2 = this.f14693j.entrySet().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, Transformation<?>> next = it2.next();
                if (next.getKey().isAssignableFrom(cls)) {
                    transformation = (Transformation) next.getValue();
                    break;
                }
            }
        }
        if (transformation != null) {
            return transformation;
        }
        if (!this.f14693j.isEmpty() || !this.f14700q) {
            return UnitTransformation.get();
        }
        throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
    }

    /* renamed from: s */
    public int m8816s() {
        return this.f14688e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: t */
    public boolean m8817t(Class<?> cls) {
        return m8805h(cls) != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: u */
    public <R> void m8818u(GlideContext glideContext, Object obj, Key key, int i, int i2, DiskCacheStrategy diskCacheStrategy, Class<?> cls, Class<R> cls2, Priority priority, Options options, Map<Class<?>, Transformation<?>> map, boolean z, boolean z2, DecodeJob.InterfaceC1924e interfaceC1924e) {
        this.f14686c = glideContext;
        this.f14687d = obj;
        this.f14697n = key;
        this.f14688e = i;
        this.f14689f = i2;
        this.f14699p = diskCacheStrategy;
        this.f14690g = cls;
        this.f14691h = interfaceC1924e;
        this.f14694k = cls2;
        this.f14698o = priority;
        this.f14692i = options;
        this.f14693j = map;
        this.f14700q = z;
        this.f14701r = z2;
    }

    /* renamed from: v */
    public boolean m8819v(Resource<?> resource) {
        return this.f14686c.getRegistry().isResourceEncoderAvailable(resource);
    }

    /* renamed from: w */
    public boolean m8820w() {
        return this.f14701r;
    }

    /* renamed from: x */
    public boolean m8821x(Key key) {
        List<ModelLoader.LoadData<?>> m8804g = m8804g();
        int size = m8804g.size();
        for (int i = 0; i < size; i++) {
            if (m8804g.get(i).sourceKey.equals(key)) {
                return true;
            }
        }
        return false;
    }
}
