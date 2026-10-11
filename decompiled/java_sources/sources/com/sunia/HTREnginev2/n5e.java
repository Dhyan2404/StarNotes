package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.C5673a;

@GwtCompatible
@aof
/* loaded from: classes6.dex */
public abstract class n5e {
    public static n5e compile(String str) {
        return C5673a.m25859b(str);
    }

    public static boolean isPcreLike() {
        return C5673a.m25866i();
    }

    public abstract int flags();

    public abstract g5e matcher(CharSequence charSequence);

    public abstract String pattern();

    public abstract String toString();
}
