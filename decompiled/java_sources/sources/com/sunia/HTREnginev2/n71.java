package com.sunia.HTREnginev2;

import java.util.function.Consumer;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTCfRuleImpl;

/* loaded from: classes15.dex */
public final /* synthetic */ class n71 implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ CTCfRuleImpl f78360e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f78360e.removeFormula(((Integer) obj).intValue());
    }
}
