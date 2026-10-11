package com.sunia.HTREnginev2;

import java.util.function.Supplier;
import org.apache.poi.ss.formula.Formula;

/* loaded from: classes12.dex */
public final /* synthetic */ class w6g implements Supplier {

    /* renamed from: e */
    public final /* synthetic */ Formula f88281e;

    public /* synthetic */ w6g(Formula formula) {
        this.f88281e = formula;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return this.f88281e.getTokens();
    }
}
