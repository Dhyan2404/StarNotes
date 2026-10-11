package javax.xml.namespace;

import java.security.PrivilegedAction;

/* renamed from: javax.xml.namespace.a */
/* loaded from: classes5.dex */
public class C17889a implements PrivilegedAction {
    @Override // java.security.PrivilegedAction
    public Object run() {
        return System.getProperty("org.apache.xml.namespace.QName.useCompatibleSerialVersionUID");
    }
}
