package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

/* loaded from: classes5.dex */
final class zbto {
    private final Object zba;
    private final int zbb;

    public zbto(Object obj, int i) {
        this.zba = obj;
        this.zbb = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zbto)) {
            return false;
        }
        zbto zbtoVar = (zbto) obj;
        return this.zba == zbtoVar.zba && this.zbb == zbtoVar.zbb;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.zba) * 65535) + this.zbb;
    }
}
