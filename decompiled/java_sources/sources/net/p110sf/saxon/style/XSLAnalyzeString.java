package net.p110sf.saxon.style;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.instruct.AnalyzeString;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.regex.RegularExpression;
import net.p110sf.saxon.str.BMPString;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class XSLAnalyzeString extends StyleElement {

    /* renamed from: u */
    public Expression f101873u;

    /* renamed from: v */
    public Expression f101874v;

    /* renamed from: w */
    public Expression f101875w;

    /* renamed from: x */
    public StyleElement f101876x;

    /* renamed from: y */
    public StyleElement f101877y;

    /* renamed from: z */
    public RegularExpression f101878z;

    /* renamed from: Z */
    public final void m64025Z(String str) {
        compileErrorInAttribute(str, "XTDE1145", "flags");
        m64027b0();
    }

    /* renamed from: a0 */
    public final void m64026a0(String str) {
        compileErrorInAttribute(str, "XTDE1140", "regex");
        m64027b0();
    }

    /* renamed from: b0 */
    public final void m64027b0() {
        try {
            this.f101878z = getConfiguration().compileRegularExpression(BMPString.m63877of("x"), "", "XP20", null);
        } catch (XPathException unused) {
            throw new IllegalStateException();
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        StyleElement styleElement = this.f101876x;
        Expression compileSequenceConstructor = styleElement != null ? styleElement.compileSequenceConstructor(compilation, componentDeclaration, false) : null;
        StyleElement styleElement2 = this.f101877y;
        Expression compileSequenceConstructor2 = styleElement2 != null ? styleElement2.compileSequenceConstructor(compilation, componentDeclaration, false) : null;
        try {
            return new AnalyzeString(this.f101873u, this.f101874v, this.f101875w, compileSequenceConstructor == null ? null : compileSequenceConstructor.simplify(), compileSequenceConstructor2 == null ? null : compileSequenceConstructor2.simplify(), this.f101878z);
        } catch (XPathException e) {
            compileError(e);
            return null;
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainFallback() {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0057 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0067 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0053 A[SYNTHETIC] */
    @Override // net.p110sf.saxon.style.StyleElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void prepareAttributes() {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.XSLAnalyzeString.prepareAttributes():void");
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        boolean z = false;
        for (NodeInfo nodeInfo : children()) {
            if (nodeInfo instanceof XSLFallback) {
                z = true;
            } else if (!(nodeInfo instanceof XSLMatchingSubstring)) {
                compileError("Only xsl:matching-substring and xsl:non-matching-substring are allowed here", "XTSE0010");
            } else if (nodeInfo.getLocalPart().equals("matching-substring")) {
                if (this.f101876x != null || this.f101877y != null || z) {
                    compileError("xsl:matching-substring element must come first", "XTSE0010");
                }
                this.f101876x = (StyleElement) nodeInfo;
            } else {
                if (this.f101877y != null || z) {
                    compileError("xsl:non-matching-substring cannot appear here", "XTSE0010");
                }
                this.f101877y = (StyleElement) nodeInfo;
            }
        }
        if (this.f101876x == null && this.f101877y == null) {
            compileError("At least one xsl:matching-substring or xsl:non-matching-substring element must be present", "XTSE1130");
        }
        this.f101873u = typeCheck("select", this.f101873u);
        this.f101874v = typeCheck("regex", this.f101874v);
        this.f101875w = typeCheck("flags", this.f101875w);
    }
}
