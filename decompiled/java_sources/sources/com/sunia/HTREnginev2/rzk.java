package com.sunia.HTREnginev2;

import java.nio.file.Path;
import java.util.function.Function;

/* loaded from: classes11.dex */
public final /* synthetic */ class rzk implements Function {

    /* renamed from: e */
    public final /* synthetic */ Path f83652e;

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return this.f83652e.relativize((Path) obj);
    }
}
