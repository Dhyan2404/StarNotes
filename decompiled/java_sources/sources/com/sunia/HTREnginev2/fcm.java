package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes13.dex */
public class fcm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ ClassLoader f69881a;

    /* renamed from: b */
    public final /* synthetic */ String f69882b;

    public fcm(ClassLoader classLoader, String str) {
        this.f69881a = classLoader;
        this.f69882b = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        ClassLoader classLoader = this.f69881a;
        String str = this.f69882b;
        return classLoader == null ? ClassLoader.getSystemResourceAsStream(str) : classLoader.getResourceAsStream(str);
    }
}
