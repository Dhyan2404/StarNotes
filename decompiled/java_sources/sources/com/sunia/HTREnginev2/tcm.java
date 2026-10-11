package com.sunia.HTREnginev2;

import java.io.File;
import java.security.PrivilegedAction;

/* loaded from: classes12.dex */
public class tcm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ File f85196a;

    public tcm(File file) {
        this.f85196a = file;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return new Long(this.f85196a.lastModified());
    }
}
