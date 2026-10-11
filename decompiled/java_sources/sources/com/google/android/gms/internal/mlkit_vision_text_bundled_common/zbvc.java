package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

/* loaded from: classes5.dex */
final class zbvc implements zbvk {
    private final zbvk[] zba;

    public zbvc(zbvk... zbvkVarArr) {
        this.zba = zbvkVarArr;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvk
    public final zbvj zbb(Class cls) {
        for (int i = 0; i < 2; i++) {
            zbvk zbvkVar = this.zba[i];
            if (zbvkVar.zbc(cls)) {
                return zbvkVar.zbb(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvk
    public final boolean zbc(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (this.zba[i].zbc(cls)) {
                return true;
            }
        }
        return false;
    }
}
