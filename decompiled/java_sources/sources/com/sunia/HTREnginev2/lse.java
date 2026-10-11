package com.sunia.HTREnginev2;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import java.security.MessageDigest;

/* loaded from: classes3.dex */
public final class lse implements Key {

    /* renamed from: a */
    public final Key f76839a;

    /* renamed from: b */
    public final Key f76840b;

    public lse(Key key, Key key2) {
        this.f76839a = key;
        this.f76840b = key2;
    }

    /* renamed from: a */
    public Key m55514a() {
        return this.f76839a;
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (!(obj instanceof lse)) {
            return false;
        }
        lse lseVar = (lse) obj;
        return this.f76839a.equals(lseVar.f76839a) && this.f76840b.equals(lseVar.f76840b);
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return (this.f76839a.hashCode() * 31) + this.f76840b.hashCode();
    }

    public String toString() {
        return "DataCacheKey{sourceKey=" + this.f76839a + ", signature=" + this.f76840b + '}';
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        this.f76839a.updateDiskCacheKey(messageDigest);
        this.f76840b.updateDiskCacheKey(messageDigest);
    }
}
