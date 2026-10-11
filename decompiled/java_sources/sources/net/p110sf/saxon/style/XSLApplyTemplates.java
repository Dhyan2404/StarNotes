package net.p110sf.saxon.style;

import net.p110sf.saxon.expr.AxisExpression;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.ContextItemExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.ItemChecker;
import net.p110sf.saxon.expr.SimpleStepExpression;
import net.p110sf.saxon.expr.instruct.ApplyTemplates;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.sort.SortExpression;
import net.p110sf.saxon.expr.sort.SortKeyDefinitionList;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.Mode;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class XSLApplyTemplates extends StyleElement {

    /* renamed from: Q */
    public static final /* synthetic */ boolean f101879Q = false;

    /* renamed from: J */
    public Mode f101880J;

    /* renamed from: O */
    public String f101881O;

    /* renamed from: u */
    public Expression f101882u;

    /* renamed from: v */
    public Expression f101883v;

    /* renamed from: w */
    public StructuredQName f101884w;

    /* renamed from: x */
    public boolean f101885x = false;

    /* renamed from: y */
    public boolean f101886y = false;

    /* renamed from: z */
    public boolean f101887z = true;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        SortKeyDefinitionList m63961M = m63961M(compilation, componentDeclaration);
        if (m63961M != null) {
            this.f101886y = false;
        }
        Expression expression = this.f101882u;
        if (m63961M != null) {
            expression = new SortExpression(this.f101882u, m63961M);
        }
        compileSequenceConstructor(compilation, componentDeclaration, true);
        ApplyTemplates applyTemplates = new ApplyTemplates(expression, this.f101885x, this.f101886y, this.f101887z, isWithinDeclaredStreamableConstruct(), this.f101880J, compilation.getPrincipalStylesheetModule().getRuleManager());
        applyTemplates.setActualParams(getWithParamInstructions(applyTemplates, compilation, componentDeclaration, false));
        applyTemplates.setTunnelParams(getWithParamInstructions(applyTemplates, compilation, componentDeclaration, true));
        Expression expression2 = this.f101883v;
        if (expression2 != null) {
            applyTemplates.setSeparatorExpression(expression2);
        }
        return applyTemplates;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean markTailCalls() {
        this.f101886y = true;
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0038, code lost:
    
        if (r8.equals("separator") == false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0085, code lost:
    
        if (r0.equals("#current") == false) goto L28;
     */
    @Override // net.p110sf.saxon.style.StyleElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void prepareAttributes() {
        /*
            r12 = this;
            net.sf.saxon.om.AttributeMap r0 = r12.attributes()
            java.util.Iterator r0 = r0.iterator()
        L8:
            boolean r1 = r0.hasNext()
            r2 = 2
            java.lang.String r3 = "mode"
            r4 = -1
            r5 = 1
            r6 = 0
            if (r1 == 0) goto L6f
            java.lang.Object r1 = r0.next()
            net.sf.saxon.om.AttributeInfo r1 = (net.p110sf.saxon.om.AttributeInfo) r1
            net.sf.saxon.om.NodeName r7 = r1.getNodeName()
            java.lang.String r8 = r7.getDisplayName()
            java.lang.String r9 = r1.getValue()
            r8.hashCode()
            int r10 = r8.hashCode()
            java.lang.String r11 = "separator"
            switch(r10) {
                case -906021636: goto L44;
                case 3357091: goto L3b;
                case 1732829925: goto L34;
                default: goto L32;
            }
        L32:
            r2 = r4
            goto L4e
        L34:
            boolean r3 = r8.equals(r11)
            if (r3 != 0) goto L4e
            goto L32
        L3b:
            boolean r2 = r8.equals(r3)
            if (r2 != 0) goto L42
            goto L32
        L42:
            r2 = r5
            goto L4e
        L44:
            java.lang.String r2 = "select"
            boolean r2 = r8.equals(r2)
            if (r2 != 0) goto L4d
            goto L32
        L4d:
            r2 = r6
        L4e:
            switch(r2) {
                case 0: goto L66;
                case 1: goto L5f;
                case 2: goto L55;
                default: goto L51;
            }
        L51:
            r12.checkUnknownAttribute(r7)
            goto L8
        L55:
            r12.requireXslt40(r11)
            net.sf.saxon.expr.Expression r1 = r12.makeAttributeValueTemplate(r9, r1)
            r12.f101883v = r1
            goto L8
        L5f:
            java.lang.String r1 = net.p110sf.saxon.value.Whitespace.trim(r9)
            r12.f101881O = r1
            goto L8
        L66:
            net.sf.saxon.expr.Expression r1 = r12.makeExpression(r9, r1)
            r12.f101882u = r1
            r12.f101887z = r6
            goto L8
        L6f:
            java.lang.String r0 = r12.f101881O
            if (r0 == 0) goto Lb1
            r0.hashCode()
            int r1 = r0.hashCode()
            switch(r1) {
                case -1881343810: goto L93;
                case 586359485: goto L88;
                case 1995759606: goto L7f;
                default: goto L7d;
            }
        L7d:
            r2 = r4
            goto L9d
        L7f:
            java.lang.String r1 = "#current"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L9d
            goto L7d
        L88:
            java.lang.String r1 = "#unnamed"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L91
            goto L7d
        L91:
            r2 = r5
            goto L9d
        L93:
            java.lang.String r1 = "#default"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L9c
            goto L7d
        L9c:
            r2 = r6
        L9d:
            switch(r2) {
                case 0: goto Lb1;
                case 1: goto Lad;
                case 2: goto Laa;
                default: goto La0;
            }
        La0:
            java.lang.String r0 = r12.f101881O
            r1 = 0
            net.sf.saxon.om.StructuredQName r0 = r12.makeQName(r0, r1, r3)
            r12.f101884w = r0
            goto Lb1
        Laa:
            r12.f101885x = r5
            goto Lb1
        Lad:
            net.sf.saxon.om.StructuredQName r0 = net.p110sf.saxon.trans.Mode.UNNAMED_MODE_NAME
            r12.f101884w = r0
        Lb1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.XSLApplyTemplates.prepareAttributes():void");
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        if (!this.f101885x) {
            PrincipalStylesheetModule principalStylesheetModule = getPrincipalStylesheetModule();
            StructuredQName structuredQName = this.f101884w;
            if (structuredQName == null) {
                StructuredQName m63986y = m63986y();
                this.f101884w = m63986y;
                if ((m63986y == null || m63986y.equals(Mode.UNNAMED_MODE_NAME)) && principalStylesheetModule.isDeclaredModes() && !principalStylesheetModule.getRuleManager().isUnnamedModeExplicit()) {
                    compileError("The unnamed mode must be explicitly declared in an xsl:mode declaration", "XTSE3085");
                }
            } else if (structuredQName.equals(Mode.UNNAMED_MODE_NAME) && principalStylesheetModule.isDeclaredModes() && !principalStylesheetModule.getRuleManager().isUnnamedModeExplicit()) {
                compileError("The #unnamed mode must be explicitly declared in an xsl:mode declaration", "XTSE3085");
            }
            Component component = componentDeclaration.getSourceElement().getContainingPackage().getComponentIndex().get(new SymbolicName(180, this.f101884w));
            if (component != null) {
                this.f101880J = (Mode) component.getActor();
            }
            if (this.f101880J == null) {
                if (principalStylesheetModule.isDeclaredModes()) {
                    compileError("Mode name " + this.f101884w.getDisplayName() + " must be explicitly declared in an xsl:mode declaration", "XTSE3085");
                }
                this.f101880J = principalStylesheetModule.getRuleManager().obtainMode(this.f101884w, true);
            }
        } else if (iterateAxis(0, new NameTest(1, 210, getNamePool())).next() == null) {
            issueWarning("Specifying mode=\"#current\" when not inside an xsl:template serves no useful purpose", this);
        }
        for (NodeInfo nodeInfo : children()) {
            if (nodeInfo.getNodeKind() == 3) {
                if (!Whitespace.isAllWhite(nodeInfo.getUnicodeStringValue())) {
                    compileError("No character data is allowed within xsl:apply-templates", "XTSE0010");
                }
            } else if (!(nodeInfo instanceof XSLSort) && !(nodeInfo instanceof XSLWithParam)) {
                compileError("Invalid element " + Err.wrap(nodeInfo.getDisplayName(), 1) + " within xsl:apply-templates", "XTSE0010");
            }
        }
        if (this.f101882u == null) {
            ContextItemExpression contextItemExpression = new ContextItemExpression();
            RoleDiagnostic roleDiagnostic = new RoleDiagnostic(13, "", 0);
            roleDiagnostic.setErrorCode("XTTE0510");
            SimpleStepExpression simpleStepExpression = new SimpleStepExpression(new ItemChecker(contextItemExpression, AnyNodeTest.getInstance(), roleDiagnostic), new AxisExpression(3, null));
            this.f101882u = simpleStepExpression;
            simpleStepExpression.setLocation(allocateLocation());
            this.f101882u.setRetainedStaticContext(makeRetainedStaticContext());
        }
        this.f101882u = typeCheck("select", this.f101882u);
        Expression expression = this.f101883v;
        if (expression != null) {
            this.f101883v = typeCheck("separator", expression);
        }
    }
}
