package net.p110sf.saxon.style;

import java.util.EnumSet;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.instruct.WithParam;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.style.SourceBinding;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class XSLWithParam extends XSLGeneralVariable {

    /* renamed from: u */
    public final EnumSet<SourceBinding.BindingProperty> f102143u = EnumSet.of(SourceBinding.BindingProperty.SELECT, SourceBinding.BindingProperty.AS, SourceBinding.BindingProperty.TUNNEL);

    public void checkAgainstRequiredType(SequenceType sequenceType) throws XPathException {
        this.sourceBinding.checkAgainstRequiredType(sequenceType);
    }

    public WithParam compileWithParam(Expression expression, Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        this.sourceBinding.handleSequenceConstructor(compilation, componentDeclaration);
        WithParam withParam = new WithParam();
        withParam.setSelectExpression(expression, this.sourceBinding.getSelectExpression());
        withParam.setVariableQName(this.sourceBinding.getVariableQName());
        withParam.setRequiredType(this.sourceBinding.getInferredType(true));
        return withParam;
    }

    public boolean isTunnelParam() {
        return this.sourceBinding.hasProperty(SourceBinding.BindingProperty.TUNNEL);
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        this.sourceBinding.prepareAttributes(this.f102143u);
    }

    @Override // net.p110sf.saxon.style.XSLGeneralVariable, net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        super.validate(componentDeclaration);
        AxisIterator iterateAxis = iterateAxis(11);
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                return;
            }
            if ((next instanceof XSLWithParam) && this.sourceBinding.getVariableQName().equals(((XSLWithParam) next).sourceBinding.getVariableQName())) {
                compileError("Duplicate parameter name", "XTSE0670");
            }
        }
    }
}
