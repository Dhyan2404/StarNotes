package com.sunia.HTREnginev2;

import com.twelvemonkeys.lang.StringUtil;
import com.twelvemonkeys.util.Time;

/* loaded from: classes10.dex */
public class xnj extends cin {
    public xnj(int i) {
        this.f66874a = i;
    }

    @Override // com.sunia.HTREnginev2.cin
    /* renamed from: a */
    public String mo53461a(Time time) {
        if (time.getMinutes() >= Math.pow(10.0d, this.f66874a)) {
            return Integer.toString(time.getMinutes());
        }
        return StringUtil.pad("" + time.getMinutes(), this.f66874a, "0", true);
    }
}
