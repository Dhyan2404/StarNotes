package org.apache.xerces.impl;

import java.security.PrivilegedAction;
import org.apache.commons.lang3.SystemUtils;

/* renamed from: org.apache.xerces.impl.a */
/* loaded from: classes13.dex */
public class C20007a implements PrivilegedAction {
    @Override // java.security.PrivilegedAction
    public Object run() {
        return System.getProperty(SystemUtils.f107422c);
    }
}
