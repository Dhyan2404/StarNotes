package com.google.mlkit.common.internal.model;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.mlkit.common.internal.model.ModelUtils;

/* renamed from: com.google.mlkit.common.internal.model.a */
/* loaded from: classes6.dex */
public final class C6617a extends ModelUtils.AutoMLManifest {

    /* renamed from: a */
    public final String f36513a;

    /* renamed from: b */
    public final String f36514b;

    /* renamed from: c */
    public final String f36515c;

    public C6617a(String str, String str2, String str3) {
        if (str == null) {
            throw new NullPointerException("Null modelType");
        }
        this.f36513a = str;
        if (str2 == null) {
            throw new NullPointerException("Null modelFile");
        }
        this.f36514b = str2;
        if (str3 == null) {
            throw new NullPointerException("Null labelsFile");
        }
        this.f36515c = str3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ModelUtils.AutoMLManifest) {
            ModelUtils.AutoMLManifest autoMLManifest = (ModelUtils.AutoMLManifest) obj;
            if (this.f36513a.equals(autoMLManifest.getModelType()) && this.f36514b.equals(autoMLManifest.getModelFile()) && this.f36515c.equals(autoMLManifest.getLabelsFile())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.mlkit.common.internal.model.ModelUtils.AutoMLManifest
    @KeepForSdk
    public String getLabelsFile() {
        return this.f36515c;
    }

    @Override // com.google.mlkit.common.internal.model.ModelUtils.AutoMLManifest
    @KeepForSdk
    public String getModelFile() {
        return this.f36514b;
    }

    @Override // com.google.mlkit.common.internal.model.ModelUtils.AutoMLManifest
    @KeepForSdk
    public String getModelType() {
        return this.f36513a;
    }

    public final int hashCode() {
        int hashCode = ((this.f36513a.hashCode() ^ 1000003) * 1000003) ^ this.f36514b.hashCode();
        return this.f36515c.hashCode() ^ (hashCode * 1000003);
    }

    public final String toString() {
        return "AutoMLManifest{modelType=" + this.f36513a + ", modelFile=" + this.f36514b + ", labelsFile=" + this.f36515c + "}";
    }
}
