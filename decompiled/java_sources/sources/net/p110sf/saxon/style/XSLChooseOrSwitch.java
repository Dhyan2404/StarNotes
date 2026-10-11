package net.p110sf.saxon.style;

import com.sunia.HTREnginev2.w2n;
import java.util.Iterator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.instruct.Choose;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public abstract class XSLChooseOrSwitch extends StyleElement {

    /* renamed from: u */
    public StyleElement f101918u;

    /* renamed from: v */
    public int f101919v = 0;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        int i = this.f101919v + (this.f101918u == null ? 0 : 1);
        Expression[] expressionArr = new Expression[i];
        Expression[] expressionArr2 = new Expression[i];
        compileActions(compilation, componentDeclaration, expressionArr2);
        compileConditions(compilation, componentDeclaration, expressionArr);
        Choose choose = new Choose(expressionArr, expressionArr2);
        choose.setInstruction(true);
        return choose;
    }

    public void compileActions(Compilation compilation, ComponentDeclaration componentDeclaration, Expression[] expressionArr) throws XPathException {
        int i = 0;
        for (NodeInfo nodeInfo : children()) {
            if ((nodeInfo instanceof XSLWhen) || (nodeInfo instanceof XSLOtherwise)) {
                StyleElement styleElement = (StyleElement) nodeInfo;
                Expression compileSequenceConstructor = styleElement.compileSequenceConstructor(compilation, componentDeclaration, true);
                if (compileSequenceConstructor == null) {
                    compileSequenceConstructor = Literal.makeEmptySequence();
                    compileSequenceConstructor.setRetainedStaticContext(makeRetainedStaticContext());
                }
                try {
                    expressionArr[i] = compileSequenceConstructor.simplify();
                } catch (XPathException e) {
                    compileError(e);
                }
                StyleElement.setInstructionLocation(styleElement, expressionArr[i]);
                i++;
            }
        }
    }

    public abstract void compileConditions(Compilation compilation, ComponentDeclaration componentDeclaration, Expression[] expressionArr);

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean markTailCalls() {
        Iterator<? extends NodeInfo> it2 = children(new w2n(StyleElement.class)).iterator();
        boolean z = false;
        while (it2.hasNext()) {
            z |= ((StyleElement) it2.next()).markTailCalls();
        }
        return z;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        Iterator<AttributeInfo> it2 = attributes().iterator();
        while (it2.hasNext()) {
            checkUnknownAttribute(it2.next().getNodeName());
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        XSLFallback xSLFallback = null;
        for (NodeInfo nodeInfo : children()) {
            if (nodeInfo instanceof XSLWhen) {
                StyleElement styleElement = this.f101918u;
                if (styleElement != null) {
                    styleElement.compileError("xsl:otherwise must come last", "XTSE0010");
                } else if (xSLFallback != null) {
                    xSLFallback.compileError("xsl:fallback must come last", "XTSE0010");
                }
                this.f101919v++;
            } else if (nodeInfo instanceof XSLOtherwise) {
                if (this.f101918u != null) {
                    ((XSLOtherwise) nodeInfo).compileError("Only one xsl:otherwise is allowed in an " + getDisplayName(), "XTSE0010");
                } else if (xSLFallback != null) {
                    xSLFallback.compileError("xsl:fallback must come last", "XTSE0010");
                } else {
                    this.f101918u = (StyleElement) nodeInfo;
                }
            } else if ((nodeInfo instanceof XSLFallback) && (this instanceof XSLSwitch)) {
                xSLFallback = (XSLFallback) nodeInfo;
            } else if (nodeInfo instanceof StyleElement) {
                ((StyleElement) nodeInfo).compileError("Only xsl:when and xsl:otherwise are allowed here", "XTSE0010");
            } else {
                compileError("Only xsl:when and xsl:otherwise are allowed within " + getDisplayName(), "XTSE0010");
            }
        }
        if (this.f101919v == 0) {
            compileError(getDisplayName() + " must contain at least one xsl:when", "XTSE0010");
        }
    }
}
