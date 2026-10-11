package net.p110sf.saxon.style;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.instruct.Block;
import net.p110sf.saxon.expr.instruct.BreakInstr;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class XSLBreak extends XSLBreakOrContinue {

    /* renamed from: u */
    public Expression f101907u;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        Expression expression = this.f101907u;
        if (expression == null) {
            expression = compileSequenceConstructor(compilation, componentDeclaration, false);
        }
        BreakInstr breakInstr = new BreakInstr();
        breakInstr.setRetainedStaticContext(makeRetainedStaticContext());
        return Block.makeBlock(expression, breakInstr);
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
    }

    @Override // net.p110sf.saxon.style.XSLBreakOrContinue, net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String displayName = nodeName.getDisplayName();
            String value = attributeInfo.getValue();
            if (displayName.equals("select")) {
                this.f101907u = makeExpression(value, attributeInfo);
            } else {
                checkUnknownAttribute(nodeName);
            }
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        validatePosition();
        if (this.xslIterate == null) {
            compileError(getDisplayName() + " must be a descendant of an xsl:iterate instruction", "XTSE3120");
        }
        if (this.f101907u != null && hasChildNodes()) {
            compileError("An xsl:break element with a select attribute must be empty", "XTSE3125");
        }
        this.f101907u = typeCheck("select", this.f101907u);
    }
}
