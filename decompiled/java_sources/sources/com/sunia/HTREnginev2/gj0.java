package com.sunia.HTREnginev2;

import java.util.function.Consumer;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTAuthorsImpl;

/* loaded from: classes15.dex */
public final /* synthetic */ class gj0 implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ CTAuthorsImpl f71075e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f71075e.removeAuthor(((Integer) obj).intValue());
    }
}
