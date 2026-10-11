package net.p110sf.saxon.style;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.parser.XPathParser;
import net.p110sf.saxon.om.QNameParser;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class XSLItemType extends StyleElement {

    /* renamed from: u */
    public StructuredQName f102007u;

    /* renamed from: v */
    public boolean f102008v = false;

    /* renamed from: net.sf.saxon.style.XSLItemType$a */
    /* loaded from: classes11.dex */
    public static class C18524a extends ExpressionContext {
        public C18524a(XSLItemType xSLItemType) {
            super(xSLItemType, new StructuredQName("", "", "as"));
        }

        @Override // net.p110sf.saxon.style.ExpressionContext, net.p110sf.saxon.expr.StaticContext
        public ItemType resolveTypeAlias(StructuredQName structuredQName) {
            ItemType resolveTypeAlias = super.resolveTypeAlias(structuredQName);
            if (resolveTypeAlias != null) {
                return resolveTypeAlias;
            }
            ((XSLItemType) getStyleElement()).m64042b0();
            return AnyItemType.getInstance();
        }
    }

    /* renamed from: a0 */
    public final ItemType m64041a0(StaticContext staticContext) throws XPathException {
        try {
            XPathParser newExpressionParser = getConfiguration().newExpressionParser("XP", false, staticContext.getXPathVersion());
            newExpressionParser.setQNameParser(new QNameParser(staticContext.getNamespaceResolver()).withAcceptEQName(true).withErrorOnBadSyntax("XPST0003").withErrorOnUnresolvedPrefix("XPST0081"));
            String attributeValue = getAttributeValue("as");
            if (attributeValue == null) {
                reportAbsence("as");
                attributeValue = "item()";
            }
            SequenceType parseExtendedSequenceType = newExpressionParser.parseExtendedSequenceType(attributeValue, staticContext);
            if (parseExtendedSequenceType.getCardinality() != 16384) {
                compileError("Item type must not include an occurrence indicator");
            }
            return parseExtendedSequenceType.getPrimaryType();
        } catch (XPathException e) {
            this.compileError(e);
            return AnyItemType.getInstance();
        }
    }

    /* renamed from: b0 */
    public final void m64042b0() {
        this.f102008v = false;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        return null;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public StructuredQName getObjectName() {
        if (this.f102007u == null) {
            prepareAttributes();
        }
        return this.f102007u;
    }

    public void indexTypeAlias(ComponentDeclaration componentDeclaration, PrincipalStylesheetModule principalStylesheetModule) throws XPathException {
        prepareAttributes();
        principalStylesheetModule.getTypeAliasManager().processDeclaration(componentDeclaration);
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isDeclaration() {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x005a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0071 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0056 A[SYNTHETIC] */
    @Override // net.p110sf.saxon.style.StyleElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void prepareAttributes() {
        /*
            r11 = this;
            net.sf.saxon.om.StructuredQName r0 = r11.f102007u
            if (r0 == 0) goto L5
            return
        L5:
            net.sf.saxon.om.AttributeMap r0 = r11.attributes()
            java.util.Iterator r0 = r0.iterator()
            r1 = 0
            r2 = r1
        Lf:
            boolean r3 = r0.hasNext()
            java.lang.String r4 = "as"
            java.lang.String r5 = "name"
            if (r3 == 0) goto L73
            java.lang.Object r3 = r0.next()
            net.sf.saxon.om.AttributeInfo r3 = (net.p110sf.saxon.om.AttributeInfo) r3
            net.sf.saxon.om.NodeName r6 = r3.getNodeName()
            java.lang.String r3 = r3.getValue()
            java.lang.String r7 = r6.getDisplayName()
            r7.hashCode()
            int r8 = r7.hashCode()
            java.lang.String r9 = "visibility"
            r10 = -1
            switch(r8) {
                case 3122: goto L4b;
                case 3373707: goto L42;
                case 1941332754: goto L39;
                default: goto L38;
            }
        L38:
            goto L53
        L39:
            boolean r4 = r7.equals(r9)
            if (r4 != 0) goto L40
            goto L53
        L40:
            r10 = 2
            goto L53
        L42:
            boolean r4 = r7.equals(r5)
            if (r4 != 0) goto L49
            goto L53
        L49:
            r10 = 1
            goto L53
        L4b:
            boolean r4 = r7.equals(r4)
            if (r4 != 0) goto L52
            goto L53
        L52:
            r10 = 0
        L53:
            switch(r10) {
                case 0: goto L71;
                case 1: goto L6a;
                case 2: goto L5a;
                default: goto L56;
            }
        L56:
            r11.checkUnknownAttribute(r6)
            goto Lf
        L5a:
            java.lang.String r4 = "private"
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto Lf
            java.lang.String r3 = "Not implemented"
            java.lang.String r4 = "XTSE0010"
            r11.compileErrorInAttribute(r3, r4, r9)
            goto Lf
        L6a:
            net.sf.saxon.om.StructuredQName r3 = r11.makeQName(r3, r1, r5)
            r11.f102007u = r3
            goto Lf
        L71:
            r2 = r3
            goto Lf
        L73:
            net.sf.saxon.om.StructuredQName r0 = r11.f102007u
            if (r0 != 0) goto L7a
            r11.reportAbsence(r5)
        L7a:
            if (r2 != 0) goto L7f
            r11.reportAbsence(r4)
        L7f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.XSLItemType.prepareAttributes():void");
    }

    public ItemType tryToResolve() throws XPathException {
        C18524a c18524a = new C18524a(this);
        this.f102008v = true;
        ItemType m64041a0 = m64041a0(c18524a);
        if (this.f102008v) {
            return m64041a0;
        }
        return null;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        checkEmpty();
        checkTopLevel("XTSE0010", false);
        getConfiguration().checkLicensedFeature(8, "saxon:item-type", getPackageData().getLocalLicenseId());
    }
}
