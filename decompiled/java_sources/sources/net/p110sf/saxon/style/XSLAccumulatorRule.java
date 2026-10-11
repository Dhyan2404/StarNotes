package net.p110sf.saxon.style;

import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.style.SourceBinding;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class XSLAccumulatorRule extends StyleElement {

    /* renamed from: y */
    public static final /* synthetic */ boolean f101868y = false;

    /* renamed from: u */
    public Pattern f101869u;

    /* renamed from: v */
    public boolean f101870v;

    /* renamed from: w */
    public Expression f101871w;

    /* renamed from: x */
    public boolean f101872x;

    public Pattern getMatch() {
        return this.f101869u;
    }

    public Expression getNewValueExpression(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        if (this.f101871w == null) {
            this.f101871w = compileSequenceConstructor(compilation, componentDeclaration, true);
        }
        return this.f101871w;
    }

    public Expression getSelect() {
        return this.f101871w;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public SourceBinding hasImplicitBinding(StructuredQName structuredQName) {
        if (!structuredQName.getLocalPart().equals("value") || !structuredQName.hasURI("")) {
            return null;
        }
        SourceBinding sourceBinding = new SourceBinding(this);
        sourceBinding.setVariableQName(new StructuredQName("", "", "value"));
        sourceBinding.setDeclaredType(((XSLAccumulator) getParent()).getResultType());
        sourceBinding.setProperty(SourceBinding.BindingProperty.IMPLICITLY_DECLARED, true);
        return sourceBinding;
    }

    public boolean isCapture() {
        return this.f101872x;
    }

    public boolean isPostDescent() {
        return this.f101870v;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0059, code lost:
    
        switch(r10) {
            case 0: goto L53;
            case 1: goto L52;
            case 2: goto L51;
            default: goto L55;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0060, code lost:
    
        r2 = net.p110sf.saxon.value.Whitespace.trim(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x006a, code lost:
    
        if (com.sunia.HTREnginev2.gon.f71290o0.equals(r2) == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0075, code lost:
    
        if ("end".equals(r2) == false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x007a, code lost:
    
        r11.f101870v = true;
        compileError("phase must be 'start' or 'end'", "XTSE0020");
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0077, code lost:
    
        r11.f101870v = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x006c, code lost:
    
        r11.f101870v = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0084, code lost:
    
        r1 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0086, code lost:
    
        r11.f101871w = makeExpression(r5, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x005c, code lost:
    
        checkUnknownAttribute(r4);
     */
    @Override // net.p110sf.saxon.style.StyleElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void prepareAttributes() {
        /*
            r11 = this;
            net.sf.saxon.om.AttributeMap r0 = r11.attributes()
            java.util.Iterator r0 = r0.iterator()
            r1 = 0
        L9:
            boolean r2 = r0.hasNext()
            java.lang.String r3 = "match"
            if (r2 == 0) goto Lbb
            java.lang.Object r2 = r0.next()
            net.sf.saxon.om.AttributeInfo r2 = (net.p110sf.saxon.om.AttributeInfo) r2
            net.sf.saxon.om.NodeName r4 = r2.getNodeName()
            java.lang.String r5 = r2.getValue()
            java.lang.String r6 = r4.getDisplayName()
            java.lang.String r7 = r4.getURI()
            boolean r7 = r7.isEmpty()
            if (r7 == 0) goto L8e
            r6.hashCode()
            int r7 = r6.hashCode()
            r8 = 0
            r9 = 1
            r10 = -1
            switch(r7) {
                case -906021636: goto L4f;
                case 103668165: goto L46;
                case 106629499: goto L3b;
                default: goto L3a;
            }
        L3a:
            goto L59
        L3b:
            java.lang.String r3 = "phase"
            boolean r3 = r6.equals(r3)
            if (r3 != 0) goto L44
            goto L59
        L44:
            r10 = 2
            goto L59
        L46:
            boolean r3 = r6.equals(r3)
            if (r3 != 0) goto L4d
            goto L59
        L4d:
            r10 = r9
            goto L59
        L4f:
            java.lang.String r3 = "select"
            boolean r3 = r6.equals(r3)
            if (r3 != 0) goto L58
            goto L59
        L58:
            r10 = r8
        L59:
            switch(r10) {
                case 0: goto L86;
                case 1: goto L84;
                case 2: goto L60;
                default: goto L5c;
            }
        L5c:
            r11.checkUnknownAttribute(r4)
            goto L9
        L60:
            java.lang.String r2 = net.p110sf.saxon.value.Whitespace.trim(r5)
            java.lang.String r3 = "start"
            boolean r3 = r3.equals(r2)
            if (r3 == 0) goto L6f
            r11.f101870v = r8
            goto L9
        L6f:
            java.lang.String r3 = "end"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L7a
            r11.f101870v = r9
            goto L9
        L7a:
            r11.f101870v = r9
            java.lang.String r2 = "phase must be 'start' or 'end'"
            java.lang.String r3 = "XTSE0020"
            r11.compileError(r2, r3)
            goto L9
        L84:
            r1 = r5
            goto L9
        L86:
            net.sf.saxon.expr.Expression r2 = r11.makeExpression(r5, r2)
            r11.f101871w = r2
            goto L9
        L8e:
            java.lang.String r2 = "http://saxon.sf.net/"
            boolean r2 = r4.hasURI(r2)
            if (r2 == 0) goto Lb6
            java.lang.String r2 = r4.getDisplayName()
            boolean r2 = r11.isExtensionAttributeAllowed(r2)
            if (r2 == 0) goto L9
            java.lang.String r2 = r4.getLocalPart()
            java.lang.String r3 = "capture"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L9
            java.lang.String r2 = "saxon:capture"
            boolean r2 = r11.processBooleanAttribute(r2, r5)
            r11.f101872x = r2
            goto L9
        Lb6:
            r11.checkUnknownAttribute(r4)
            goto L9
        Lbb:
            if (r1 != 0) goto Lc2
            r11.reportAbsence(r3)
            java.lang.String r1 = "non-existent-element"
        Lc2:
            net.sf.saxon.pattern.Pattern r0 = r11.m63960L(r1, r3)
            r11.f101869u = r0
            boolean r0 = r11.f101872x
            if (r0 == 0) goto Ld7
            boolean r0 = r11.f101870v
            if (r0 != 0) goto Ld7
            java.lang.String r0 = "saxon:capture has no effect on a pre-descent accumulator rule"
            java.lang.String r1 = "SXWN9000"
            r11.compileWarning(r0, r1)
        Ld7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.XSLAccumulatorRule.prepareAttributes():void");
    }

    public void setMatch(Pattern pattern) {
        this.f101869u = pattern;
    }

    public void setPostDescent(boolean z) {
        this.f101870v = z;
    }

    public void setSelect(Expression expression) {
        this.f101871w = expression;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        this.f101871w = typeCheck("select", this.f101871w);
        this.f101869u = typeCheck(Constants.ATTRNAME_MATCH, this.f101869u);
        if (this.f101871w == null || !hasChildNodes()) {
            return;
        }
        compileError("If the xsl:accumulator-rule element has a select attribute then it must have no children");
    }
}
