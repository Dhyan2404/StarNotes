package com.sunia.HTREnginev2;

import java.util.function.Function;
import java.util.stream.Stream;
import net.p110sf.saxon.s9api.XdmItem;

/* loaded from: classes11.dex */
public final /* synthetic */ class rym implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return Stream.of((XdmItem) obj);
    }
}
