package org.apache.commons.logging;

import java.io.IOException;
import java.security.PrivilegedAction;

/* renamed from: org.apache.commons.logging.d */
/* loaded from: classes12.dex */
public final class C19017d implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ ClassLoader f107702a;

    /* renamed from: b */
    public final /* synthetic */ String f107703b;

    public C19017d(ClassLoader classLoader, String str) {
        this.f107702a = classLoader;
        this.f107703b = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        try {
            ClassLoader classLoader = this.f107702a;
            return classLoader != null ? classLoader.getResources(this.f107703b) : ClassLoader.getSystemResources(this.f107703b);
        } catch (IOException e) {
            if (LogFactory.isDiagnosticsEnabled()) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Exception while trying to find configuration file ");
                stringBuffer.append(this.f107703b);
                stringBuffer.append(":");
                stringBuffer.append(e.getMessage());
                LogFactory.logDiagnostic(stringBuffer.toString());
            }
            return null;
        } catch (NoSuchMethodError unused) {
            return null;
        }
    }
}
