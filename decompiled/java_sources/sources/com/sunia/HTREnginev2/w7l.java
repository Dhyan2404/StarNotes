package com.sunia.HTREnginev2;

import java.util.Stack;

/* loaded from: classes12.dex */
public final class w7l {

    /* renamed from: a */
    public static final C14592b f88311a;

    /* renamed from: com.sunia.HTREnginev2.w7l$b */
    /* loaded from: classes12.dex */
    public static final class C14592b extends SecurityManager {
        public C14592b() {
        }

        @Override // java.lang.SecurityManager
        public Class<?>[] getClassContext() {
            return super.getClassContext();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        C14592b c14592b = null;
        Object[] objArr = 0;
        try {
            SecurityManager securityManager = System.getSecurityManager();
            if (securityManager != null) {
                securityManager.checkPermission(new RuntimePermission("createSecurityManager"));
            }
            c14592b = new C14592b();
        } catch (SecurityException unused) {
        }
        f88311a = c14592b;
    }

    /* renamed from: a */
    public static Stack<Class<?>> m57944a() {
        Class<?>[] classContext = f88311a.getClassContext();
        Stack<Class<?>> stack = new Stack<>();
        stack.ensureCapacity(classContext.length);
        for (Class<?> cls : classContext) {
            stack.push(cls);
        }
        return stack;
    }

    /* renamed from: b */
    public static boolean m57945b() {
        return f88311a != null;
    }
}
