package net.p110sf.saxon.style;

import java.util.ArrayList;
import java.util.List;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.TryCatch;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.pattern.QNameTest;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class XSLTry extends StyleElement {

    /* renamed from: u */
    public Expression f102130u;

    /* renamed from: v */
    public boolean f102131v = true;

    /* renamed from: w */
    public final List<QNameTest> f102132w = new ArrayList();

    /* renamed from: x */
    public final List<Expression> f102133x = new ArrayList();

    public void addCatchClause(QNameTest qNameTest, Expression expression) {
        this.f102132w.add(qNameTest);
        this.f102133x.add(expression);
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        Expression compileSequenceConstructor = compileSequenceConstructor(compilation, componentDeclaration, true);
        if (this.f102130u == null) {
            this.f102130u = compileSequenceConstructor;
        }
        TryCatch tryCatch = new TryCatch(this.f102130u);
        for (int i = 0; i < this.f102132w.size(); i++) {
            tryCatch.addCatchExpression(this.f102132w.get(i), this.f102133x.get(i));
        }
        tryCatch.setRollbackOutput(this.f102131v);
        return tryCatch;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isPermittedChild(StyleElement styleElement) {
        return styleElement instanceof XSLCatch;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        String str = null;
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String displayName = nodeName.getDisplayName();
            String value = attributeInfo.getValue();
            displayName.hashCode();
            if (displayName.equals("select")) {
                this.f102130u = makeExpression(value, attributeInfo);
            } else if (displayName.equals("rollback-output")) {
                str = value;
            } else {
                checkUnknownAttribute(nodeName);
            }
        }
        if (str != null) {
            this.f102131v = processBooleanAttribute("rollback-output", str);
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        this.f102130u = typeCheck("select", this.f102130u);
        boolean z = false;
        for (NodeInfo nodeInfo : children()) {
            if (nodeInfo instanceof XSLCatch) {
                z = true;
            } else if (!(nodeInfo instanceof XSLFallback)) {
                if (z) {
                    compileError("xsl:catch elements must come after all other children of xsl:try (excepting xsl:fallback)", "XTSE0010");
                }
                if (this.f102130u != null) {
                    compileError("An " + getDisplayName() + " element with a select attribute must be empty", "XTSE3140");
                }
            }
        }
        if (z) {
            return;
        }
        compileError("xsl:try must have at least one xsl:catch child element", "XTSE0010");
    }
}
