package net.p110sf.saxon.style;

import java.util.List;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.QNameTest;
import net.p110sf.saxon.pattern.UnionQNameTest;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class XSLCatch extends StyleElement {

    /* renamed from: u */
    public Expression f101912u;

    /* renamed from: v */
    public QNameTest f101913v;

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a4, code lost:
    
        m63972X(r7, "XTSE0280", "errors");
        r2.add(net.p110sf.saxon.pattern.AnyNodeTest.getInstance());
     */
    /* renamed from: Z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<net.p110sf.saxon.pattern.QNameTest> m64031Z(java.lang.String r11) {
        /*
            r10 = this;
            java.lang.String r0 = ""
            java.lang.String r1 = "XTSE0280"
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.util.StringTokenizer r3 = new java.util.StringTokenizer
            java.lang.String r4 = " \t\n\r"
            r5 = 0
            r3.<init>(r11, r4, r5)
        L11:
            boolean r11 = r3.hasMoreTokens()
            if (r11 == 0) goto Le7
            java.lang.String r11 = r3.nextToken()
            java.lang.String r4 = "*"
            boolean r4 = r11.equals(r4)
            if (r4 == 0) goto L2b
            net.sf.saxon.pattern.AnyNodeTest r11 = net.p110sf.saxon.pattern.AnyNodeTest.getInstance()
            r2.add(r11)
            goto L11
        L2b:
            java.lang.String r4 = ":*"
            boolean r4 = r11.endsWith(r4)
            r6 = 1
            r7 = 2
            if (r4 == 0) goto L61
            int r4 = r11.length()
            if (r4 != r7) goto L47
            java.lang.String r4 = "No prefix before ':*'"
            r10.compileError(r4)
            net.sf.saxon.pattern.AnyNodeTest r4 = net.p110sf.saxon.pattern.AnyNodeTest.getInstance()
            r2.add(r4)
        L47:
            int r4 = r11.length()
            int r4 = r4 - r7
            java.lang.String r11 = r11.substring(r5, r4)
            java.lang.String r11 = r10.getURIForPrefix(r11, r5)
            net.sf.saxon.pattern.NamespaceTest r4 = new net.sf.saxon.pattern.NamespaceTest
            net.sf.saxon.om.NamePool r7 = r10.getNamePool()
            r4.<init>(r7, r6, r11)
            r2.add(r4)
            goto L11
        L61:
            java.lang.String r4 = "*:"
            boolean r4 = r11.startsWith(r4)
            java.lang.String r8 = "errors"
            if (r4 == 0) goto L90
            int r4 = r11.length()
            if (r4 != r7) goto L7f
            java.lang.String r4 = "No local name after '*:'"
            java.lang.String r9 = "XTSE0010"
            r10.compileErrorInAttribute(r4, r9, r8)
            net.sf.saxon.pattern.AnyNodeTest r4 = net.p110sf.saxon.pattern.AnyNodeTest.getInstance()
            r2.add(r4)
        L7f:
            java.lang.String r11 = r11.substring(r7)
            net.sf.saxon.pattern.LocalNameTest r4 = new net.sf.saxon.pattern.LocalNameTest
            net.sf.saxon.om.NamePool r7 = r10.getNamePool()
            r4.<init>(r7, r6, r11)
            r2.add(r4)
            goto L11
        L90:
            java.lang.String[] r4 = net.p110sf.saxon.om.NameChecker.getQNameParts(r11)     // Catch: net.p110sf.saxon.om.QNameException -> Lc7
            r7 = r4[r5]     // Catch: net.p110sf.saxon.om.QNameException -> Lc7
            boolean r9 = r7.equals(r0)     // Catch: net.p110sf.saxon.om.QNameException -> Lc7
            if (r9 == 0) goto L9e
            r9 = r0
            goto Laf
        L9e:
            java.lang.String r9 = r10.getURIForPrefix(r7, r5)     // Catch: net.p110sf.saxon.om.QNameException -> Lc7
            if (r9 != 0) goto Laf
            r10.m63972X(r7, r1, r8)     // Catch: net.p110sf.saxon.om.QNameException -> Lc7
            net.sf.saxon.pattern.AnyNodeTest r0 = net.p110sf.saxon.pattern.AnyNodeTest.getInstance()     // Catch: net.p110sf.saxon.om.QNameException -> Lc7
            r2.add(r0)     // Catch: net.p110sf.saxon.om.QNameException -> Lc7
            goto Le7
        Laf:
            r11 = r4[r6]     // Catch: net.p110sf.saxon.om.QNameException -> Lc7
            net.sf.saxon.om.NamePool r4 = r10.getNamePool()
            int r11 = r4.allocateFingerprint(r9, r11)
            net.sf.saxon.pattern.NameTest r4 = new net.sf.saxon.pattern.NameTest
            net.sf.saxon.om.NamePool r7 = r10.getNamePool()
            r4.<init>(r6, r11, r7)
            r2.add(r4)
            goto L11
        Lc7:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r3 = "Error code "
            r0.append(r3)
            r0.append(r11)
            java.lang.String r11 = " is not a valid QName"
            r0.append(r11)
            java.lang.String r11 = r0.toString()
            r10.compileErrorInAttribute(r11, r1, r8)
            net.sf.saxon.pattern.AnyNodeTest r10 = net.p110sf.saxon.pattern.AnyNodeTest.getInstance()
            r2.add(r10)
        Le7:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.XSLCatch.m64031Z(java.lang.String):java.util.List");
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        if (this.f101912u == null) {
            this.f101912u = compileSequenceConstructor(compilation, componentDeclaration, true);
        }
        ((XSLTry) getParent()).addCatchClause(this.f101913v, this.f101912u);
        return null;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return false;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        String str = null;
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String displayName = nodeName.getDisplayName();
            String value = attributeInfo.getValue();
            if (displayName.equals("select")) {
                this.f101912u = makeExpression(value, attributeInfo);
            } else if (displayName.equals("errors")) {
                str = value;
            } else {
                checkUnknownAttribute(nodeName);
            }
        }
        if (str == null) {
            this.f101913v = AnyNodeTest.getInstance();
            return;
        }
        List<QNameTest> m64031Z = m64031Z(str);
        if (m64031Z.size() == 0) {
            compileError("xsl:catch/@errors must not be empty");
        }
        if (m64031Z.size() == 1) {
            this.f101913v = m64031Z.get(0);
        } else {
            this.f101913v = new UnionQNameTest(m64031Z);
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean seesAvuncularVariables() {
        return false;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        Expression typeCheck = typeCheck("select", this.f101912u);
        this.f101912u = typeCheck;
        if (typeCheck != null && hasChildNodes()) {
            compileError("An xsl:catch element with a select attribute must be empty", "XTSE3150");
        }
        if (getParent() instanceof XSLTry) {
            return;
        }
        compileError("xsl:catch may appear only as a child of xsl:try");
    }
}
