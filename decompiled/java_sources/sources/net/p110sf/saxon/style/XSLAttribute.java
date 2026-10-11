package net.p110sf.saxon.style;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Iterator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.instruct.ComputedAttribute;
import net.p110sf.saxon.expr.instruct.FixedAttribute;
import net.p110sf.saxon.expr.instruct.Instruction;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.QNameException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public final class XSLAttribute extends XSLLeafNodeConstructor {

    /* renamed from: u */
    public Expression f101892u;

    /* renamed from: v */
    public Expression f101893v;

    /* renamed from: w */
    public Expression f101894w = null;

    /* renamed from: x */
    public int f101895x = 3;

    /* renamed from: y */
    public SimpleType f101896y;

    /* renamed from: Z */
    public final void m64028Z(String str) {
        compileErrorInAttribute(str, "XTDE0850", "name");
        this.f101892u = new StringLiteral("saxon-error-attribute");
    }

    @Override // net.p110sf.saxon.style.XSLLeafNodeConstructor
    public String getErrorCodeForSelectPlusContent() {
        return "XTSE0840";
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x007b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0083 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0094 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0077 A[SYNTHETIC] */
    @Override // net.p110sf.saxon.style.StyleElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void prepareAttributes() {
        /*
            Method dump skipped, instructions count: 496
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.XSLAttribute.prepareAttributes():void");
    }

    @Override // net.p110sf.saxon.style.XSLLeafNodeConstructor, net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        SimpleType simpleType = this.f101896y;
        if (simpleType != null && simpleType.isNamespaceSensitive()) {
            compileErrorInAttribute("Validation at attribute level must not specify a namespace-sensitive type (xs:QName or xs:NOTATION)", "XTTE1545", "type");
        }
        this.f101892u = typeCheck("name", this.f101892u);
        this.f101894w = typeCheck(Constants.ATTRNAME_NAMESPACE, this.f101894w);
        this.select = typeCheck("select", this.select);
        this.f101893v = typeCheck("separator", this.f101893v);
        super.validate(componentDeclaration);
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public Instruction compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        String suggestPrefixForURI;
        Expression expression = this.f101892u;
        NamespaceMap namespaceMap = null;
        if (expression instanceof StringLiteral) {
            try {
                String[] qNameParts = NameChecker.getQNameParts(Whitespace.trim(((StringLiteral) expression).stringify()));
                Expression expression2 = this.f101894w;
                String str = "";
                if (expression2 == null) {
                    if (!qNameParts[0].equals("") && (str = getURIForPrefix(qNameParts[0], false)) == null) {
                        m63972X(qNameParts[0], "XTDE0860", "name");
                        return null;
                    }
                    FingerprintedQName fingerprintedQName = new FingerprintedQName(qNameParts[0], str, qNameParts[1]);
                    fingerprintedQName.obtainFingerprint(getNamePool());
                    FixedAttribute fixedAttribute = new FixedAttribute(fingerprintedQName, this.f101895x, this.f101896y);
                    fixedAttribute.setInstruction(true);
                    fixedAttribute.setLocation(allocateLocation());
                    compileContent(compilation, componentDeclaration, fixedAttribute, this.f101893v);
                    return fixedAttribute;
                }
                if (expression2 instanceof StringLiteral) {
                    String stringify = ((StringLiteral) expression2).stringify();
                    if (stringify.equals("")) {
                        qNameParts[0] = "";
                    } else if (qNameParts[0].equals("")) {
                        Iterator<NamespaceBinding> it2 = getAllNamespaces().iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            NamespaceBinding next = it2.next();
                            if (next.getURI().equals(stringify)) {
                                qNameParts[0] = next.getPrefix();
                                break;
                            }
                        }
                        if (qNameParts[0].equals("") && (suggestPrefixForURI = getNamePool().suggestPrefixForURI(((StringLiteral) this.f101894w).stringify())) != null) {
                            qNameParts[0] = suggestPrefixForURI;
                        }
                        if (qNameParts[0].equals("")) {
                            qNameParts[0] = "ns0";
                        }
                    }
                    FingerprintedQName fingerprintedQName2 = new FingerprintedQName(qNameParts[0], stringify, qNameParts[1]);
                    fingerprintedQName2.obtainFingerprint(getNamePool());
                    FixedAttribute fixedAttribute2 = new FixedAttribute(fingerprintedQName2, this.f101895x, this.f101896y);
                    fixedAttribute2.setInstruction(true);
                    compileContent(compilation, componentDeclaration, fixedAttribute2, this.f101893v);
                    return fixedAttribute2;
                }
            } catch (QNameException unused) {
                return null;
            }
        } else if (this.f101894w == null) {
            namespaceMap = getAllNamespaces();
        }
        ComputedAttribute computedAttribute = new ComputedAttribute(this.f101892u, this.f101894w, namespaceMap, this.f101895x, this.f101896y, false);
        computedAttribute.setInstruction(true);
        computedAttribute.setLocation(allocateLocation());
        compileContent(compilation, componentDeclaration, computedAttribute, this.f101893v);
        return computedAttribute;
    }
}
