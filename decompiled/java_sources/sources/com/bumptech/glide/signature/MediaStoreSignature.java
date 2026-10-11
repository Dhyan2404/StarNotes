package com.bumptech.glide.signature;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Key;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* loaded from: classes3.dex */
public class MediaStoreSignature implements Key {

    /* renamed from: a */
    @NonNull
    public final String f15458a;

    /* renamed from: b */
    public final long f15459b;

    /* renamed from: c */
    public final int f15460c;

    public MediaStoreSignature(@Nullable String str, long j, int i) {
        this.f15458a = str == null ? "" : str;
        this.f15459b = j;
        this.f15460c = i;
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MediaStoreSignature mediaStoreSignature = (MediaStoreSignature) obj;
        return this.f15459b == mediaStoreSignature.f15459b && this.f15460c == mediaStoreSignature.f15460c && this.f15458a.equals(mediaStoreSignature.f15458a);
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        int hashCode = this.f15458a.hashCode() * 31;
        long j = this.f15459b;
        return ((hashCode + ((int) (j ^ (j >>> 32)))) * 31) + this.f15460c;
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(ByteBuffer.allocate(12).putLong(this.f15459b).putInt(this.f15460c).array());
        messageDigest.update(this.f15458a.getBytes(Key.CHARSET));
    }
}
