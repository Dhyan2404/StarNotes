package com.sunia.HTREnginev2;

import java.util.function.Consumer;
import org.openxmlformats.schemas.presentationml.x2006.main.impl.CTTLBehaviorAttributeNameListImpl;

/* loaded from: classes14.dex */
public final /* synthetic */ class fcc implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ CTTLBehaviorAttributeNameListImpl f69870e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f69870e.removeAttrName(((Integer) obj).intValue());
    }
}
