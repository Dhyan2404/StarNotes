package org.jsoup.nodes;

import java.util.Iterator;

/* renamed from: org.jsoup.nodes.a */
/* loaded from: classes13.dex */
public class C20252a implements Iterator<Attribute> {

    /* renamed from: e */
    public int f114111e = 0;

    /* renamed from: f */
    public final /* synthetic */ Attributes f114112f;

    public C20252a(Attributes attributes) {
        this.f114112f = attributes;
    }

    @Override // java.util.Iterator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Attribute next() {
        Attributes attributes = this.f114112f;
        String[] strArr = attributes.f114050f;
        int i = this.f114111e;
        Attribute attribute = new Attribute(strArr[i], attributes.f114051g[i], attributes);
        this.f114111e++;
        return attribute;
    }

    /* JADX WARN: Incorrect condition in loop: B:2:0x0009 */
    @Override // java.util.Iterator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean hasNext() {
        /*
            r4 = this;
        L0:
            int r0 = r4.f114111e
            org.jsoup.nodes.Attributes r1 = r4.f114112f
            int r1 = org.jsoup.nodes.Attributes.m71098d(r1)
            r2 = 1
            if (r0 >= r1) goto L1f
            org.jsoup.nodes.Attributes r0 = r4.f114112f
            java.lang.String[] r1 = r0.f114050f
            int r3 = r4.f114111e
            r1 = r1[r3]
            boolean r0 = org.jsoup.nodes.Attributes.m71099e(r0, r1)
            if (r0 == 0) goto L1f
            int r0 = r4.f114111e
            int r0 = r0 + r2
            r4.f114111e = r0
            goto L0
        L1f:
            int r0 = r4.f114111e
            org.jsoup.nodes.Attributes r4 = r4.f114112f
            int r4 = org.jsoup.nodes.Attributes.m71098d(r4)
            if (r0 >= r4) goto L2a
            goto L2b
        L2a:
            r2 = 0
        L2b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.nodes.C20252a.hasNext():boolean");
    }

    @Override // java.util.Iterator
    public void remove() {
        Attributes attributes = this.f114112f;
        int i = this.f114111e - 1;
        this.f114111e = i;
        attributes.m71107j(i);
    }
}
