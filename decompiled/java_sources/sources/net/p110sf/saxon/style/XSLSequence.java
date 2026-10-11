package net.p110sf.saxon.style;

import java.util.Iterator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.instruct.SequenceInstr;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class XSLSequence extends StyleElement {

    /* renamed from: u */
    public Expression f102096u;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        if (this.f102096u == null) {
            this.f102096u = compileSequenceConstructor(compilation, componentDeclaration, false);
        }
        if (getConfiguration().getBooleanProperty(Feature.STRICT_STREAMABILITY)) {
            this.f102096u = new SequenceInstr(this.f102096u);
        }
        return this.f102096u;
    }

    public Expression getSelectExpression() {
        return this.f102096u;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainFallback() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String value = attributeInfo.getValue();
            if (nodeName.getDisplayName().equals("select")) {
                this.f102096u = makeExpression(value, attributeInfo);
            } else {
                checkUnknownAttribute(nodeName);
            }
        }
    }

    public void setSelectExpression(Expression expression) {
        this.f102096u = expression;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        Iterator<? extends NodeInfo> it2 = children().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            if (!(it2.next() instanceof XSLFallback)) {
                if (this.f102096u != null) {
                    compileError("An " + getDisplayName() + " element with a select attribute must be empty", "XTSE3185");
                }
            }
        }
        this.f102096u = typeCheck("select", this.f102096u);
    }
}
