package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.engine.DecodePath;
import com.bumptech.glide.util.Preconditions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public class LoadPath<Data, ResourceType, Transcode> {

    /* renamed from: a */
    public final Class<Data> f14612a;

    /* renamed from: b */
    public final Pools.Pool<List<Throwable>> f14613b;

    /* renamed from: c */
    public final List<? extends DecodePath<Data, ResourceType, Transcode>> f14614c;

    /* renamed from: d */
    public final String f14615d;

    public LoadPath(Class<Data> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<DecodePath<Data, ResourceType, Transcode>> list, Pools.Pool<List<Throwable>> pool) {
        this.f14612a = cls;
        this.f14613b = pool;
        this.f14614c = (List) Preconditions.checkNotEmpty(list);
        this.f14615d = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    /* renamed from: a */
    public final Resource<Transcode> m8742a(DataRewinder<Data> dataRewinder, @NonNull Options options, int i, int i2, DecodePath.InterfaceC1926a<ResourceType> interfaceC1926a, List<Throwable> list) throws GlideException {
        int size = this.f14614c.size();
        Resource<Transcode> resource = null;
        for (int i3 = 0; i3 < size; i3++) {
            try {
                resource = this.f14614c.get(i3).decode(dataRewinder, i, i2, options, interfaceC1926a);
            } catch (GlideException e) {
                list.add(e);
            }
            if (resource != null) {
                break;
            }
        }
        if (resource != null) {
            return resource;
        }
        throw new GlideException(this.f14615d, new ArrayList(list));
    }

    public Class<Data> getDataClass() {
        return this.f14612a;
    }

    public Resource<Transcode> load(DataRewinder<Data> dataRewinder, @NonNull Options options, int i, int i2, DecodePath.InterfaceC1926a<ResourceType> interfaceC1926a) throws GlideException {
        List<Throwable> list = (List) Preconditions.checkNotNull(this.f14613b.acquire());
        try {
            return m8742a(dataRewinder, options, i, i2, interfaceC1926a, list);
        } finally {
            this.f14613b.release(list);
        }
    }

    public String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.f14614c.toArray()) + '}';
    }
}
