package net.p110sf.saxon.style;

import com.onyx.android.sdk.data.common.cloud.Constant;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Iterator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public final class XSLForEachGroup extends StyleElement {

    /* renamed from: J */
    public Expression f101974J;

    /* renamed from: u */
    public Expression f101976u = null;

    /* renamed from: v */
    public Expression f101977v = null;

    /* renamed from: w */
    public Expression f101978w = null;

    /* renamed from: x */
    public Expression f101979x = null;

    /* renamed from: y */
    public Pattern f101980y = null;

    /* renamed from: z */
    public Pattern f101981z = null;

    /* renamed from: O */
    public boolean f101975O = false;

    /* JADX WARN: Removed duplicated region for block: B:13:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0068 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // net.p110sf.saxon.style.StyleElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.expr.Expression compile(net.p110sf.saxon.style.Compilation r14, net.p110sf.saxon.style.ComponentDeclaration r15) throws net.p110sf.saxon.trans.XPathException {
        /*
            r13 = this;
            net.sf.saxon.expr.Expression r0 = r13.f101974J
            boolean r1 = r0 instanceof net.p110sf.saxon.expr.StringLiteral
            r2 = 0
            if (r1 == 0) goto L36
            net.sf.saxon.expr.StringLiteral r0 = (net.p110sf.saxon.expr.StringLiteral) r0
            java.lang.String r0 = r0.stringify()
            java.lang.String r1 = r13.getBaseURI()
            net.sf.saxon.lib.StringCollator r0 = r13.m63984w(r0, r1)
            if (r0 != 0) goto L34
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r3 = "The collation name '"
            r1.append(r3)
            net.sf.saxon.expr.Expression r3 = r13.f101974J
            r1.append(r3)
            java.lang.String r3 = "' has not been defined"
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            java.lang.String r3 = "XTDE1110"
            r13.compileError(r1, r3)
        L34:
            r9 = r0
            goto L37
        L36:
            r9 = r2
        L37:
            net.sf.saxon.expr.Expression r0 = r13.f101977v
            r1 = 1
            r3 = 0
            if (r0 == 0) goto L40
            r8 = r0
        L3e:
            r7 = r3
            goto L5d
        L40:
            net.sf.saxon.expr.Expression r0 = r13.f101978w
            if (r0 == 0) goto L47
            r8 = r0
            r7 = r1
            goto L5d
        L47:
            net.sf.saxon.pattern.Pattern r0 = r13.f101980y
            if (r0 == 0) goto L4f
            r4 = 2
        L4c:
            r8 = r0
            r7 = r4
            goto L5d
        L4f:
            net.sf.saxon.pattern.Pattern r0 = r13.f101981z
            if (r0 == 0) goto L55
            r4 = 3
            goto L4c
        L55:
            net.sf.saxon.expr.Expression r0 = r13.f101979x
            if (r0 == 0) goto L5b
            r4 = 4
            goto L4c
        L5b:
            r8 = r2
            goto L3e
        L5d:
            net.sf.saxon.expr.Expression r0 = r13.compileSequenceConstructor(r14, r15, r1)
            if (r0 != 0) goto L68
            net.sf.saxon.expr.Literal r13 = net.p110sf.saxon.expr.Literal.makeEmptySequence()
            return r13
        L68:
            net.sf.saxon.expr.instruct.ForEachGroup r12 = new net.sf.saxon.expr.instruct.ForEachGroup     // Catch: net.p110sf.saxon.trans.XPathException -> L91
            net.sf.saxon.expr.Expression r5 = r13.f101976u     // Catch: net.p110sf.saxon.trans.XPathException -> L91
            net.sf.saxon.expr.Expression r6 = r0.simplify()     // Catch: net.p110sf.saxon.trans.XPathException -> L91
            net.sf.saxon.expr.Expression r10 = r13.f101974J     // Catch: net.p110sf.saxon.trans.XPathException -> L91
            net.sf.saxon.expr.sort.SortKeyDefinitionList r11 = r13.m63961M(r14, r15)     // Catch: net.p110sf.saxon.trans.XPathException -> L91
            r4 = r12
            r4.<init>(r5, r6, r7, r8, r9, r10, r11)     // Catch: net.p110sf.saxon.trans.XPathException -> L91
            net.sf.saxon.tree.linked.NodeImpl r14 = r13.getParent()     // Catch: net.p110sf.saxon.trans.XPathException -> L91
            int r14 = r14.getFingerprint()     // Catch: net.p110sf.saxon.trans.XPathException -> L91
            r15 = 159(0x9f, float:2.23E-43)
            if (r14 != r15) goto L87
            goto L88
        L87:
            r1 = r3
        L88:
            r12.setIsInFork(r1)     // Catch: net.p110sf.saxon.trans.XPathException -> L91
            boolean r14 = r13.f101975O     // Catch: net.p110sf.saxon.trans.XPathException -> L91
            r12.setComposite(r14)     // Catch: net.p110sf.saxon.trans.XPathException -> L91
            return r12
        L91:
            r14 = move-exception
            r13.compileError(r14)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.XSLForEachGroup.compile(net.sf.saxon.style.Compilation, net.sf.saxon.style.ComponentDeclaration):net.sf.saxon.expr.Expression");
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isPermittedChild(StyleElement styleElement) {
        return styleElement instanceof XSLSort;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:37:0x00b0. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0045. Please report as an issue. */
    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        char c;
        Iterator<AttributeInfo> it2 = attributes().iterator();
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        while (true) {
            if (!it2.hasNext()) {
                String str7 = str5;
                String str8 = str6;
                if (this.f101976u == null) {
                    this.f101976u = Literal.makeEmptySequence();
                    if (m63950A() >= 40) {
                        compileError("One of the attributes select|array|map must be present");
                    } else {
                        reportAbsence("select");
                    }
                }
                if ((str == null ? 0 : 1) + (str2 == null ? 0 : 1) + (str3 == null ? 0 : 1) + (str4 == null ? 0 : 1) + (str7 == null ? 0 : 1) != 1) {
                    compileError("Exactly one of the attributes group-by, group-adjacent, group-starting-with, and group-ending-with must be specified", "XTSE1080");
                }
                if (str3 != null) {
                    this.f101980y = m63960L(str3, "group-starting-with");
                }
                if (str4 != null) {
                    this.f101981z = m63960L(str4, "group-ending-with");
                }
                if (str8 == null) {
                    String defaultCollationName = getDefaultCollationName();
                    if (defaultCollationName != null) {
                        this.f101974J = new StringLiteral(defaultCollationName);
                    }
                } else if (this.f101977v == null && this.f101978w == null) {
                    compileError("A collation may be specified only if group-by or group-adjacent is specified", "XTSE1090");
                } else {
                    Expression expression = this.f101974J;
                    if (expression instanceof StringLiteral) {
                        try {
                            URI uri = new URI(((StringLiteral) expression).stringify());
                            if (!uri.isAbsolute()) {
                                this.f101974J = new StringLiteral(new URI(getBaseURI()).resolve(uri).toString());
                            }
                        } catch (URISyntaxException unused) {
                            compileError("Collation name '" + this.f101974J + "' is not a valid URI", "XTDE1110");
                            this.f101974J = new StringLiteral(NamespaceConstant.CODEPOINT_COLLATION_URI);
                        }
                    }
                }
                if (this.f101975O) {
                    if (this.f101980y == null && this.f101981z == null) {
                        return;
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("The composite attribute cannot be used with ");
                    sb.append(this.f101980y == null ? "grouping-ending-with" : "group-starting-with");
                    compileError(sb.toString(), "XTSE1090");
                    return;
                }
                return;
            }
            AttributeInfo next = it2.next();
            NodeName nodeName = next.getNodeName();
            String displayName = nodeName.getDisplayName();
            String value = next.getValue();
            displayName.hashCode();
            Iterator<AttributeInfo> it3 = it2;
            String str9 = str6;
            String str10 = str5;
            char c2 = 65535;
            switch (displayName.hashCode()) {
                case -1399754105:
                    if (displayName.equals("composite")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -906021636:
                    if (displayName.equals("select")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 107868:
                    if (displayName.equals(Constant.MAP_TAG)) {
                        c = 2;
                        c2 = c;
                        break;
                    }
                    break;
                case 93090393:
                    if (displayName.equals("array")) {
                        c = 3;
                        c2 = c;
                        break;
                    }
                    break;
                case 506313317:
                    if (displayName.equals("group-by")) {
                        c = 4;
                        c2 = c;
                        break;
                    }
                    break;
                case 703771856:
                    if (displayName.equals("group-adjacent")) {
                        c = 5;
                        c2 = c;
                        break;
                    }
                    break;
                case 1257388872:
                    if (displayName.equals("break-when")) {
                        c = 6;
                        c2 = c;
                        break;
                    }
                    break;
                case 1783084901:
                    if (displayName.equals("group-starting-with")) {
                        c = 7;
                        c2 = c;
                        break;
                    }
                    break;
                case 1880293257:
                    if (displayName.equals("collation")) {
                        c = '\b';
                        c2 = c;
                        break;
                    }
                    break;
                case 1956419422:
                    if (displayName.equals("group-ending-with")) {
                        c = '\t';
                        c2 = c;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    this.f101975O = processBooleanAttribute("composite", value);
                    str6 = str9;
                    str5 = str10;
                    break;
                case 1:
                    this.f101976u = makeExpression(value, next);
                    str6 = str9;
                    str5 = str10;
                    break;
                case 2:
                    requireXslt40(Constant.MAP_TAG);
                    this.f101976u = mapToSequence(makeExpression(value, next));
                    str6 = str9;
                    str5 = str10;
                    break;
                case 3:
                    requireXslt40("array");
                    this.f101976u = arrayToSequence(makeExpression(value, next));
                    str6 = str9;
                    str5 = str10;
                    break;
                case 4:
                    this.f101977v = makeExpression(value, next);
                    str = value;
                    str6 = str9;
                    str5 = str10;
                    break;
                case 5:
                    this.f101978w = makeExpression(value, next);
                    str2 = value;
                    str6 = str9;
                    str5 = str10;
                    break;
                case 6:
                    requireXslt40("break-when");
                    String str11 = "function($group as item()*, $next as item()) as Q{http://www.w3.org/2001/XMLSchema}boolean { Q{http://www.w3.org/2005/xpath-functions}boolean(" + value + ") }";
                    this.f101979x = makeExpression(str11, next);
                    str5 = str11;
                    str6 = str9;
                    break;
                case 7:
                    str3 = value;
                    str6 = str9;
                    str5 = str10;
                    break;
                case '\b':
                    String trim = Whitespace.trim(value);
                    this.f101974J = makeAttributeValueTemplate(trim, next);
                    str6 = trim;
                    str5 = str10;
                    break;
                case '\t':
                    str4 = value;
                    str6 = str9;
                    str5 = str10;
                    break;
                default:
                    checkUnknownAttribute(nodeName);
                    str6 = str9;
                    str5 = str10;
                    break;
            }
            it2 = it3;
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        m63977p(false);
        TypeChecker typeChecker = getConfiguration().getTypeChecker(false);
        this.f101976u = typeCheck("select", this.f101976u);
        ExpressionVisitor makeExpressionVisitor = makeExpressionVisitor();
        Expression expression = this.f101977v;
        if (expression != null) {
            this.f101977v = typeCheck("group-by", expression);
            try {
                this.f101977v = typeChecker.staticTypeCheck(this.f101977v, SequenceType.ATOMIC_SEQUENCE, new RoleDiagnostic(4, "xsl:for-each-group/group-by", 0), makeExpressionVisitor);
            } catch (XPathException e) {
                compileError(e);
            }
        } else {
            Expression expression2 = this.f101978w;
            if (expression2 != null) {
                this.f101978w = typeCheck("group-adjacent", expression2);
                try {
                    RoleDiagnostic roleDiagnostic = new RoleDiagnostic(4, "xsl:for-each-group/group-adjacent", 0);
                    roleDiagnostic.setErrorCode("XTTE1100");
                    this.f101978w = typeChecker.staticTypeCheck(this.f101978w, this.f101975O ? SequenceType.ATOMIC_SEQUENCE : SequenceType.SINGLE_ATOMIC, roleDiagnostic, makeExpressionVisitor);
                } catch (XPathException e2) {
                    compileError(e2);
                }
            } else {
                Expression expression3 = this.f101979x;
                if (expression3 != null) {
                    this.f101979x = typeCheck("break-when", expression3);
                    try {
                        SpecificFunctionType specificFunctionType = new SpecificFunctionType(new SequenceType[]{SequenceType.ANY_SEQUENCE, SequenceType.SINGLE_ITEM}, SequenceType.SINGLE_BOOLEAN);
                        RoleDiagnostic roleDiagnostic2 = new RoleDiagnostic(4, "xsl:for-each-group/break-when", 0);
                        roleDiagnostic2.setErrorCode("XTTE1100");
                        this.f101979x = typeChecker.staticTypeCheck(this.f101979x, SequenceType.makeSequenceType(specificFunctionType, 16384), roleDiagnostic2, makeExpressionVisitor);
                    } catch (XPathException e3) {
                        compileError(e3);
                    }
                }
            }
        }
        this.f101980y = typeCheck("group-starting-with", this.f101980y);
        Pattern typeCheck = typeCheck("group-ending-with", this.f101981z);
        this.f101981z = typeCheck;
        if ((this.f101980y != null || typeCheck != null) && makeExpressionVisitor.getStaticContext().getXPathVersion() < 30) {
            try {
                RoleDiagnostic roleDiagnostic3 = new RoleDiagnostic(4, "xsl:for-each-group/select", 0);
                roleDiagnostic3.setErrorCode("XTTE1120");
                this.f101976u = typeChecker.staticTypeCheck(this.f101976u, SequenceType.NODE_SEQUENCE, roleDiagnostic3, makeExpressionVisitor);
            } catch (XPathException e4) {
                compileError((this.f101980y != null ? "With group-starting-with attribute: " : "With group-ending-with attribute: ") + e4.getMessage(), e4.getErrorCodeQName());
            }
        }
        if (hasChildNodes()) {
            return;
        }
        compileWarning("An empty xsl:for-each-group instruction has no effect", SaxonErrorCode.SXWN9009);
    }
}
