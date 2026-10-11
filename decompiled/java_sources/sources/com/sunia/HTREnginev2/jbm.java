package com.sunia.HTREnginev2;

import java.io.IOException;
import java.net.URL;
import java.security.PrivilegedExceptionAction;

/* loaded from: classes5.dex */
public class jbm implements PrivilegedExceptionAction {

    /* renamed from: a */
    public final /* synthetic */ URL f74158a;

    public jbm(URL url) {
        this.f74158a = url;
    }

    @Override // java.security.PrivilegedExceptionAction
    public Object run() throws IOException {
        return this.f74158a.openStream();
    }
}
