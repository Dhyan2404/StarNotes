package net.p110sf.saxon.style;

import java.util.EnumSet;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.instruct.Actor;
import net.p110sf.saxon.expr.instruct.GlobalContextRequirement;
import net.p110sf.saxon.expr.instruct.GlobalParam;
import net.p110sf.saxon.expr.instruct.GlobalVariable;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.Optimizer;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.style.SourceBinding;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class XSLGlobalVariable extends StyleElement implements StylesheetComponent {
    protected SourceBinding sourceBinding;

    /* renamed from: u */
    public SlotManager f102002u;
    protected GlobalVariable compiledVariable = null;

    /* renamed from: v */
    public int f102003v = 0;
    protected boolean redundant = false;

    public XSLGlobalVariable() {
        SourceBinding sourceBinding = new SourceBinding(this);
        this.sourceBinding = sourceBinding;
        sourceBinding.setProperty(SourceBinding.BindingProperty.GLOBAL, true);
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public void checkCompatibility(Component component) {
        SequenceType declaredType = getSourceBinding().getDeclaredType();
        if (declaredType == null) {
            declaredType = SequenceType.ANY_SEQUENCE;
        }
        if (component.getDeclaringPackage().getConfiguration().getTypeHierarchy().sequenceTypeRelationship(declaredType, ((GlobalVariable) component.getActor()).getRequiredType()) != Affinity.SAME_TYPE) {
            compileError("The declared type of the overriding variable $" + getVariableQName().getDisplayName() + " is different from that of the overridden variable", "XTSE3070");
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void compileDeclaration(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        if (this.redundant) {
            return;
        }
        this.sourceBinding.handleSequenceConstructor(compilation, componentDeclaration);
        GlobalVariable compiledVariable = getCompiledVariable();
        if (compiledVariable == null) {
            compiledVariable = new GlobalVariable();
            compiledVariable.setPackageData(getCompilation().getPackageData());
            compiledVariable.obtainDeclaringComponent(this);
            compiledVariable.setVariableQName(this.sourceBinding.getVariableQName());
        }
        if (this.sourceBinding.isStatic()) {
            compiledVariable.setStatic(true);
            GroundedValue staticVariable = compilation.getStaticVariable(this.sourceBinding.getVariableQName());
            if (staticVariable == null) {
                throw new AssertionError();
            }
            Literal makeLiteral = Literal.makeLiteral(staticVariable);
            makeLiteral.setRetainedStaticContext(makeRetainedStaticContext());
            compiledVariable.setBody(makeLiteral);
        } else {
            compiledVariable.setBody(this.sourceBinding.getSelectExpression());
            if (compilation.getCompilerInfo().getCodeInjector() != null) {
                compilation.getCompilerInfo().getCodeInjector().process(compiledVariable);
            }
        }
        compiledVariable.setRetainedStaticContext(makeRetainedStaticContext());
        initializeBinding(compiledVariable);
        compiledVariable.setAssignable(isAssignable());
        compiledVariable.setRequiredType(getRequiredType());
        this.sourceBinding.fixupBinding(compiledVariable);
        this.compiledVariable = compiledVariable;
        Component m63952C = m63952C();
        if (m63952C != null) {
            checkCompatibility(m63952C);
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void fixupReferences() throws XPathException {
        this.sourceBinding.fixupReferences(this.compiledVariable);
        super.fixupReferences();
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public void generateByteCode(Optimizer optimizer) {
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public Actor getActor() throws XPathException {
        GlobalVariable compiledVariable = getCompiledVariable();
        if (compiledVariable == null) {
            compiledVariable = this instanceof XSLGlobalParam ? new GlobalParam() : new GlobalVariable();
            compiledVariable.setPackageData(getCompilation().getPackageData());
            compiledVariable.obtainDeclaringComponent(this);
            compiledVariable.setRequiredType(this.sourceBinding.getDeclaredType());
            compiledVariable.setDeclaredVisibility(getDeclaredVisibility());
            compiledVariable.setVariableQName(this.sourceBinding.getVariableQName());
            compiledVariable.setSystemId(getSystemId());
            compiledVariable.setLineNumber(getLineNumber());
            compiledVariable.setColumnNumber(getColumnNumber());
            RetainedStaticContext makeRetainedStaticContext = makeRetainedStaticContext();
            compiledVariable.setRetainedStaticContext(makeRetainedStaticContext);
            if (compiledVariable.getBody() != null) {
                compiledVariable.getBody().setRetainedStaticContext(makeRetainedStaticContext);
            }
            this.compiledVariable = compiledVariable;
        }
        return compiledVariable;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public SourceBinding getBindingInformation(StructuredQName structuredQName) {
        if (structuredQName.equals(this.sourceBinding.getVariableQName())) {
            return this.sourceBinding;
        }
        return null;
    }

    public GlobalVariable getCompiledVariable() {
        return this.compiledVariable;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public StructuredQName getObjectName() {
        return this.sourceBinding.getVariableQName();
    }

    public EnumSet<SourceBinding.BindingProperty> getPermittedAttributes() {
        return EnumSet.of(SourceBinding.BindingProperty.ASSIGNABLE, SourceBinding.BindingProperty.SELECT, SourceBinding.BindingProperty.AS, SourceBinding.BindingProperty.STATIC, SourceBinding.BindingProperty.VISIBILITY);
    }

    public SequenceType getRequiredType() {
        return this.sourceBinding.getInferredType(true);
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public SlotManager getSlotManager() {
        return this.f102002u;
    }

    public SourceBinding getSourceBinding() {
        return this.sourceBinding;
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public SymbolicName getSymbolicName() {
        return new SymbolicName(218, getObjectName());
    }

    public StructuredQName getVariableQName() {
        return this.sourceBinding.getVariableQName();
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void index(ComponentDeclaration componentDeclaration, PrincipalStylesheetModule principalStylesheetModule) throws XPathException {
        principalStylesheetModule.indexVariableDeclaration(componentDeclaration);
    }

    public void initializeBinding(GlobalVariable globalVariable) {
        Expression expression;
        Expression body = globalVariable.getBody();
        if (body != null) {
            try {
                ExpressionVisitor makeExpressionVisitor = makeExpressionVisitor();
                GlobalContextRequirement contextItemRequirements = getPackageData().getContextItemRequirements();
                expression = body.simplify().typeCheck(makeExpressionVisitor, contextItemRequirements == null ? getConfiguration().getDefaultContextItemStaticInfo() : contextItemRequirements.makeGlobalContextInfo(getConfiguration()));
            } catch (XPathException e) {
                compileError(e);
                expression = body;
            }
            StyleElement.setInstructionLocation(this, expression);
            m63974m(expression);
        } else {
            expression = body;
        }
        SlotManager slotManager = this.f102002u;
        if (slotManager != null && slotManager.getNumberOfVariables() > 0) {
            globalVariable.setContainsLocals(this.f102002u);
        }
        if (expression != body) {
            globalVariable.setBody(expression);
        }
    }

    public boolean isAssignable() {
        return this.sourceBinding.hasProperty(SourceBinding.BindingProperty.ASSIGNABLE);
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isDeclaration() {
        return true;
    }

    public boolean isGlobal() {
        return isTopLevel();
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return false;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public void optimize(ComponentDeclaration componentDeclaration) throws XPathException {
        if (this.redundant || this.compiledVariable.getBody() == null) {
            return;
        }
        Expression optimizeComponentBody = ExpressionTool.optimizeComponentBody(this.compiledVariable.getBody(), getCompilation(), makeExpressionVisitor(), getConfiguration().makeContextItemStaticInfo(AnyItemType.getInstance(), true), false);
        m63974m(optimizeComponentBody);
        SlotManager slotManager = this.f102002u;
        if (slotManager != null && slotManager.getNumberOfVariables() > 0) {
            this.compiledVariable.setContainsLocals(this.f102002u);
        }
        if (optimizeComponentBody != this.compiledVariable.getBody()) {
            this.compiledVariable.setBody(optimizeComponentBody);
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void postValidate() throws XPathException {
        this.sourceBinding.postValidate();
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        int i = this.f102003v;
        if (i == 2) {
            return;
        }
        if (i == 1) {
            compileError("Circular reference to variable", "XTDE0640");
        }
        this.f102003v = 1;
        this.sourceBinding.prepareAttributes(getPermittedAttributes());
        this.f102003v = 2;
    }

    public void setRedundant(boolean z) {
        this.redundant = z;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        this.f102002u = getConfiguration().makeSlotManager();
        this.sourceBinding.validate();
    }
}
