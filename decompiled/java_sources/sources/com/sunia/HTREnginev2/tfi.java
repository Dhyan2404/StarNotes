package com.sunia.HTREnginev2;

import java.io.InputStream;
import onyx.org.apache.commons.io.function.IOTriFunction;

/* loaded from: classes11.dex */
public final /* synthetic */ class tfi implements IOTriFunction {

    /* renamed from: a */
    public final /* synthetic */ InputStream f85268a;

    public /* synthetic */ tfi(InputStream inputStream) {
        this.f85268a = inputStream;
    }

    @Override // onyx.org.apache.commons.io.function.IOTriFunction
    public final Object apply(Object obj, Object obj2, Object obj3) {
        return Integer.valueOf(this.f85268a.read((byte[]) obj, ((Integer) obj2).intValue(), ((Integer) obj3).intValue()));
    }
}
