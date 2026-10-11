package com.sunia.HTREnginev2;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes13.dex */
public final class z2l {

    /* renamed from: d */
    public static final List<z2l> f91358d = new ArrayList();

    /* renamed from: a */
    public Object f91359a;

    /* renamed from: b */
    public k5n f91360b;

    /* renamed from: c */
    public z2l f91361c;

    public z2l(Object obj, k5n k5nVar) {
        this.f91359a = obj;
        this.f91360b = k5nVar;
    }

    /* renamed from: a */
    public static z2l m58607a(k5n k5nVar, Object obj) {
        List<z2l> list = f91358d;
        synchronized (list) {
            int size = list.size();
            if (size <= 0) {
                return new z2l(obj, k5nVar);
            }
            z2l remove = list.remove(size - 1);
            remove.f91359a = obj;
            remove.f91360b = k5nVar;
            remove.f91361c = null;
            return remove;
        }
    }

    /* renamed from: b */
    public static void m58608b(z2l z2lVar) {
        z2lVar.f91359a = null;
        z2lVar.f91360b = null;
        z2lVar.f91361c = null;
        List<z2l> list = f91358d;
        synchronized (list) {
            if (list.size() < 10000) {
                list.add(z2lVar);
            }
        }
    }
}
