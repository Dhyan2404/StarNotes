package com.sunia.HTREnginev2;

import java.io.IOException;
import java.security.PrivilegedExceptionAction;

/* loaded from: classes5.dex */
public class ccm implements PrivilegedExceptionAction {

    /* renamed from: a */
    public final /* synthetic */ ClassLoader f66709a;

    /* renamed from: b */
    public final /* synthetic */ String f66710b;

    public ccm(ClassLoader classLoader, String str) {
        this.f66709a = classLoader;
        this.f66710b = str;
    }

    @Override // java.security.PrivilegedExceptionAction
    public Object run() throws IOException {
        ClassLoader classLoader = this.f66709a;
        String str = this.f66710b;
        return classLoader == null ? ClassLoader.getSystemResources(str) : classLoader.getResources(str);
    }
}
