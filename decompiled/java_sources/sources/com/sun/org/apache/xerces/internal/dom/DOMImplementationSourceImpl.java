package com.sun.org.apache.xerces.internal.dom;

import java.util.Vector;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.DOMImplementationList;
import org.w3c.dom.DOMImplementationSource;

/* loaded from: classes10.dex */
public class DOMImplementationSourceImpl implements DOMImplementationSource {
    @Override // org.w3c.dom.DOMImplementationSource
    public DOMImplementation getDOMImplementation(String str) {
        DOMImplementation dOMImplementation = CoreDOMImplementationImpl.getDOMImplementation();
        if (testImpl(dOMImplementation, str)) {
            return dOMImplementation;
        }
        DOMImplementation dOMImplementation2 = DOMImplementationImpl.getDOMImplementation();
        if (testImpl(dOMImplementation2, str)) {
            return dOMImplementation2;
        }
        return null;
    }

    @Override // org.w3c.dom.DOMImplementationSource
    public DOMImplementationList getDOMImplementationList(String str) {
        DOMImplementation dOMImplementation = CoreDOMImplementationImpl.getDOMImplementation();
        Vector vector = new Vector();
        if (testImpl(dOMImplementation, str)) {
            vector.addElement(dOMImplementation);
        }
        DOMImplementation dOMImplementation2 = DOMImplementationImpl.getDOMImplementation();
        if (testImpl(dOMImplementation2, str)) {
            vector.addElement(dOMImplementation2);
        }
        return new DOMImplementationListImpl(vector);
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0012, code lost:
    
        r7 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x003e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x002c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean testImpl(org.w3c.dom.DOMImplementation r6, java.lang.String r7) {
        /*
            r5 = this;
            java.util.StringTokenizer r5 = new java.util.StringTokenizer
            r5.<init>(r7)
            boolean r7 = r5.hasMoreTokens()
            r0 = 0
            if (r7 == 0) goto L11
            java.lang.String r7 = r5.nextToken()
            goto L12
        L11:
            r7 = r0
        L12:
            r1 = 1
            if (r7 == 0) goto L47
            boolean r2 = r5.hasMoreTokens()
            r3 = 0
            if (r2 == 0) goto L28
            java.lang.String r2 = r5.nextToken()
            char r4 = r2.charAt(r3)
            switch(r4) {
                case 48: goto L2a;
                case 49: goto L2a;
                case 50: goto L2a;
                case 51: goto L2a;
                case 52: goto L2a;
                case 53: goto L2a;
                case 54: goto L2a;
                case 55: goto L2a;
                case 56: goto L2a;
                case 57: goto L2a;
                default: goto L27;
            }
        L27:
            goto L29
        L28:
            r2 = r0
        L29:
            r1 = r3
        L2a:
            if (r1 == 0) goto L3e
            boolean r7 = r6.hasFeature(r7, r2)
            if (r7 != 0) goto L33
            return r3
        L33:
            boolean r7 = r5.hasMoreTokens()
            if (r7 == 0) goto L11
            java.lang.String r7 = r5.nextToken()
            goto L12
        L3e:
            boolean r7 = r6.hasFeature(r7, r0)
            if (r7 != 0) goto L45
            return r3
        L45:
            r7 = r2
            goto L12
        L47:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.dom.DOMImplementationSourceImpl.testImpl(org.w3c.dom.DOMImplementation, java.lang.String):boolean");
    }
}
