package org.apache.xerces.impl.p117xs;

import java.util.Comparator;

/* renamed from: org.apache.xerces.impl.xs.a */
/* loaded from: classes13.dex */
public class C20050a implements Comparator {
    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        XSElementDecl xSElementDecl = (XSElementDecl) ((XSParticleDecl) obj).fValue;
        XSElementDecl xSElementDecl2 = (XSElementDecl) ((XSParticleDecl) obj2).fValue;
        String namespace = xSElementDecl.getNamespace();
        String namespace2 = xSElementDecl2.getNamespace();
        String name = xSElementDecl.getName();
        String name2 = xSElementDecl2.getName();
        int i = 1;
        if (namespace == namespace2) {
            i = 0;
        } else if (namespace == null) {
            i = -1;
        } else if (namespace2 != null) {
            i = namespace.compareTo(namespace2);
        }
        return i != 0 ? i : name.compareTo(name2);
    }
}
