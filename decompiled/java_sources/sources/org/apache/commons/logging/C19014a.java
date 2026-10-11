package org.apache.commons.logging;

import java.security.PrivilegedAction;

/* renamed from: org.apache.commons.logging.a */
/* loaded from: classes12.dex */
public final class C19014a implements PrivilegedAction {
    @Override // java.security.PrivilegedAction
    public Object run() {
        return LogFactory.directGetContextClassLoader();
    }
}
