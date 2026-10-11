package net.p110sf.saxon.style;

import java.util.EnumSet;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.style.SourceBinding;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class XSLLocalVariable extends XSLGeneralVariable {

    /* renamed from: u */
    public static final EnumSet<SourceBinding.BindingProperty> f102026u = EnumSet.of(SourceBinding.BindingProperty.SELECT, SourceBinding.BindingProperty.AS);

    public void compileLocalVariable(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        this.sourceBinding.handleSequenceConstructor(compilation, componentDeclaration);
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void fixupReferences() throws XPathException {
        this.sourceBinding.fixupReferences(null);
        super.fixupReferences();
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public SourceBinding getBindingInformation(StructuredQName structuredQName) {
        if (structuredQName.equals(this.sourceBinding.getVariableQName())) {
            return this.sourceBinding;
        }
        return null;
    }

    public SequenceType getRequiredType() {
        return this.sourceBinding.getInferredType(true);
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        this.sourceBinding.prepareAttributes(f102026u);
    }
}
