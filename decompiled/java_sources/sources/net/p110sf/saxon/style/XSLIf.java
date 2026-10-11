package net.p110sf.saxon.style;

import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.instruct.Choose;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.BooleanValue;

/* loaded from: classes11.dex */
public class XSLIf extends StyleElement {

    /* renamed from: u */
    public Expression f102004u;

    /* renamed from: v */
    public Expression f102005v;

    /* renamed from: w */
    public Expression f102006w;

    public static Expression prepareTestAttribute(StyleElement styleElement) {
        AttributeInfo attributeInfo = null;
        for (AttributeInfo attributeInfo2 : styleElement.attributes()) {
            NodeName nodeName = attributeInfo2.getNodeName();
            if (nodeName.getDisplayName().equals(Constants.ATTRNAME_TEST)) {
                attributeInfo = attributeInfo2;
            } else {
                styleElement.checkUnknownAttribute(nodeName);
            }
        }
        if (attributeInfo == null) {
            return null;
        }
        return styleElement.makeExpression(attributeInfo.getValue(), attributeInfo);
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        Expression[] expressionArr;
        Expression[] expressionArr2;
        Expression expression = this.f102004u;
        if (expression instanceof Literal) {
            try {
                if (((Literal) expression).getGroundedValue().effectiveBooleanValue()) {
                    return compileSequenceConstructor(compilation, componentDeclaration, true);
                }
                return null;
            } catch (XPathException unused) {
            }
        }
        Expression compileSequenceConstructor = this.compileSequenceConstructor(compilation, componentDeclaration, true);
        if (compileSequenceConstructor == null) {
            return null;
        }
        if (this.f102006w == null) {
            expressionArr2 = new Expression[]{this.f102004u};
            expressionArr = new Expression[]{compileSequenceConstructor};
        } else {
            Expression[] expressionArr3 = {this.f102004u, Literal.makeLiteral(BooleanValue.TRUE)};
            expressionArr = new Expression[]{compileSequenceConstructor, this.f102006w};
            expressionArr2 = expressionArr3;
        }
        Choose choose = new Choose(expressionArr2, expressionArr);
        choose.setInstruction(true);
        return choose;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compileSequenceConstructor(Compilation compilation, ComponentDeclaration componentDeclaration, boolean z) throws XPathException {
        Expression expression = this.f102005v;
        return expression == null ? super.compileSequenceConstructor(compilation, componentDeclaration, z) : expression;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean markTailCalls() {
        StyleElement m63951B = m63951B();
        return m63951B != null && m63951B.markTailCalls();
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0068 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004b A[SYNTHETIC] */
    @Override // net.p110sf.saxon.style.StyleElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void prepareAttributes() {
        /*
            r9 = this;
            net.sf.saxon.om.AttributeMap r0 = r9.attributes()
            java.util.Iterator r0 = r0.iterator()
        L8:
            boolean r1 = r0.hasNext()
            java.lang.String r2 = "test"
            if (r1 == 0) goto L76
            java.lang.Object r1 = r0.next()
            net.sf.saxon.om.AttributeInfo r1 = (net.p110sf.saxon.om.AttributeInfo) r1
            net.sf.saxon.om.NodeName r3 = r1.getNodeName()
            java.lang.String r4 = r3.getDisplayName()
            r4.hashCode()
            int r5 = r4.hashCode()
            java.lang.String r6 = "then"
            java.lang.String r7 = "else"
            r8 = -1
            switch(r5) {
                case 3116345: goto L40;
                case 3556498: goto L37;
                case 3558941: goto L2e;
                default: goto L2d;
            }
        L2d:
            goto L48
        L2e:
            boolean r2 = r4.equals(r6)
            if (r2 != 0) goto L35
            goto L48
        L35:
            r8 = 2
            goto L48
        L37:
            boolean r2 = r4.equals(r2)
            if (r2 != 0) goto L3e
            goto L48
        L3e:
            r8 = 1
            goto L48
        L40:
            boolean r2 = r4.equals(r7)
            if (r2 != 0) goto L47
            goto L48
        L47:
            r8 = 0
        L48:
            switch(r8) {
                case 0: goto L68;
                case 1: goto L5d;
                case 2: goto L4f;
                default: goto L4b;
            }
        L4b:
            r9.checkUnknownAttribute(r3)
            goto L8
        L4f:
            r9.requireXslt40(r6)
            java.lang.String r2 = r1.getValue()
            net.sf.saxon.expr.Expression r1 = r9.makeExpression(r2, r1)
            r9.f102005v = r1
            goto L8
        L5d:
            java.lang.String r2 = r1.getValue()
            net.sf.saxon.expr.Expression r1 = r9.makeExpression(r2, r1)
            r9.f102004u = r1
            goto L8
        L68:
            r9.requireXslt40(r7)
            java.lang.String r2 = r1.getValue()
            net.sf.saxon.expr.Expression r1 = r9.makeExpression(r2, r1)
            r9.f102006w = r1
            goto L8
        L76:
            net.sf.saxon.expr.Expression r0 = r9.f102004u
            if (r0 != 0) goto L7d
            r9.reportAbsence(r2)
        L7d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.XSLIf.prepareAttributes():void");
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        this.f102004u = typeCheck(Constants.ATTRNAME_TEST, this.f102004u);
        if (this.f102005v == null || !hasChildNodes()) {
            return;
        }
        compileError("xsl:if element must be empty if @then is present", "XTSE0010");
    }
}
