package com.sunia.HTREnginev2;

import java.nio.file.Path;
import java.util.function.Function;

/* loaded from: classes11.dex */
public final /* synthetic */ class sig implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return ((Path) obj).toFile();
    }
}
