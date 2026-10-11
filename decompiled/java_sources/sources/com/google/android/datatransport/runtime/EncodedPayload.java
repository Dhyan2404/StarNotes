package com.google.android.datatransport.runtime;

import androidx.annotation.NonNull;
import com.google.android.datatransport.Encoding;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class EncodedPayload {

    /* renamed from: a */
    public final Encoding f21908a;

    /* renamed from: b */
    public final byte[] f21909b;

    public EncodedPayload(@NonNull Encoding encoding, @NonNull byte[] bArr) {
        if (encoding == null) {
            throw new NullPointerException("encoding is null");
        }
        if (bArr == null) {
            throw new NullPointerException("bytes is null");
        }
        this.f21908a = encoding;
        this.f21909b = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EncodedPayload)) {
            return false;
        }
        EncodedPayload encodedPayload = (EncodedPayload) obj;
        if (this.f21908a.equals(encodedPayload.f21908a)) {
            return Arrays.equals(this.f21909b, encodedPayload.f21909b);
        }
        return false;
    }

    public byte[] getBytes() {
        return this.f21909b;
    }

    public Encoding getEncoding() {
        return this.f21908a;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f21909b) ^ ((this.f21908a.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "EncodedPayload{encoding=" + this.f21908a + ", bytes=[...]}";
    }
}
