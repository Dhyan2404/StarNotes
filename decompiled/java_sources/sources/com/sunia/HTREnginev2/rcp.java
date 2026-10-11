package com.sunia.HTREnginev2;

import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbki;

/* loaded from: classes6.dex */
public final class rcp extends com.google.mlkit.vision.text.pipeline.zbo {

    /* renamed from: a */
    public final int f82983a;

    /* renamed from: b */
    public final zbki f82984b;

    public rcp(int i, zbki zbkiVar) {
        this.f82983a = i;
        this.f82984b = zbkiVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof com.google.mlkit.vision.text.pipeline.zbo) {
            com.google.mlkit.vision.text.pipeline.zbo zboVar = (com.google.mlkit.vision.text.pipeline.zbo) obj;
            if (this.f82983a == zboVar.zba() && this.f82984b.equals(zboVar.zbb())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f82983a;
        return this.f82984b.hashCode() ^ ((i ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "VkpStatus{exceptionType=" + this.f82983a + ", remoteException=" + this.f82984b.toString() + "}";
    }

    @Override // com.google.mlkit.vision.text.pipeline.zbo
    public final int zba() {
        return this.f82983a;
    }

    @Override // com.google.mlkit.vision.text.pipeline.zbo
    public final zbki zbb() {
        return this.f82984b;
    }
}
