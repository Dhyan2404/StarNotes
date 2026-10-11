package net.p110sf.saxon.style;

import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingIncident;

/* loaded from: classes11.dex */
public class XSLStylesheet extends XSLModuleRoot {
    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainParam() {
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0055, code lost:
    
        if (r10.equals("version") == false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x009e, code lost:
    
        if (r1.equals("strip") == false) goto L40;
     */
    @Override // net.p110sf.saxon.style.StyleElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void prepareAttributes() {
        /*
            r12 = this;
            r12.m63962N()
            r12.m63963O()
            net.sf.saxon.om.AttributeMap r0 = r12.attributes()
            java.util.Iterator r0 = r0.iterator()
            r1 = 0
        Lf:
            boolean r2 = r0.hasNext()
            r3 = 2
            java.lang.String r4 = "version"
            r5 = 1
            r6 = 0
            java.lang.String r7 = "input-type-annotations"
            r8 = -1
            if (r2 == 0) goto L74
            java.lang.Object r2 = r0.next()
            net.sf.saxon.om.AttributeInfo r2 = (net.p110sf.saxon.om.AttributeInfo) r2
            net.sf.saxon.om.NodeName r9 = r2.getNodeName()
            java.lang.String r10 = r9.getDisplayName()
            java.lang.String r2 = r2.getValue()
            r10.hashCode()
            int r11 = r10.hashCode()
            switch(r11) {
                case -425389900: goto L63;
                case 3355: goto L58;
                case 351608024: goto L51;
                case 997251197: goto L46;
                case 2045047359: goto L3b;
                default: goto L39;
            }
        L39:
            r3 = r8
            goto L6b
        L3b:
            java.lang.String r3 = "extension-element-prefixes"
            boolean r3 = r10.equals(r3)
            if (r3 != 0) goto L44
            goto L39
        L44:
            r3 = 4
            goto L6b
        L46:
            java.lang.String r3 = "exclude-result-prefixes"
            boolean r3 = r10.equals(r3)
            if (r3 != 0) goto L4f
            goto L39
        L4f:
            r3 = 3
            goto L6b
        L51:
            boolean r4 = r10.equals(r4)
            if (r4 != 0) goto L6b
            goto L39
        L58:
            java.lang.String r3 = "id"
            boolean r3 = r10.equals(r3)
            if (r3 != 0) goto L61
            goto L39
        L61:
            r3 = r5
            goto L6b
        L63:
            boolean r3 = r10.equals(r7)
            if (r3 != 0) goto L6a
            goto L39
        L6a:
            r3 = r6
        L6b:
            switch(r3) {
                case 0: goto L72;
                case 1: goto Lf;
                case 2: goto Lf;
                case 3: goto Lf;
                case 4: goto Lf;
                default: goto L6e;
            }
        L6e:
            r12.checkUnknownAttribute(r9)
            goto Lf
        L72:
            r1 = r2
            goto Lf
        L74:
            int r0 = r12.version
            if (r0 != r8) goto L8d
            net.sf.saxon.tree.linked.NodeImpl r0 = r12.getParent()
            if (r0 == 0) goto L8a
            net.sf.saxon.tree.linked.NodeImpl r0 = r12.getParent()
            int r0 = r0.getNodeKind()
            r2 = 9
            if (r0 != r2) goto L8d
        L8a:
            r12.reportAbsence(r4)
        L8d:
            if (r1 == 0) goto Lbe
            int r0 = r1.hashCode()
            switch(r0) {
                case -1626174665: goto Lac;
                case -1276662196: goto La1;
                case 109773592: goto L98;
                default: goto L96;
            }
        L96:
            r3 = r8
            goto Lb6
        L98:
            java.lang.String r0 = "strip"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto Lb6
            goto L96
        La1:
            java.lang.String r0 = "preserve"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto Laa
            goto L96
        Laa:
            r3 = r5
            goto Lb6
        Lac:
            java.lang.String r0 = "unspecified"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto Lb5
            goto L96
        Lb5:
            r3 = r6
        Lb6:
            switch(r3) {
                case 0: goto Lbe;
                case 1: goto Lbe;
                case 2: goto Lbe;
                default: goto Lb9;
            }
        Lb9:
            java.lang.String r0 = "strip|preserve|unspecified"
            r12.invalidAttribute(r7, r0)
        Lbe:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.XSLStylesheet.prepareAttributes():void");
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        boolean z;
        XmlProcessingIncident xmlProcessingIncident = this.validationError;
        if (xmlProcessingIncident != null) {
            compileError(xmlProcessingIncident);
        }
        if (getParent() != null && getParent().getNodeKind() != 9) {
            compileError(getDisplayName() + " must be the outermost element", "XTSE0010");
        }
        for (NodeInfo nodeInfo : children()) {
            if (nodeInfo.getNodeKind() != 3 && (!((z = nodeInfo instanceof StyleElement)) || !((StyleElement) nodeInfo).isDeclaration())) {
                if (!(nodeInfo instanceof DataElement) && z && ("http://www.w3.org/1999/XSL/Transform".equals(nodeInfo.getURI()) || "".equals(nodeInfo.getURI()))) {
                    if (!(nodeInfo instanceof AbsentExtensionElement) || !((StyleElement) nodeInfo).m63985x()) {
                        if ("http://www.w3.org/1999/XSL/Transform".equals(nodeInfo.getURI())) {
                            ((StyleElement) nodeInfo).compileError("Element " + nodeInfo.getDisplayName() + " must not appear directly within " + getDisplayName(), "XTSE0010");
                        } else {
                            ((StyleElement) nodeInfo).compileError("Element " + nodeInfo.getDisplayName() + " must not appear directly within " + getDisplayName() + " because it is not in a namespace", "XTSE0130");
                        }
                    }
                }
            }
        }
    }
}
