package net.p110sf.saxon.style;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.instruct.ProcessingInstruction;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class XSLProcessingInstruction extends XSLLeafNodeConstructor {

    /* renamed from: u */
    public Expression f102088u;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        ProcessingInstruction processingInstruction = new ProcessingInstruction(this.f102088u);
        compileContent(compilation, componentDeclaration, processingInstruction, new StringLiteral(StringValue.SINGLE_SPACE));
        return processingInstruction;
    }

    @Override // net.p110sf.saxon.style.XSLLeafNodeConstructor
    public String getErrorCodeForSelectPlusContent() {
        return "XTSE0880";
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        this.f102088u = prepareAttributesNameAndSelect();
    }

    @Override // net.p110sf.saxon.style.XSLLeafNodeConstructor, net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        this.f102088u = typeCheck("name", this.f102088u);
        this.select = typeCheck("select", this.select);
        super.validate(componentDeclaration);
    }
}
