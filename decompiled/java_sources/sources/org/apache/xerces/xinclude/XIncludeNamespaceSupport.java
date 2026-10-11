package org.apache.xerces.xinclude;

import org.apache.xerces.xni.NamespaceContext;

/* loaded from: classes13.dex */
public class XIncludeNamespaceSupport extends MultipleScopeNamespaceSupport {

    /* renamed from: a */
    public boolean[] f113579a;

    public XIncludeNamespaceSupport() {
        this.f113579a = new boolean[8];
    }

    public String getURIFromIncludeParent(String str) {
        int i = this.fCurrentContext - 1;
        while (i > 0 && !this.f113579a[i]) {
            i--;
        }
        return getURI(str, i);
    }

    @Override // org.apache.xerces.util.NamespaceSupport, org.apache.xerces.xni.NamespaceContext
    public void pushContext() {
        super.pushContext();
        int i = this.fCurrentContext + 1;
        boolean[] zArr = this.f113579a;
        if (i == zArr.length) {
            boolean[] zArr2 = new boolean[zArr.length * 2];
            System.arraycopy(zArr, 0, zArr2, 0, zArr.length);
            this.f113579a = zArr2;
        }
        this.f113579a[this.fCurrentContext] = true;
    }

    public void setContextInvalid() {
        this.f113579a[this.fCurrentContext] = false;
    }

    public XIncludeNamespaceSupport(NamespaceContext namespaceContext) {
        super(namespaceContext);
        this.f113579a = new boolean[8];
    }
}
