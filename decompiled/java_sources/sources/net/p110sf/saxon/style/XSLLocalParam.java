package net.p110sf.saxon.style;

import java.util.EnumSet;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.SuppliedParameterReference;
import net.p110sf.saxon.expr.instruct.LocalParam;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.ItemConsumer;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.style.SourceBinding;
import net.p110sf.saxon.style.XSLLocalParam;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.linked.NodeImpl;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class XSLLocalParam extends XSLGeneralVariable {

    /* renamed from: x */
    public LocalParam f102024x;

    /* renamed from: u */
    public EnumSet<SourceBinding.BindingProperty> f102021u = EnumSet.of(SourceBinding.BindingProperty.TUNNEL, SourceBinding.BindingProperty.REQUIRED, SourceBinding.BindingProperty.SELECT, SourceBinding.BindingProperty.AS);

    /* renamed from: v */
    public Expression f102022v = null;

    /* renamed from: w */
    public int f102023w = -9876;

    /* renamed from: y */
    public boolean f102025y = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a0 */
    public /* synthetic */ void m64046a0(StructuredQName structuredQName, Item item) throws XPathException {
        if (item instanceof XSLLocalParam) {
            if (structuredQName.equals(((XSLLocalParam) item).sourceBinding.getVariableQName())) {
                compileError("The name of the parameter is not unique", "XTSE0580");
            }
        } else if ((item instanceof StyleElement) && ((StyleElement) item).getFingerprint() != 145) {
            compileError("xsl:param must not be preceded by other instructions", "XTSE0010");
        } else {
            if (Whitespace.isAllWhite(item.getUnicodeStringValue())) {
                return;
            }
            compileError("xsl:param must not be preceded by text", "XTSE0010");
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        if (getParent() instanceof XSLFunction) {
            return null;
        }
        SequenceType requiredType = getRequiredType();
        StructuredQName variableQName = this.sourceBinding.getVariableQName();
        int slotNumber = getSlotNumber();
        if (requiredType != null) {
            SuppliedParameterReference suppliedParameterReference = new SuppliedParameterReference(slotNumber);
            suppliedParameterReference.setRetainedStaticContext(makeRetainedStaticContext());
            suppliedParameterReference.setLocation(allocateLocation());
            RoleDiagnostic roleDiagnostic = new RoleDiagnostic(8, variableQName.getDisplayName(), 0);
            roleDiagnostic.setErrorCode("XTTE0590");
            this.f102022v = compilation.getConfiguration().getTypeChecker(false).staticTypeCheck(suppliedParameterReference, requiredType, roleDiagnostic, makeExpressionVisitor());
        }
        this.sourceBinding.handleSequenceConstructor(compilation, componentDeclaration);
        LocalParam localParam = new LocalParam();
        localParam.setSelectExpression(this.sourceBinding.getSelectExpression());
        localParam.setConversion(this.f102022v);
        localParam.setVariableQName(variableQName);
        localParam.setSlotNumber(slotNumber);
        localParam.setRequiredType(getRequiredType());
        localParam.setRequiredParam(this.sourceBinding.hasProperty(SourceBinding.BindingProperty.REQUIRED));
        localParam.setImplicitlyRequiredParam(this.sourceBinding.hasProperty(SourceBinding.BindingProperty.IMPLICITLY_REQUIRED));
        localParam.setTunnel(this.sourceBinding.hasProperty(SourceBinding.BindingProperty.TUNNEL));
        this.sourceBinding.fixupBinding(localParam);
        this.f102024x = localParam;
        return localParam;
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

    public LocalParam getCompiledParam() {
        return this.f102024x;
    }

    public SequenceType getRequiredType() {
        SequenceType declaredType = this.sourceBinding.getDeclaredType();
        return declaredType != null ? declaredType : SequenceType.ANY_SEQUENCE;
    }

    public int getSlotNumber() {
        return this.f102023w;
    }

    public boolean isRequiredParam() {
        return this.sourceBinding.hasProperty(SourceBinding.BindingProperty.REQUIRED);
    }

    public boolean isTunnelParam() {
        return this.sourceBinding.hasProperty(SourceBinding.BindingProperty.TUNNEL);
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        if (this.f102025y) {
            return;
        }
        this.f102025y = true;
        this.sourceBinding.setProperty(SourceBinding.BindingProperty.PARAM, true);
        if (getParent() instanceof XSLFunction) {
            this.f102021u.remove(SourceBinding.BindingProperty.SELECT);
            this.sourceBinding.setProperty(SourceBinding.BindingProperty.DISALLOWS_CONTENT, true);
        }
        this.sourceBinding.prepareAttributes(this.f102021u);
        if (this.sourceBinding.hasProperty(SourceBinding.BindingProperty.TUNNEL) && !(getParent() instanceof XSLTemplate)) {
            compileError("For attribute 'tunnel' within an " + getParent().getDisplayName() + " parameter, the only permitted value is 'no'", "XTSE0020");
        }
        if (!(getParent() instanceof XSLFunction) || getAttributeValue("", "required") == null || this.sourceBinding.hasProperty(SourceBinding.BindingProperty.REQUIRED)) {
            return;
        }
        compileError("For attribute 'required' within an " + getParent().getDisplayName() + " parameter, the only permitted value is 'yes'", "XTSE0020");
    }

    public void prepareTemplateSignatureAttributes() throws XPathException {
        if (this.f102025y) {
            return;
        }
        this.sourceBinding.setProperty(SourceBinding.BindingProperty.PARAM, true);
        this.sourceBinding.prepareTemplateSignatureAttributes();
    }

    @Override // net.p110sf.saxon.style.XSLGeneralVariable, net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        final StructuredQName variableQName = this.sourceBinding.getVariableQName();
        NodeImpl parent = getParent();
        if (!(parent instanceof StyleElement) || !((StyleElement) parent).mayContainParam()) {
            compileError("xsl:param must be immediately within a template, function or stylesheet", "XTSE0010");
        }
        if (hasChildNodes() && (getParent() instanceof XSLFunction)) {
            compileError("Function parameters cannot have a default value", "XTSE0760");
        }
        SequenceTool.supply(iterateAxis(11), new ItemConsumer() { // from class: com.sunia.HTREnginev2.sqo
            @Override // net.p110sf.saxon.om.ItemConsumer
            public final void accept(Item item) {
                XSLLocalParam.this.m64046a0(variableQName, item);
            }
        });
        SlotManager containingSlotManager = getContainingSlotManager();
        if (containingSlotManager == null) {
            compileError("Local variable must be declared within a template or function", "XTSE0010");
        } else {
            this.f102023w = containingSlotManager.allocateSlotNumber(variableQName);
        }
        if (this.sourceBinding.hasProperty(SourceBinding.BindingProperty.REQUIRED)) {
            if (this.sourceBinding.getSelectExpression() != null) {
                compileError("The select attribute must be omitted when required='yes'", "XTSE0010");
            }
            if (hasChildNodes()) {
                compileError("A parameter specifying required='yes' must have empty content", "XTSE0010");
            }
        }
        super.validate(componentDeclaration);
    }
}
