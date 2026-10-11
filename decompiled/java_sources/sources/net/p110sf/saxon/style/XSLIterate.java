package net.p110sf.saxon.style;

import java.util.ArrayList;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.instruct.IterateInstr;
import net.p110sf.saxon.expr.instruct.LocalParam;
import net.p110sf.saxon.expr.instruct.LocalParamBlock;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.NodeListIterator;

/* loaded from: classes11.dex */
public class XSLIterate extends StyleElement {

    /* renamed from: u */
    public Expression f102009u = null;

    /* renamed from: v */
    public boolean f102010v;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Expression expression = null;
        for (NodeInfo nodeInfo : children()) {
            if (nodeInfo instanceof XSLLocalParam) {
                arrayList2.add((XSLLocalParam) nodeInfo);
            } else if (nodeInfo instanceof XSLOnCompletion) {
                expression = ((XSLOnCompletion) nodeInfo).compile(compilation, componentDeclaration);
            } else {
                arrayList.add(nodeInfo);
            }
        }
        LocalParam[] localParamArr = new LocalParam[arrayList2.size()];
        for (int i = 0; i < arrayList2.size(); i++) {
            LocalParam localParam = (LocalParam) ((XSLLocalParam) arrayList2.get(i)).compile(compilation, componentDeclaration);
            localParamArr[i] = localParam;
            if (localParam.isImplicitlyRequiredParam()) {
                compileError("The parameter must be given an initial value because () is not valid, given the declared type", "XTSE3520");
            }
        }
        LocalParamBlock localParamBlock = new LocalParamBlock(localParamArr);
        Expression compileSequenceConstructor = compileSequenceConstructor(compilation, componentDeclaration, new NodeListIterator(arrayList), false);
        if (compileSequenceConstructor == null) {
            return Literal.makeEmptySequence();
        }
        try {
            return new IterateInstr(this.f102009u, localParamBlock, compileSequenceConstructor.simplify(), expression);
        } catch (XPathException e) {
            compileError(e);
            return null;
        }
    }

    public boolean isCompilable() {
        return this.f102010v;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isPermittedChild(StyleElement styleElement) {
        return (styleElement instanceof XSLLocalParam) || (styleElement instanceof XSLOnCompletion);
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainParam() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0053 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0061 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004f A[SYNTHETIC] */
    @Override // net.p110sf.saxon.style.StyleElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void prepareAttributes() {
        /*
            r10 = this;
            net.sf.saxon.om.AttributeMap r0 = r10.attributes()
            java.util.Iterator r0 = r0.iterator()
        L8:
            boolean r1 = r0.hasNext()
            java.lang.String r2 = "select"
            if (r1 == 0) goto L76
            java.lang.Object r1 = r0.next()
            net.sf.saxon.om.AttributeInfo r1 = (net.p110sf.saxon.om.AttributeInfo) r1
            net.sf.saxon.om.NodeName r3 = r1.getNodeName()
            java.lang.String r4 = r1.getValue()
            java.lang.String r5 = r3.getDisplayName()
            r5.hashCode()
            int r6 = r5.hashCode()
            java.lang.String r7 = "array"
            java.lang.String r8 = "map"
            r9 = -1
            switch(r6) {
                case -906021636: goto L44;
                case 107868: goto L3b;
                case 93090393: goto L32;
                default: goto L31;
            }
        L31:
            goto L4c
        L32:
            boolean r2 = r5.equals(r7)
            if (r2 != 0) goto L39
            goto L4c
        L39:
            r9 = 2
            goto L4c
        L3b:
            boolean r2 = r5.equals(r8)
            if (r2 != 0) goto L42
            goto L4c
        L42:
            r9 = 1
            goto L4c
        L44:
            boolean r2 = r5.equals(r2)
            if (r2 != 0) goto L4b
            goto L4c
        L4b:
            r9 = 0
        L4c:
            switch(r9) {
                case 0: goto L6f;
                case 1: goto L61;
                case 2: goto L53;
                default: goto L4f;
            }
        L4f:
            r10.checkUnknownAttribute(r3)
            goto L8
        L53:
            r10.requireXslt40(r7)
            net.sf.saxon.expr.Expression r1 = r10.makeExpression(r4, r1)
            net.sf.saxon.expr.Expression r1 = r10.arrayToSequence(r1)
            r10.f102009u = r1
            goto L8
        L61:
            r10.requireXslt40(r8)
            net.sf.saxon.expr.Expression r1 = r10.makeExpression(r4, r1)
            net.sf.saxon.expr.Expression r1 = r10.mapToSequence(r1)
            r10.f102009u = r1
            goto L8
        L6f:
            net.sf.saxon.expr.Expression r1 = r10.makeExpression(r4, r1)
            r10.f102009u = r1
            goto L8
        L76:
            net.sf.saxon.expr.Expression r0 = r10.f102009u
            if (r0 != 0) goto L91
            net.sf.saxon.expr.Literal r0 = net.p110sf.saxon.expr.Literal.makeEmptySequence()
            r10.f102009u = r0
            int r0 = r10.m63950A()
            r1 = 40
            if (r0 < r1) goto L8e
            java.lang.String r0 = "One of the attributes select|array|map must be present"
            r10.compileError(r0)
            goto L91
        L8e:
            r10.reportAbsence(r2)
        L91:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.XSLIterate.prepareAttributes():void");
    }

    public void setCompilable(boolean z) {
        this.f102010v = z;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        this.f102009u = typeCheck("select", this.f102009u);
        if (hasChildNodes()) {
            return;
        }
        compileWarning("An empty xsl:iterate instruction has no effect", SaxonErrorCode.SXWN9009);
    }
}
