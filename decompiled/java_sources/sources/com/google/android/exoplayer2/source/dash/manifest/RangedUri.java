package com.google.android.exoplayer2.source.dash.manifest;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.UriUtil;
import com.google.android.material.motion.MotionUtils;

/* loaded from: classes5.dex */
public final class RangedUri {

    /* renamed from: a */
    public final String f25836a;

    /* renamed from: b */
    public int f25837b;
    public final long length;
    public final long start;

    public RangedUri(@Nullable String str, long j, long j2) {
        this.f25836a = str == null ? "" : str;
        this.start = j;
        this.length = j2;
    }

    @Nullable
    public RangedUri attemptMerge(@Nullable RangedUri rangedUri, String str) {
        String resolveUriString = resolveUriString(str);
        if (rangedUri != null && resolveUriString.equals(rangedUri.resolveUriString(str))) {
            long j = this.length;
            if (j != -1) {
                long j2 = this.start;
                if (j2 + j == rangedUri.start) {
                    long j3 = rangedUri.length;
                    return new RangedUri(resolveUriString, j2, j3 != -1 ? j + j3 : -1L);
                }
            }
            long j4 = rangedUri.length;
            if (j4 != -1) {
                long j5 = rangedUri.start;
                if (j5 + j4 == this.start) {
                    return new RangedUri(resolveUriString, j5, j != -1 ? j4 + j : -1L);
                }
            }
        }
        return null;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || RangedUri.class != obj.getClass()) {
            return false;
        }
        RangedUri rangedUri = (RangedUri) obj;
        return this.start == rangedUri.start && this.length == rangedUri.length && this.f25836a.equals(rangedUri.f25836a);
    }

    public int hashCode() {
        if (this.f25837b == 0) {
            this.f25837b = ((((527 + ((int) this.start)) * 31) + ((int) this.length)) * 31) + this.f25836a.hashCode();
        }
        return this.f25837b;
    }

    public Uri resolveUri(String str) {
        return UriUtil.resolveToUri(str, this.f25836a);
    }

    public String resolveUriString(String str) {
        return UriUtil.resolve(str, this.f25836a);
    }

    public String toString() {
        String str = this.f25836a;
        long j = this.start;
        long j2 = this.length;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 81);
        sb.append("RangedUri(referenceUri=");
        sb.append(str);
        sb.append(", start=");
        sb.append(j);
        sb.append(", length=");
        sb.append(j2);
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }
}
