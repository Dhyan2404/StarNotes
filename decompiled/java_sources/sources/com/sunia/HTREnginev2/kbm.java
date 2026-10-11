package com.sunia.HTREnginev2;

import java.io.IOException;
import java.net.URL;
import java.security.PrivilegedExceptionAction;

/* loaded from: classes5.dex */
public class kbm implements PrivilegedExceptionAction {

    /* renamed from: a */
    public final /* synthetic */ URL f75264a;

    public kbm(URL url) {
        this.f75264a = url;
    }

    @Override // java.security.PrivilegedExceptionAction
    public Object run() throws IOException {
        return this.f75264a.openStream();
    }
}
