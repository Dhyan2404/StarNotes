package com.sunia.HTREnginev2;

import java.io.IOException;
import java.util.function.Consumer;

/* loaded from: classes11.dex */
public final /* synthetic */ class pyi implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ IOException f81391e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f81391e.addSuppressed((IOException) obj);
    }
}
