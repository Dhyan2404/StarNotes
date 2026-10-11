package com.sunia.HTREnginev2;

import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbkx;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbok;

/* loaded from: classes6.dex */
public final class fcp extends com.google.mlkit.vision.text.pipeline.zbn {

    /* renamed from: a */
    public final com.google.mlkit.vision.text.pipeline.zbo f69885a;

    /* renamed from: b */
    public final zbok f69886b;

    /* renamed from: c */
    public final zbkx f69887c;

    /* renamed from: d */
    public final boolean f69888d;

    public fcp(com.google.mlkit.vision.text.pipeline.zbo zboVar, zbok zbokVar, zbkx zbkxVar, boolean z) {
        this.f69885a = zboVar;
        this.f69886b = zbokVar;
        if (zbkxVar == null) {
            throw new NullPointerException("Null lineBoxParcels");
        }
        this.f69887c = zbkxVar;
        this.f69888d = z;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof com.google.mlkit.vision.text.pipeline.zbn) {
            com.google.mlkit.vision.text.pipeline.zbn zbnVar = (com.google.mlkit.vision.text.pipeline.zbn) obj;
            if (this.f69885a.equals(zbnVar.zbc()) && this.f69886b.equals(zbnVar.zbb()) && this.f69887c.equals(zbnVar.zba()) && this.f69888d == zbnVar.zbd()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (true != this.f69888d ? 1237 : 1231) ^ ((((((this.f69885a.hashCode() ^ 1000003) * 1000003) ^ this.f69886b.hashCode()) * 1000003) ^ this.f69887c.hashCode()) * 1000003);
    }

    public final String toString() {
        zbkx zbkxVar = this.f69887c;
        zbok zbokVar = this.f69886b;
        return "VkpResults{status=" + this.f69885a.toString() + ", textParcel=" + zbokVar.toString() + ", lineBoxParcels=" + zbkxVar.toString() + ", fromColdCall=" + this.f69888d + "}";
    }

    @Override // com.google.mlkit.vision.text.pipeline.zbn
    public final zbkx zba() {
        return this.f69887c;
    }

    @Override // com.google.mlkit.vision.text.pipeline.zbn
    public final zbok zbb() {
        return this.f69886b;
    }

    @Override // com.google.mlkit.vision.text.pipeline.zbn
    public final com.google.mlkit.vision.text.pipeline.zbo zbc() {
        return this.f69885a;
    }

    @Override // com.google.mlkit.vision.text.pipeline.zbn
    public final boolean zbd() {
        return this.f69888d;
    }
}
