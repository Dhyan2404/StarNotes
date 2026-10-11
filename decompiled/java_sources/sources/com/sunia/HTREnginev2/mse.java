package com.sunia.HTREnginev2;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.cache.DiskCache;
import java.io.File;

/* loaded from: classes3.dex */
public class mse<DataType> implements DiskCache.Writer {

    /* renamed from: a */
    public final Encoder<DataType> f77947a;

    /* renamed from: b */
    public final DataType f77948b;

    /* renamed from: c */
    public final Options f77949c;

    public mse(Encoder<DataType> encoder, DataType datatype, Options options) {
        this.f77947a = encoder;
        this.f77948b = datatype;
        this.f77949c = options;
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache.Writer
    public boolean write(@NonNull File file) {
        return this.f77947a.encode(this.f77948b, file, this.f77949c);
    }
}
