package org.mortbay.log;

import java.security.PrivilegedAction;

/* renamed from: org.mortbay.log.a */
/* loaded from: classes13.dex */
public final class C20422a implements PrivilegedAction {
    @Override // java.security.PrivilegedAction
    public Object run() {
        Log.__logClass = System.getProperty("org.mortbay.log.class", "org.mortbay.log.Slf4jLog");
        Log.__verbose = System.getProperty("VERBOSE", null) != null;
        Log.__ignored = System.getProperty(Log.IGNORED, null) != null;
        return new Boolean(true);
    }
}
