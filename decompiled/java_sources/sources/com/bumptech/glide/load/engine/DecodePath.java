package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.util.Preconditions;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class DecodePath<DataType, ResourceType, Transcode> {

    /* renamed from: f */
    public static final String f14574f = "DecodePath";

    /* renamed from: a */
    public final Class<DataType> f14575a;

    /* renamed from: b */
    public final List<? extends ResourceDecoder<DataType, ResourceType>> f14576b;

    /* renamed from: c */
    public final ResourceTranscoder<ResourceType, Transcode> f14577c;

    /* renamed from: d */
    public final Pools.Pool<List<Throwable>> f14578d;

    /* renamed from: e */
    public final String f14579e;

    /* renamed from: com.bumptech.glide.load.engine.DecodePath$a */
    /* loaded from: classes3.dex */
    public interface InterfaceC1926a<ResourceType> {
        @NonNull
        /* renamed from: a */
        Resource<ResourceType> mo8716a(@NonNull Resource<ResourceType> resource);
    }

    public DecodePath(Class<DataType> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<? extends ResourceDecoder<DataType, ResourceType>> list, ResourceTranscoder<ResourceType, Transcode> resourceTranscoder, Pools.Pool<List<Throwable>> pool) {
        this.f14575a = cls;
        this.f14576b = list;
        this.f14577c = resourceTranscoder;
        this.f14578d = pool;
        this.f14579e = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    @NonNull
    /* renamed from: a */
    public final Resource<ResourceType> m8727a(DataRewinder<DataType> dataRewinder, int i, int i2, @NonNull Options options) throws GlideException {
        List<Throwable> list = (List) Preconditions.checkNotNull(this.f14578d.acquire());
        try {
            return m8728b(dataRewinder, i, i2, options, list);
        } finally {
            this.f14578d.release(list);
        }
    }

    @NonNull
    /* renamed from: b */
    public final Resource<ResourceType> m8728b(DataRewinder<DataType> dataRewinder, int i, int i2, @NonNull Options options, List<Throwable> list) throws GlideException {
        int size = this.f14576b.size();
        Resource<ResourceType> resource = null;
        for (int i3 = 0; i3 < size; i3++) {
            ResourceDecoder<DataType, ResourceType> resourceDecoder = this.f14576b.get(i3);
            try {
                if (resourceDecoder.handles(dataRewinder.rewindAndGet(), options)) {
                    resource = resourceDecoder.decode(dataRewinder.rewindAndGet(), i, i2, options);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e) {
                if (Log.isLoggable(f14574f, 2)) {
                    Log.v(f14574f, "Failed to decode data for " + resourceDecoder, e);
                }
                list.add(e);
            }
            if (resource != null) {
                break;
            }
        }
        if (resource != null) {
            return resource;
        }
        throw new GlideException(this.f14579e, new ArrayList(list));
    }

    public Resource<Transcode> decode(DataRewinder<DataType> dataRewinder, int i, int i2, @NonNull Options options, InterfaceC1926a<ResourceType> interfaceC1926a) throws GlideException {
        return this.f14577c.transcode(interfaceC1926a.mo8716a(m8727a(dataRewinder, i, i2, options)), options);
    }

    public String toString() {
        return "DecodePath{ dataClass=" + this.f14575a + ", decoders=" + this.f14576b + ", transcoder=" + this.f14577c + '}';
    }
}
