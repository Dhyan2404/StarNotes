package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zbwa extends zbwh {
    public zbwa() {
        super(null);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbwh
    public final void zba() {
        if (!zbj()) {
            for (int i = 0; i < zbc(); i++) {
                ((zbtt) ((zbwb) zbg(i)).zba()).zbg();
            }
            Iterator it2 = zbd().iterator();
            while (it2.hasNext()) {
                ((zbtt) ((Map.Entry) it2.next()).getKey()).zbg();
            }
        }
        super.zba();
    }
}
