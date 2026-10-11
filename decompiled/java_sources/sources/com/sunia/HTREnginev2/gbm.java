package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes5.dex */
public class gbm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ ClassLoader f70883a;

    /* renamed from: b */
    public final /* synthetic */ String f70884b;

    public gbm(ClassLoader classLoader, String str) {
        this.f70883a = classLoader;
        this.f70884b = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        ClassLoader classLoader = this.f70883a;
        String str = this.f70884b;
        return classLoader == null ? ClassLoader.getSystemResourceAsStream(str) : classLoader.getResourceAsStream(str);
    }
}
