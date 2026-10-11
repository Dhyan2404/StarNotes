package org.apache.commons.logging.impl;

import java.security.PrivilegedAction;
import org.apache.commons.logging.LogFactory;

/* renamed from: org.apache.commons.logging.impl.a */
/* loaded from: classes12.dex */
public final class C19023a implements PrivilegedAction {
    @Override // java.security.PrivilegedAction
    public Object run() {
        ClassLoader directGetContextClassLoader;
        directGetContextClassLoader = LogFactory.directGetContextClassLoader();
        return directGetContextClassLoader;
    }
}
