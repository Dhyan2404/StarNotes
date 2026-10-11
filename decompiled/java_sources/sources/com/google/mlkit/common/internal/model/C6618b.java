package com.google.mlkit.common.internal.model;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.mlkit.common.internal.model.ModelUtils;

/* renamed from: com.google.mlkit.common.internal.model.b */
/* loaded from: classes6.dex */
public final class C6618b extends ModelUtils.ModelLoggingInfo {

    /* renamed from: a */
    public final long f36516a;

    /* renamed from: b */
    public final String f36517b;

    /* renamed from: c */
    public final boolean f36518c;

    public C6618b(long j, String str, boolean z) {
        this.f36516a = j;
        this.f36517b = str;
        this.f36518c = z;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ModelUtils.ModelLoggingInfo) {
            ModelUtils.ModelLoggingInfo modelLoggingInfo = (ModelUtils.ModelLoggingInfo) obj;
            if (this.f36516a == modelLoggingInfo.getSize() && this.f36517b.equals(modelLoggingInfo.getHash()) && this.f36518c == modelLoggingInfo.isManifestModel()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.mlkit.common.internal.model.ModelUtils.ModelLoggingInfo
    @KeepForSdk
    public String getHash() {
        return this.f36517b;
    }

    @Override // com.google.mlkit.common.internal.model.ModelUtils.ModelLoggingInfo
    @KeepForSdk
    public long getSize() {
        return this.f36516a;
    }

    public final int hashCode() {
        long j = this.f36516a;
        return (true != this.f36518c ? 1237 : 1231) ^ ((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.f36517b.hashCode()) * 1000003);
    }

    @Override // com.google.mlkit.common.internal.model.ModelUtils.ModelLoggingInfo
    @KeepForSdk
    public boolean isManifestModel() {
        return this.f36518c;
    }

    public final String toString() {
        return "ModelLoggingInfo{size=" + this.f36516a + ", hash=" + this.f36517b + ", manifestModel=" + this.f36518c + "}";
    }
}
