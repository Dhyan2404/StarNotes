package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.Assertions;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public final class FullSegmentEncryptionKeyCache {

    /* renamed from: a */
    public final LinkedHashMap<Uri, byte[]> f25886a;

    public FullSegmentEncryptionKeyCache(final int i) {
        this.f25886a = new LinkedHashMap<Uri, byte[]>(this, i + 1, 1.0f, false) { // from class: com.google.android.exoplayer2.source.hls.FullSegmentEncryptionKeyCache.1
            @Override // java.util.LinkedHashMap
            public boolean removeEldestEntry(Map.Entry<Uri, byte[]> entry) {
                return size() > i;
            }
        };
    }

    /* renamed from: a */
    public boolean m20045a(Uri uri) {
        return this.f25886a.containsKey(Assertions.checkNotNull(uri));
    }

    @Nullable
    /* renamed from: b */
    public byte[] m20046b(@Nullable Uri uri) {
        if (uri == null) {
            return null;
        }
        return this.f25886a.get(uri);
    }

    @Nullable
    /* renamed from: c */
    public byte[] m20047c(Uri uri, byte[] bArr) {
        return this.f25886a.put((Uri) Assertions.checkNotNull(uri), (byte[]) Assertions.checkNotNull(bArr));
    }

    @Nullable
    /* renamed from: d */
    public byte[] m20048d(Uri uri) {
        return this.f25886a.remove(Assertions.checkNotNull(uri));
    }
}
