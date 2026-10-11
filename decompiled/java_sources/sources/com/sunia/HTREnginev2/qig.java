package com.sunia.HTREnginev2;

import java.io.IOException;
import java.util.function.Consumer;

/* loaded from: classes11.dex */
public final /* synthetic */ class qig implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ Exception f82086e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f82086e.addSuppressed((IOException) obj);
    }
}
