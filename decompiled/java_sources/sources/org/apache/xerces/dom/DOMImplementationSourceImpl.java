package org.apache.xerces.dom;

import java.util.ArrayList;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.DOMImplementationList;
import org.w3c.dom.DOMImplementationSource;

/* loaded from: classes13.dex */
public class DOMImplementationSourceImpl implements DOMImplementationSource {
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0025, code lost:
    
        switch(r2.charAt(0)) {
            case 48: goto L16;
            case 49: goto L16;
            case 50: goto L16;
            case 51: goto L16;
            case 52: goto L16;
            case 53: goto L16;
            case 54: goto L16;
            case 55: goto L16;
            case 56: goto L16;
            case 57: goto L16;
            default: goto L15;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002b, code lost:
    
        if (r1 == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003f, code lost:
    
        if (r6.hasFeature(r7, null) != false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0042, code lost:
    
        r7 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0041, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0031, code lost:
    
        if (r6.hasFeature(r7, r2) != false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0038, code lost:
    
        if (r5.hasMoreTokens() == false) goto L5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0011, code lost:
    
        r7 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x000a, code lost:
    
        if (r5.hasMoreTokens() != false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0033, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x002a, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0029, code lost:
    
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0015, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0012, code lost:
    
        r7 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x000c, code lost:
    
        r7 = r5.nextToken();
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0013, code lost:
    
        if (r7 != null) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001b, code lost:
    
        if (r5.hasMoreTokens() == false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
    
        r2 = r5.nextToken();
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0038 -> B:3:0x000c). Please report as a decompilation issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m69743a(org.w3c.dom.DOMImplementation r6, java.lang.String r7) {
        /*
            r5 = this;
            java.util.StringTokenizer r5 = new java.util.StringTokenizer
            r5.<init>(r7)
            boolean r7 = r5.hasMoreTokens()
            r0 = 0
            if (r7 == 0) goto L11
        Lc:
            java.lang.String r7 = r5.nextToken()
            goto L12
        L11:
            r7 = r0
        L12:
            r1 = 1
            if (r7 != 0) goto L16
            return r1
        L16:
            boolean r2 = r5.hasMoreTokens()
            r3 = 0
            if (r2 == 0) goto L29
            java.lang.String r2 = r5.nextToken()
            char r4 = r2.charAt(r3)
            switch(r4) {
                case 48: goto L2b;
                case 49: goto L2b;
                case 50: goto L2b;
                case 51: goto L2b;
                case 52: goto L2b;
                case 53: goto L2b;
                case 54: goto L2b;
                case 55: goto L2b;
                case 56: goto L2b;
                case 57: goto L2b;
                default: goto L28;
            }
        L28:
            goto L2a
        L29:
            r2 = r0
        L2a:
            r1 = r3
        L2b:
            if (r1 == 0) goto L3b
            boolean r7 = r6.hasFeature(r7, r2)
            if (r7 != 0) goto L34
            return r3
        L34:
            boolean r7 = r5.hasMoreTokens()
            if (r7 == 0) goto L11
            goto Lc
        L3b:
            boolean r7 = r6.hasFeature(r7, r0)
            if (r7 != 0) goto L42
            return r3
        L42:
            r7 = r2
            goto L12
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.dom.DOMImplementationSourceImpl.m69743a(org.w3c.dom.DOMImplementation, java.lang.String):boolean");
    }

    @Override // org.w3c.dom.DOMImplementationSource
    public DOMImplementation getDOMImplementation(String str) {
        DOMImplementation dOMImplementation = CoreDOMImplementationImpl.getDOMImplementation();
        if (m69743a(dOMImplementation, str)) {
            return dOMImplementation;
        }
        DOMImplementation dOMImplementation2 = DOMImplementationImpl.getDOMImplementation();
        if (m69743a(dOMImplementation2, str)) {
            return dOMImplementation2;
        }
        return null;
    }

    @Override // org.w3c.dom.DOMImplementationSource
    public DOMImplementationList getDOMImplementationList(String str) {
        DOMImplementation dOMImplementation = CoreDOMImplementationImpl.getDOMImplementation();
        ArrayList arrayList = new ArrayList();
        if (m69743a(dOMImplementation, str)) {
            arrayList.add(dOMImplementation);
        }
        DOMImplementation dOMImplementation2 = DOMImplementationImpl.getDOMImplementation();
        if (m69743a(dOMImplementation2, str)) {
            arrayList.add(dOMImplementation2);
        }
        return new DOMImplementationListImpl(arrayList);
    }
}
