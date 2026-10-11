package com.bumptech.glide.load.engine.cache;

import android.content.Context;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.cache.DiskLruCacheFactory;
import com.onyx.android.sdk.replicator.note.data.constant.NoteConstant;
import java.io.File;

/* loaded from: classes3.dex */
public final class ExternalPreferredCacheDiskCacheFactory extends DiskLruCacheFactory {

    /* renamed from: com.bumptech.glide.load.engine.cache.ExternalPreferredCacheDiskCacheFactory$a */
    /* loaded from: classes3.dex */
    public class C1951a implements DiskLruCacheFactory.CacheDirectoryGetter {

        /* renamed from: a */
        public final /* synthetic */ Context f14718a;

        /* renamed from: b */
        public final /* synthetic */ String f14719b;

        public C1951a(Context context, String str) {
            this.f14718a = context;
            this.f14719b = str;
        }

        @Nullable
        /* renamed from: a */
        public final File m8824a() {
            File cacheDir = this.f14718a.getCacheDir();
            if (cacheDir == null) {
                return null;
            }
            return this.f14719b != null ? new File(cacheDir, this.f14719b) : cacheDir;
        }

        @Override // com.bumptech.glide.load.engine.cache.DiskLruCacheFactory.CacheDirectoryGetter
        public File getCacheDirectory() {
            File externalCacheDir;
            File m8824a = m8824a();
            return ((m8824a == null || !m8824a.exists()) && (externalCacheDir = this.f14718a.getExternalCacheDir()) != null && externalCacheDir.canWrite()) ? this.f14719b != null ? new File(externalCacheDir, this.f14719b) : externalCacheDir : m8824a;
        }
    }

    public ExternalPreferredCacheDiskCacheFactory(Context context) {
        this(context, "image_manager_disk_cache", NoteConstant.EXPORT_LIMIT_STORAGE_SIZE);
    }

    public ExternalPreferredCacheDiskCacheFactory(Context context, long j) {
        this(context, "image_manager_disk_cache", j);
    }

    public ExternalPreferredCacheDiskCacheFactory(Context context, String str, long j) {
        super(new C1951a(context, str), j);
    }
}
