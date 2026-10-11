package com.sunia.HTREnginev2;

import java.util.function.Consumer;
import org.etsi.uri.x01903.v13.impl.DocumentationReferencesTypeImpl;

/* loaded from: classes13.dex */
public final /* synthetic */ class qaf implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ DocumentationReferencesTypeImpl f81814e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f81814e.removeDocumentationReference(((Integer) obj).intValue());
    }
}
