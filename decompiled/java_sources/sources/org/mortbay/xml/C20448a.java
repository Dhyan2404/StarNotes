package org.mortbay.xml;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.mortbay.xml.XmlParser;

/* renamed from: org.mortbay.xml.a */
/* loaded from: classes13.dex */
public class C20448a implements Iterator {

    /* renamed from: e */
    public int f115486e = 0;

    /* renamed from: f */
    public XmlParser.Node f115487f;

    /* renamed from: g */
    public final /* synthetic */ String f115488g;

    /* renamed from: h */
    public final /* synthetic */ XmlParser.Node f115489h;

    public C20448a(XmlParser.Node node, String str) {
        this.f115489h = node;
        this.f115488g = str;
    }

    /* JADX WARN: Incorrect condition in loop: B:6:0x000c */
    @Override // java.util.Iterator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean hasNext() {
        /*
            r4 = this;
            org.mortbay.xml.XmlParser$Node r0 = r4.f115487f
            r1 = 1
            if (r0 == 0) goto L6
            return r1
        L6:
            org.mortbay.xml.XmlParser$Node r0 = r4.f115489h
            java.util.ArrayList r0 = org.mortbay.xml.XmlParser.Node.m71690a(r0)
            if (r0 == 0) goto L43
            int r0 = r4.f115486e
            org.mortbay.xml.XmlParser$Node r2 = r4.f115489h
            java.util.ArrayList r2 = org.mortbay.xml.XmlParser.Node.m71690a(r2)
            int r2 = r2.size()
            if (r0 >= r2) goto L43
            org.mortbay.xml.XmlParser$Node r0 = r4.f115489h
            java.util.ArrayList r0 = org.mortbay.xml.XmlParser.Node.m71690a(r0)
            int r2 = r4.f115486e
            java.lang.Object r0 = r0.get(r2)
            boolean r2 = r0 instanceof org.mortbay.xml.XmlParser.Node
            if (r2 == 0) goto L3d
            org.mortbay.xml.XmlParser$Node r0 = (org.mortbay.xml.XmlParser.Node) r0
            java.lang.String r2 = r4.f115488g
            java.lang.String r3 = org.mortbay.xml.XmlParser.Node.m71691b(r0)
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L3d
            r4.f115487f = r0
            return r1
        L3d:
            int r0 = r4.f115486e
            int r0 = r0 + r1
            r4.f115486e = r0
            goto L6
        L43:
            r4 = 0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.xml.C20448a.hasNext():boolean");
    }

    @Override // java.util.Iterator
    public Object next() {
        try {
            if (hasNext()) {
                return this.f115487f;
            }
            throw new NoSuchElementException();
        } finally {
            this.f115487f = null;
            this.f115486e++;
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Not supported");
    }
}
