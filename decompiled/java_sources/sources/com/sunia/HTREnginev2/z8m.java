package com.sunia.HTREnginev2;

import com.twelvemonkeys.lang.StringUtil;
import com.twelvemonkeys.util.Time;

/* loaded from: classes10.dex */
public class z8m extends cin {
    public z8m(int i) {
        this.f66874a = i;
    }

    @Override // com.sunia.HTREnginev2.cin
    /* renamed from: a */
    public String mo53461a(Time time) {
        if (this.f66874a < 0) {
            return Integer.toString(time.getTime());
        }
        if (time.getSeconds() >= Math.pow(10.0d, this.f66874a)) {
            return Integer.toString(time.getSeconds());
        }
        return StringUtil.pad("" + time.getSeconds(), this.f66874a, "0", true);
    }
}
