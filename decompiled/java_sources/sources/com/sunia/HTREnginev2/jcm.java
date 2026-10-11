package com.sunia.HTREnginev2;

import java.io.IOException;
import java.security.PrivilegedExceptionAction;

/* loaded from: classes5.dex */
public class jcm implements PrivilegedExceptionAction {

    /* renamed from: a */
    public final /* synthetic */ ClassLoader f74182a;

    /* renamed from: b */
    public final /* synthetic */ String f74183b;

    public jcm(ClassLoader classLoader, String str) {
        this.f74182a = classLoader;
        this.f74183b = str;
    }

    @Override // java.security.PrivilegedExceptionAction
    public Object run() throws IOException {
        ClassLoader classLoader = this.f74182a;
        String str = this.f74183b;
        return classLoader == null ? ClassLoader.getSystemResources(str) : classLoader.getResources(str);
    }
}
