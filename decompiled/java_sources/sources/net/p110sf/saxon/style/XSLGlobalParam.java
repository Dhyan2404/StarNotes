package net.p110sf.saxon.style;

import java.util.EnumSet;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.instruct.GlobalParam;
import net.p110sf.saxon.expr.parser.Optimizer;
import net.p110sf.saxon.style.SourceBinding;
import net.p110sf.saxon.trans.Visibility;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class XSLGlobalParam extends XSLGlobalVariable {

    /* renamed from: w */
    public Expression f102001w = null;

    public XSLGlobalParam() {
        this.sourceBinding.setProperty(SourceBinding.BindingProperty.PARAM, true);
    }

    @Override // net.p110sf.saxon.style.XSLGlobalVariable, net.p110sf.saxon.style.StyleElement
    public void compileDeclaration(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        if (this.sourceBinding.isStatic()) {
            super.compileDeclaration(compilation, componentDeclaration);
            return;
        }
        if (this.redundant) {
            return;
        }
        this.sourceBinding.handleSequenceConstructor(compilation, componentDeclaration);
        GlobalParam globalParam = (GlobalParam) this.compiledVariable;
        globalParam.setPackageData(getCompilation().getPackageData());
        globalParam.obtainDeclaringComponent(this);
        Expression selectExpression = this.sourceBinding.getSelectExpression();
        globalParam.setBody(selectExpression);
        globalParam.setVariableQName(this.sourceBinding.getVariableQName());
        initializeBinding(globalParam);
        if (selectExpression != null && compilation.getCompilerInfo().getCodeInjector() != null) {
            compilation.getCompilerInfo().getCodeInjector().process(globalParam);
        }
        globalParam.setRequiredType(getRequiredType());
        globalParam.setRequiredParam(this.sourceBinding.hasProperty(SourceBinding.BindingProperty.REQUIRED));
        globalParam.setImplicitlyRequiredParam(this.sourceBinding.hasProperty(SourceBinding.BindingProperty.IMPLICITLY_REQUIRED));
        this.sourceBinding.fixupBinding(globalParam);
        Component m63952C = m63952C();
        if (m63952C != null) {
            checkCompatibility(m63952C);
        }
    }

    @Override // net.p110sf.saxon.style.XSLGlobalVariable
    public EnumSet<SourceBinding.BindingProperty> getPermittedAttributes() {
        return EnumSet.of(SourceBinding.BindingProperty.REQUIRED, SourceBinding.BindingProperty.SELECT, SourceBinding.BindingProperty.AS, SourceBinding.BindingProperty.STATIC);
    }

    @Override // net.p110sf.saxon.style.XSLGlobalVariable
    public SequenceType getRequiredType() {
        SequenceType declaredType = this.sourceBinding.getDeclaredType();
        return declaredType != null ? declaredType : SequenceType.ANY_SEQUENCE;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public Visibility getVisibility() {
        String attributeValue = getAttributeValue("static");
        if (attributeValue != null && processBooleanAttribute("static", attributeValue)) {
            return Visibility.PRIVATE;
        }
        return Visibility.PUBLIC;
    }

    public void insertBytecodeCandidate(Optimizer optimizer) {
    }

    @Override // net.p110sf.saxon.style.XSLGlobalVariable, net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        if (this.sourceBinding.hasProperty(SourceBinding.BindingProperty.REQUIRED)) {
            if (this.sourceBinding.getSelectExpression() != null) {
                compileError("The select attribute must be absent when required='yes'", "XTSE0010");
            }
            if (hasChildNodes()) {
                compileError("A parameter specifying required='yes' must have empty content", "XTSE0010");
            }
            Visibility visibility = getVisibility();
            if (!this.sourceBinding.isStatic() && visibility != Visibility.PUBLIC && visibility != Visibility.FINAL && visibility != Visibility.ABSTRACT) {
                compileError("The visibility of a required non-static parameter must be public, final, or abstract", "XTSE3370");
            }
        }
        super.validate(componentDeclaration);
    }
}
