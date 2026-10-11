package net.p110sf.saxon.style;

import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.instruct.Block;
import net.p110sf.saxon.expr.instruct.ComputedElement;
import net.p110sf.saxon.expr.instruct.ElementCreator;
import net.p110sf.saxon.expr.instruct.FixedElement;
import net.p110sf.saxon.expr.instruct.UseAttributeSet;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.QNameException;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class XSLElement extends StyleElement {

    /* renamed from: u */
    public Expression f101953u;

    /* renamed from: w */
    public String f101955w;

    /* renamed from: y */
    public int f101957y;

    /* renamed from: v */
    public Expression f101954v = null;

    /* renamed from: x */
    public StructuredQName[] f101956x = null;

    /* renamed from: z */
    public SchemaType f101958z = null;

    /* renamed from: J */
    public boolean f101952J = true;

    /* renamed from: Z */
    public final Expression m64036Z(Compilation compilation, ComponentDeclaration componentDeclaration, ElementCreator elementCreator) throws XPathException {
        Expression compileSequenceConstructor = compileSequenceConstructor(compilation, componentDeclaration, true);
        StructuredQName[] structuredQNameArr = this.f101956x;
        if (structuredQNameArr != null) {
            Expression makeUseAttributeSets = UseAttributeSet.makeUseAttributeSets(structuredQNameArr, this);
            if (compileSequenceConstructor == null) {
                compileSequenceConstructor = makeUseAttributeSets;
            } else {
                compileSequenceConstructor = Block.makeBlock(makeUseAttributeSets, compileSequenceConstructor);
                compileSequenceConstructor.setLocation(allocateLocation());
            }
        }
        if (compileSequenceConstructor == null) {
            compileSequenceConstructor = Literal.makeEmptySequence();
        }
        elementCreator.setContentExpression(compileSequenceConstructor);
        return elementCreator;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        Expression expression = this.f101953u;
        if (expression instanceof StringLiteral) {
            String stringify = ((StringLiteral) expression).stringify();
            String str = null;
            try {
                String[] qNameParts = NameChecker.getQNameParts(stringify);
                Expression expression2 = this.f101954v;
                if (expression2 instanceof StringLiteral) {
                    str = ((StringLiteral) expression2).stringify();
                    if (str.isEmpty()) {
                        qNameParts[0] = "";
                    }
                } else if (expression2 == null && (str = getURIForPrefix(qNameParts[0], true)) == null) {
                    m63972X(qNameParts[0], "XTDE0830", "name");
                }
                if (str != null) {
                    FingerprintedQName fingerprintedQName = new FingerprintedQName(qNameParts[0], str, qNameParts[1]);
                    fingerprintedQName.obtainFingerprint(getNamePool());
                    FixedElement fixedElement = new FixedElement(fingerprintedQName, NamespaceMap.emptyMap(), this.f101952J, true, this.f101958z, this.f101957y);
                    fixedElement.setLocation(allocateLocation());
                    return m64036Z(compilation, componentDeclaration, fixedElement);
                }
            } catch (QNameException unused) {
                compileErrorInAttribute("Invalid element name: " + stringify, "XTDE0820", "name");
                return null;
            }
        }
        ComputedElement computedElement = new ComputedElement(this.f101953u, this.f101954v, this.f101958z, this.f101957y, this.f101952J, false);
        computedElement.setLocation(allocateLocation());
        return m64036Z(compilation, componentDeclaration, computedElement);
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0079 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0081 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0089 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x009b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0075 A[SYNTHETIC] */
    @Override // net.p110sf.saxon.style.StyleElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void prepareAttributes() {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.XSLElement.prepareAttributes():void");
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        String str = this.f101955w;
        if (str != null) {
            this.f101956x = m63953D(str);
        }
        this.f101953u = typeCheck("name", this.f101953u);
        this.f101954v = typeCheck(Constants.ATTRNAME_NAMESPACE, this.f101954v);
    }
}
