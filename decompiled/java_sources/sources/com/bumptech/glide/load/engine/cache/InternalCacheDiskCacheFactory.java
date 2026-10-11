package com.bumptech.glide.load.engine.cache;

import android.content.Context;
import com.bumptech.glide.load.engine.cache.DiskLruCacheFactory;
import com.onyx.android.sdk.replicator.note.data.constant.NoteConstant;
import java.io.File;

/* loaded from: classes3.dex */
public final class InternalCacheDiskCacheFactory extends DiskLruCacheFactory {

    /* renamed from: com.bumptech.glide.load.engine.cache.InternalCacheDiskCacheFactory$a */
    /* loaded from: classes3.dex */
    public class C1952a implements DiskLruCacheFactory.CacheDirectoryGetter {

        /* renamed from: a */
        public final /* synthetic */ Context f14720a;

        /* renamed from: b */
        public final /* synthetic */ String f14721b;

        public C1952a(Context context, String str) {
            this.f14720a = context;
            this.f14721b = str;
        }

        @Override // com.bumptech.glide.load.engine.cache.DiskLruCacheFactory.CacheDirectoryGetter
        public File getCacheDirectory() {
            File cacheDir = this.f14720a.getCacheDir();
            if (cacheDir == null) {
                return null;
            }
            return this.f14721b != null ? new File(cacheDir, this.f14721b) : cacheDir;
        }
    }

    public InternalCacheDiskCacheFactory(Context context) {
        this(context, "image_manager_disk_cache", NoteConstant.EXPORT_LIMIT_STORAGE_SIZE);
    }

    public InternalCacheDiskCacheFactory(Context context, long j) {
        this(context, "image_manager_disk_cache", j);
    }

    public InternalCacheDiskCacheFactory(Context context, String str, long j) {
        super(new C1952a(context, str), j);
    }
}
