package com.sunia.HTREnginev2;

import com.google.android.exoplayer2.C4649C;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbaaw;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes6.dex */
public final class fep {
    /* renamed from: a */
    public static String m54095a(List list) {
        Iterator it2 = list.iterator();
        float f = 0.0f;
        String str = C4649C.LANGUAGE_UNDETERMINED;
        while (it2.hasNext()) {
            zbaaw zbaawVar = (zbaaw) it2.next();
            if (f < zbaawVar.zbc()) {
                f = zbaawVar.zbc();
                str = zbaawVar.zbf();
            }
        }
        return str;
    }
}
