package net.p110sf.saxon.style;

import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public abstract class XSLGeneralVariable extends StyleElement {
    protected SourceBinding sourceBinding = new SourceBinding(this);

    @Override // net.p110sf.saxon.style.StyleElement
    public StructuredQName getObjectName() {
        return this.sourceBinding.getVariableQName();
    }

    public SourceBinding getSourceBinding() {
        return this.sourceBinding;
    }

    public StructuredQName getVariableQName() {
        return this.sourceBinding.getVariableQName();
    }

    public boolean isGlobal() {
        return isTopLevel();
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void postValidate() throws XPathException {
        this.sourceBinding.postValidate();
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        this.sourceBinding.validate();
    }
}
