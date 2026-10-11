package net.p110sf.saxon.style;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.instruct.ValueOf;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public final class XSLValueOf extends XSLLeafNodeConstructor {

    /* renamed from: u */
    public boolean f102138u = false;

    /* renamed from: v */
    public Expression f102139v;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        Configuration configuration = getConfiguration();
        configuration.getTypeHierarchy();
        if (this.f102139v == null && this.select != null && m63973Y()) {
            this.select = configuration.getTypeChecker(true).processValueOf(this.select, configuration);
        } else if (this.f102139v == null) {
            if (this.select == null) {
                this.f102139v = new StringLiteral(StringValue.EMPTY_STRING);
            } else {
                this.f102139v = new StringLiteral(StringValue.SINGLE_SPACE);
            }
        }
        ValueOf valueOf = new ValueOf(this.select, this.f102138u, false);
        valueOf.setRetainedStaticContext(makeRetainedStaticContext());
        compileContent(compilation, componentDeclaration, valueOf, this.f102139v);
        return valueOf;
    }

    @Override // net.p110sf.saxon.style.XSLLeafNodeConstructor
    public String getErrorCodeForSelectPlusContent() {
        return "XTSE0870";
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0054 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0062 A[SYNTHETIC] */
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
            java.lang.String r3 = "disable-output-escaping"
            if (r2 == 0) goto L67
            java.lang.Object r2 = r0.next()
            net.sf.saxon.om.AttributeInfo r2 = (net.p110sf.saxon.om.AttributeInfo) r2
            net.sf.saxon.om.NodeName r4 = r2.getNodeName()
            java.lang.String r5 = r4.getDisplayName()
            java.lang.String r6 = r2.getValue()
            r5.hashCode()
            int r7 = r5.hashCode()
            r8 = -1
            switch(r7) {
                case -1797664923: goto L45;
                case -906021636: goto L3a;
                case 1732829925: goto L2f;
                default: goto L2e;
            }
        L2e:
            goto L4d
        L2f:
            java.lang.String r3 = "separator"
            boolean r3 = r5.equals(r3)
            if (r3 != 0) goto L38
            goto L4d
        L38:
            r8 = 2
            goto L4d
        L3a:
            java.lang.String r3 = "select"
            boolean r3 = r5.equals(r3)
            if (r3 != 0) goto L43
            goto L4d
        L43:
            r8 = 1
            goto L4d
        L45:
            boolean r3 = r5.equals(r3)
            if (r3 != 0) goto L4c
            goto L4d
        L4c:
            r8 = 0
        L4d:
            switch(r8) {
                case 0: goto L62;
                case 1: goto L5b;
                case 2: goto L54;
                default: goto L50;
            }
        L50:
            r9.checkUnknownAttribute(r4)
            goto L9
        L54:
            net.sf.saxon.expr.Expression r2 = r9.makeAttributeValueTemplate(r6, r2)
            r9.f102139v = r2
            goto L9
        L5b:
            net.sf.saxon.expr.Expression r2 = r9.makeExpression(r6, r2)
            r9.select = r2
            goto L9
        L62:
            java.lang.String r1 = net.p110sf.saxon.value.Whitespace.trim(r6)
            goto L9
        L67:
            if (r1 == 0) goto L6f
            boolean r0 = r9.processBooleanAttribute(r3, r1)
            r9.f102138u = r0
        L6f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.XSLValueOf.prepareAttributes():void");
    }

    @Override // net.p110sf.saxon.style.XSLLeafNodeConstructor, net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        super.validate(componentDeclaration);
        this.select = typeCheck("select", this.select);
        this.f102139v = typeCheck("separator", this.f102139v);
    }
}
