package net.p110sf.saxon.style;

import java.util.HashSet;
import java.util.Set;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.accum.Accumulator;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class XSLSourceDocument extends StyleElement {

    /* renamed from: u */
    public Expression f102097u = null;

    /* renamed from: v */
    public Set<Accumulator> f102098v = new HashSet();

    /* renamed from: w */
    public boolean f102099w = false;

    /* renamed from: x */
    public ParseOptions f102100x;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        Configuration configuration = getConfiguration();
        if (this.f102100x.getSpaceStrippingRule() == null) {
            this.f102100x.setSpaceStrippingRule(getPackageData().getSpaceStrippingRule());
        }
        this.f102100x.setApplicableAccumulators(this.f102098v);
        Expression compileSequenceConstructor = compileSequenceConstructor(compilation, componentDeclaration, false);
        if (compileSequenceConstructor == null) {
            return Literal.makeEmptySequence();
        }
        try {
            return configuration.makeStreamInstruction(this.f102097u, compileSequenceConstructor.simplify().typeCheck(makeExpressionVisitor(), configuration.makeContextItemStaticInfo(NodeKindTest.DOCUMENT, false)), this.f102099w, this.f102100x, null, allocateLocation(), makeRetainedStaticContext());
        } catch (XPathException e) {
            this.compileError(e);
            return null;
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isWithinDeclaredStreamableConstruct() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x0136, code lost:
    
        if (r7.equals("#none") == false) goto L59;
     */
    @Override // net.p110sf.saxon.style.StyleElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void prepareAttributes() {
        /*
            Method dump skipped, instructions count: 568
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.XSLSourceDocument.prepareAttributes():void");
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        this.f102097u = typeCheck("select", this.f102097u);
        if (hasChildNodes()) {
            return;
        }
        compileWarning("An empty xsl:source-document instruction has no effect", SaxonErrorCode.SXWN9009);
    }
}
