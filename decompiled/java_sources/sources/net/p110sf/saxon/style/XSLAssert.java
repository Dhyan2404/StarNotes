package net.p110sf.saxon.style;

import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.instruct.Block;
import net.p110sf.saxon.expr.instruct.Choose;
import net.p110sf.saxon.expr.instruct.MessageInstr;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public final class XSLAssert extends StyleElement {

    /* renamed from: u */
    public Expression f101889u = null;

    /* renamed from: v */
    public Expression f101890v = null;

    /* renamed from: w */
    public Expression f101891w = null;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        if (!compilation.getCompilerInfo().isAssertionsEnabled()) {
            return Literal.makeEmptySequence();
        }
        Expression compileSequenceConstructor = compileSequenceConstructor(compilation, componentDeclaration, true);
        if (compileSequenceConstructor != null) {
            Expression expression = this.f101890v;
            if (expression == null) {
                this.f101890v = compileSequenceConstructor;
            } else {
                Expression makeBlock = Block.makeBlock(expression, compileSequenceConstructor);
                this.f101890v = makeBlock;
                makeBlock.setLocation(allocateLocation());
            }
        }
        if (this.f101890v == null) {
            this.f101890v = new StringLiteral("xsl:message (no content)");
        }
        Expression expression2 = this.f101891w;
        if (expression2 instanceof StringLiteral) {
            String stringify = ((StringLiteral) expression2).stringify();
            if (stringify.contains(":") && !stringify.startsWith("Q{")) {
                this.f101891w = new StringLiteral(makeQName(stringify, null, "error-code").getEQName());
            }
        }
        MessageInstr messageInstr = new MessageInstr(this.f101890v, new StringLiteral("yes"), this.f101891w);
        messageInstr.setIsAssert(true);
        if (!(this.f101891w instanceof StringLiteral)) {
            messageInstr.setRetainedStaticContext(makeRetainedStaticContext());
        }
        return new Choose(new Expression[]{SystemFunction.makeCall(Keywords.FUNC_NOT_STRING, this.f101889u.getRetainedStaticContext(), this.f101889u)}, new Expression[]{messageInstr});
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0054 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0063 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0050 A[SYNTHETIC] */
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
            r1 = 0
        L9:
            boolean r2 = r0.hasNext()
            java.lang.String r3 = "test"
            if (r2 == 0) goto L6a
            java.lang.Object r2 = r0.next()
            net.sf.saxon.om.AttributeInfo r2 = (net.p110sf.saxon.om.AttributeInfo) r2
            net.sf.saxon.om.NodeName r4 = r2.getNodeName()
            java.lang.String r5 = r4.getDisplayName()
            java.lang.String r6 = r2.getValue()
            r5.hashCode()
            int r7 = r5.hashCode()
            r8 = -1
            switch(r7) {
                case -906021636: goto L43;
                case 3556498: goto L3a;
                case 1589510802: goto L2f;
                default: goto L2e;
            }
        L2e:
            goto L4d
        L2f:
            java.lang.String r3 = "error-code"
            boolean r3 = r5.equals(r3)
            if (r3 != 0) goto L38
            goto L4d
        L38:
            r8 = 2
            goto L4d
        L3a:
            boolean r3 = r5.equals(r3)
            if (r3 != 0) goto L41
            goto L4d
        L41:
            r8 = 1
            goto L4d
        L43:
            java.lang.String r3 = "select"
            boolean r3 = r5.equals(r3)
            if (r3 != 0) goto L4c
            goto L4d
        L4c:
            r8 = 0
        L4d:
            switch(r8) {
                case 0: goto L63;
                case 1: goto L5b;
                case 2: goto L54;
                default: goto L50;
            }
        L50:
            r9.checkUnknownAttribute(r4)
            goto L9
        L54:
            net.sf.saxon.expr.Expression r2 = r9.makeAttributeValueTemplate(r6, r2)
            r9.f101891w = r2
            goto L9
        L5b:
            net.sf.saxon.expr.Expression r1 = r9.makeExpression(r6, r2)
            r9.f101889u = r1
            r1 = r6
            goto L9
        L63:
            net.sf.saxon.expr.Expression r2 = r9.makeExpression(r6, r2)
            r9.f101890v = r2
            goto L9
        L6a:
            if (r1 != 0) goto L6f
            r9.reportAbsence(r3)
        L6f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.XSLAssert.prepareAttributes():void");
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        this.f101890v = typeCheck("select", this.f101890v);
        this.f101889u = typeCheck(Constants.ATTRNAME_TEST, this.f101889u);
        Expression expression = this.f101891w;
        if (expression == null) {
            this.f101891w = new StringLiteral("Q{http://www.w3.org/2005/xqt-errors}XTMM9001");
        } else {
            this.f101891w = typeCheck("error-code", expression);
        }
    }
}
