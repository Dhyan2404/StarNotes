package net.p110sf.saxon.event;

import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class IgnorableWhitespaceStripper extends ProxyReceiver {

    /* renamed from: e */
    public boolean[] f98994e;

    /* renamed from: f */
    public int f98995f;

    public IgnorableWhitespaceStripper(Receiver receiver) {
        super(receiver);
        this.f98994e = new boolean[100];
        this.f98995f = 0;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (unicodeString.isEmpty()) {
            return;
        }
        if (this.f98994e[this.f98995f] && Whitespace.isAllWhite(unicodeString)) {
            return;
        }
        this.nextReceiver.characters(unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        this.nextReceiver.endElement();
        this.f98995f--;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0033  */
    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void startElement(net.p110sf.saxon.om.NodeName r8, net.p110sf.saxon.type.SchemaType r9, net.p110sf.saxon.om.AttributeMap r10, net.p110sf.saxon.om.NamespaceMap r11, net.p110sf.saxon.s9api.Location r12, int r13) throws net.p110sf.saxon.trans.XPathException {
        /*
            r7 = this;
            net.sf.saxon.event.Receiver r0 = r7.nextReceiver
            r1 = r8
            r2 = r9
            r3 = r10
            r4 = r11
            r5 = r12
            r6 = r13
            r0.startElement(r1, r2, r3, r4, r5, r6)
            net.sf.saxon.type.Untyped r8 = net.p110sf.saxon.type.Untyped.getInstance()
            r10 = 1
            if (r9 == r8) goto L28
            boolean r8 = r9.isComplexType()
            if (r8 == 0) goto L28
            net.sf.saxon.type.ComplexType r9 = (net.p110sf.saxon.type.ComplexType) r9
            boolean r8 = r9.isSimpleContent()
            if (r8 != 0) goto L28
            boolean r8 = r9.isMixedContent()
            if (r8 != 0) goto L28
            r8 = r10
            goto L29
        L28:
            r8 = 0
        L29:
            int r9 = r7.f98995f
            int r9 = r9 + r10
            r7.f98995f = r9
            boolean[] r10 = r7.f98994e
            int r11 = r10.length
            if (r9 < r11) goto L3b
            int r9 = r9 * 2
            boolean[] r9 = java.util.Arrays.copyOf(r10, r9)
            r7.f98994e = r9
        L3b:
            boolean[] r9 = r7.f98994e
            int r7 = r7.f98995f
            r9[r7] = r8
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.event.IgnorableWhitespaceStripper.startElement(net.sf.saxon.om.NodeName, net.sf.saxon.type.SchemaType, net.sf.saxon.om.AttributeMap, net.sf.saxon.om.NamespaceMap, net.sf.saxon.s9api.Location, int):void");
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public boolean usesTypeAnnotations() {
        return true;
    }
}
