package net.p110sf.saxon.expr.instruct;

import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Binding;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.LocalBinding;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.VariableReference;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.Evaluator;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public final class LocalParam extends Instruction implements LocalBinding {

    /* renamed from: w */
    public static final int f99752w = 4;

    /* renamed from: x */
    public static final int f99753x = 8;

    /* renamed from: y */
    public static final int f99754y = 16;

    /* renamed from: z */
    public static final /* synthetic */ boolean f99755z = false;

    /* renamed from: r */
    public StructuredQName f99760r;

    /* renamed from: s */
    public SequenceType f99761s;

    /* renamed from: n */
    public Operand f99756n = null;

    /* renamed from: o */
    public Evaluator f99757o = null;

    /* renamed from: p */
    public int f99758p = 0;

    /* renamed from: q */
    public Operand f99759q = null;

    /* renamed from: t */
    public int f99762t = -999;

    /* renamed from: u */
    public int f99763u = 10;

    /* renamed from: v */
    public Evaluator f99764v = null;

    @Override // net.p110sf.saxon.expr.Binding
    public void addReference(VariableReference variableReference, boolean z) {
    }

    public void checkAgainstRequiredType(ExpressionVisitor expressionVisitor) throws XPathException {
        RoleDiagnostic roleDiagnostic = new RoleDiagnostic(3, this.f99760r.getDisplayName(), 0);
        SequenceType sequenceType = this.f99761s;
        Expression selectExpression = getSelectExpression();
        if (sequenceType == null || selectExpression == null) {
            return;
        }
        expressionVisitor.getConfiguration().getTypeChecker(false).staticTypeCheck(selectExpression, this.f99761s, roleDiagnostic, expressionVisitor);
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 57344;
    }

    public void computeEvaluationMode() {
        if (getSelectExpression() != null) {
            if (this.f99763u == 10000) {
                this.f99764v = Evaluator.MakeIndexedVariable.INSTANCE;
            } else {
                this.f99764v = ExpressionTool.lazyEvaluator(getSelectExpression(), this.f99763u > 1);
            }
        }
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return 33554432;
    }

    /* renamed from: d */
    public final String m62778d() {
        String str = "";
        if (isTunnelParam()) {
            str = "t";
        }
        if (isRequiredParam()) {
            str = str + "r";
        }
        if (!isImplicitlyRequiredParam()) {
            return str;
        }
        return str + "i";
    }

    @Override // net.p110sf.saxon.expr.Binding
    public Sequence evaluateVariable(XPathContext xPathContext) {
        return xPathContext.evaluateLocalVariable(this.f99762t);
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement(Constants.ELEMNAME_PARAMVARIABLE_STRING, this);
        expressionPresenter.emitAttribute("name", getVariableQName());
        expressionPresenter.emitAttribute("slot", "" + getSlotNumber());
        String m62778d = m62778d();
        if (!m62778d.isEmpty()) {
            expressionPresenter.emitAttribute("flags", m62778d);
        }
        if (getRequiredType() != SequenceType.ANY_SEQUENCE) {
            expressionPresenter.emitAttribute("as", getRequiredType().toAlphaCode());
        }
        if (getSelectExpression() != null) {
            expressionPresenter.setChildRole("select");
            getSelectExpression().export(expressionPresenter);
        }
        Expression conversion = getConversion();
        if (conversion != null) {
            expressionPresenter.setChildRole("conversion");
            conversion.export(expressionPresenter);
        }
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getCardinality() {
        return 8192;
    }

    public Expression getConversion() {
        Operand operand = this.f99756n;
        if (operand == null) {
            return null;
        }
        return operand.getChildExpression();
    }

    public Evaluator getConversionEvaluator() {
        return this.f99757o;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return Constants.ELEMNAME_PARAMVARIABLE_STRING;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public int getInstructionNameCode() {
        return 195;
    }

    @Override // net.p110sf.saxon.expr.Binding
    public IntegerValue[] getIntegerBoundsForVariable() {
        return null;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return ErrorType.getInstance();
    }

    @Override // net.p110sf.saxon.expr.LocalBinding
    public int getLocalSlotNumber() {
        return this.f99762t;
    }

    @Override // net.p110sf.saxon.expr.Binding
    public SequenceType getRequiredType() {
        return this.f99761s;
    }

    public Expression getSelectExpression() {
        Operand operand = this.f99759q;
        if (operand == null) {
            return null;
        }
        return operand.getChildExpression();
    }

    public Sequence getSelectValue(XPathContext xPathContext) throws XPathException {
        Expression selectExpression = getSelectExpression();
        if (selectExpression == null) {
            throw new AssertionError("Internal error: No select expression");
        }
        if (selectExpression instanceof Literal) {
            return ((Literal) selectExpression).getGroundedValue();
        }
        int temporaryOutputState = xPathContext.getTemporaryOutputState();
        xPathContext.setTemporaryOutputState(221);
        Evaluator evaluator = this.f99764v;
        if (evaluator == null) {
            evaluator = Evaluator.EagerSequence.INSTANCE;
        }
        Sequence evaluate = evaluator.evaluate(selectExpression, xPathContext);
        xPathContext.setTemporaryOutputState(temporaryOutputState);
        return evaluate;
    }

    public int getSlotNumber() {
        return this.f99762t;
    }

    @Override // net.p110sf.saxon.expr.Binding
    public StructuredQName getVariableQName() {
        return this.f99760r;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean hasVariableBinding(Binding binding) {
        return this == binding;
    }

    @Override // net.p110sf.saxon.expr.Binding
    public boolean isAssignable() {
        return false;
    }

    public boolean isCompatible(LocalParam localParam) {
        return getVariableQName().equals(localParam.getVariableQName()) && getRequiredType().equals(localParam.getRequiredType()) && isTunnelParam() == localParam.isTunnelParam();
    }

    @Override // net.p110sf.saxon.expr.Binding
    public boolean isGlobal() {
        return false;
    }

    public final boolean isImplicitlyRequiredParam() {
        return (this.f99758p & 16) != 0;
    }

    @Override // net.p110sf.saxon.expr.LocalBinding
    public boolean isIndexedVariable() {
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isLiftable(boolean z) {
        return false;
    }

    public final boolean isRequiredParam() {
        return (this.f99758p & 4) != 0;
    }

    public final boolean isTunnelParam() {
        return (this.f99758p & 8) != 0;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public boolean mayCreateNewNodes() {
        return false;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return operandSparseList(this.f99759q, this.f99756n);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression optimize = super.optimize(expressionVisitor, contextItemStaticInfo);
        return optimize != this ? optimize : this;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException {
        int useLocalParameter = xPathContext.useLocalParameter(this.f99760r, this.f99762t, isTunnelParam());
        if (useLocalParameter != 0) {
            if (useLocalParameter != 1 || this.f99756n == null) {
                return null;
            }
            xPathContext.setLocalVariable(this.f99762t, this.f99757o.evaluate(getConversion(), xPathContext));
            return null;
        }
        if (!isRequiredParam() && !isImplicitlyRequiredParam()) {
            xPathContext.setLocalVariable(this.f99762t, getSelectValue(xPathContext));
            return null;
        }
        String str = "$" + getVariableQName().getDisplayName();
        int useLocalParameter2 = xPathContext.useLocalParameter(this.f99760r, this.f99762t, true ^ isTunnelParam());
        String str2 = "No value supplied for required parameter " + str;
        if (isImplicitlyRequiredParam()) {
            str2 = str2 + ". A value is required because the default value is not a valid instance of the required type";
        }
        if (useLocalParameter2 != 0) {
            if (isTunnelParam()) {
                str2 = str2 + ". A non-tunnel parameter with this name was supplied, but a tunnel parameter is required";
            } else {
                str2 = str2 + ". A tunnel parameter with this name was supplied, but a non-tunnel parameter is required";
            }
        }
        XPathException xPathException = new XPathException(str2);
        xPathException.setXPathContext(xPathContext);
        xPathException.setErrorCode("XTDE0700");
        throw xPathException;
    }

    public void setConversion(Expression expression) {
        if (expression == null) {
            this.f99756n = null;
            return;
        }
        if (this.f99756n == null) {
            this.f99756n = new Operand(this, expression, OperandRole.SINGLE_ATOMIC);
        }
        this.f99757o = ExpressionTool.eagerEvaluator(expression);
    }

    public void setImplicitlyRequiredParam(boolean z) {
        if (z) {
            this.f99758p |= 16;
        } else {
            this.f99758p &= -17;
        }
    }

    @Override // net.p110sf.saxon.expr.LocalBinding
    public void setIndexedVariable() {
    }

    public void setReferenceCount(int i) {
        this.f99763u = i;
    }

    public void setRequiredParam(boolean z) {
        if (z) {
            this.f99758p |= 4;
        } else {
            this.f99758p &= -5;
        }
    }

    public void setRequiredType(SequenceType sequenceType) {
        this.f99761s = sequenceType;
    }

    public void setSelectExpression(Expression expression) {
        if (expression != null) {
            Operand operand = this.f99759q;
            if (operand == null) {
                this.f99759q = new Operand(this, expression, OperandRole.NAVIGATE);
            } else {
                operand.setChildExpression(expression);
            }
        } else {
            this.f99759q = null;
        }
        this.f99764v = null;
    }

    public void setSlotNumber(int i) {
        this.f99762t = i;
    }

    public void setTunnel(boolean z) {
        if (z) {
            this.f99758p |= 8;
        } else {
            this.f99758p &= -9;
        }
    }

    public void setVariableQName(StructuredQName structuredQName) {
        this.f99760r = structuredQName;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return "$" + getVariableQName().getDisplayName();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression typeCheck = super.typeCheck(expressionVisitor, contextItemStaticInfo);
        if (typeCheck != this) {
            return typeCheck;
        }
        checkAgainstRequiredType(expressionVisitor);
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public LocalParam copy(RebindingMap rebindingMap) {
        LocalParam localParam = new LocalParam();
        if (this.f99756n != null) {
            localParam.setConversion(getConversion().copy(rebindingMap));
        }
        localParam.f99757o = this.f99757o;
        localParam.f99758p = this.f99758p;
        if (this.f99759q != null) {
            localParam.setSelectExpression(getSelectExpression().copy(rebindingMap));
        }
        localParam.f99760r = this.f99760r;
        localParam.f99761s = this.f99761s;
        localParam.f99762t = this.f99762t;
        localParam.f99763u = this.f99763u;
        localParam.f99764v = this.f99764v;
        return localParam;
    }
}
