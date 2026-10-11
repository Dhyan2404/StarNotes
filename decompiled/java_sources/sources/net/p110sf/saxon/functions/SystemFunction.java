package net.p110sf.saxon.functions;

import java.util.Arrays;
import java.util.Objects;
import java.util.Properties;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.FunctionCall;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.OperandUsage;
import net.p110sf.saxon.expr.SystemFunctionCall;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.instruct.Block;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.functions.registry.BuiltInFunctionSet;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public abstract class SystemFunction extends AbstractFunction {

    /* renamed from: e */
    public int f100321e;

    /* renamed from: f */
    public BuiltInFunctionSet.Entry f100322f;

    /* renamed from: g */
    public RetainedStaticContext f100323g;

    public static Sequence dynamicCall(Function function, XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        XPathContext makeNewContext = function.makeNewContext(xPathContext, null);
        makeNewContext.setCurrentOutputUri(null);
        if (makeNewContext instanceof XPathContextMajor) {
            ((XPathContextMajor) makeNewContext).setCurrentRegexIterator(null);
        }
        return function.call(makeNewContext, sequenceArr);
    }

    public static Expression makeCall(String str, RetainedStaticContext retainedStaticContext, Expression... expressionArr) {
        Expression makeFunctionCall = makeFunction(str, retainedStaticContext, expressionArr.length).makeFunctionCall(expressionArr);
        makeFunctionCall.setRetainedStaticContext(retainedStaticContext);
        return makeFunctionCall;
    }

    public static SystemFunction makeFunction(String str, RetainedStaticContext retainedStaticContext, int i) {
        Objects.requireNonNull(retainedStaticContext);
        SystemFunction makeSystemFunction = retainedStaticContext.getConfiguration().makeSystemFunction(str, i);
        if (makeSystemFunction != null) {
            makeSystemFunction.setRetainedStaticContext(retainedStaticContext);
            return makeSystemFunction;
        }
        throw new IllegalArgumentException(str + "#" + i);
    }

    public boolean dependsOnContextItem() {
        return (this.f100322f.properties & 16388) != 0;
    }

    public boolean equals(Object obj) {
        return (obj instanceof SystemFunction) && super.equals(obj);
    }

    @Override // net.p110sf.saxon.functions.AbstractFunction, net.p110sf.saxon.om.Function
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("fnRef");
        StructuredQName functionName = getFunctionName();
        expressionPresenter.emitAttribute("name", functionName.hasURI("http://www.w3.org/2005/xpath-functions") ? functionName.getLocalPart() : functionName.getEQName());
        expressionPresenter.emitAttribute("arity", getArity() + "");
        if ((getDetails().properties & 56) != 0) {
            expressionPresenter.emitRetainedStaticContext(getRetainedStaticContext(), null);
        }
        expressionPresenter.endElement();
    }

    public void exportAdditionalArguments(SystemFunctionCall systemFunctionCall, ExpressionPresenter expressionPresenter) throws XPathException {
    }

    public void exportAttributes(ExpressionPresenter expressionPresenter) {
    }

    public Expression fixArguments(Expression... expressionArr) throws XPathException {
        for (int i = 0; i < getArity(); i++) {
            if (Literal.isEmptySequence(expressionArr[i]) && resultIfEmpty(i) != null) {
                return Literal.makeLiteral(this.f100322f.resultIfEmpty[i].materialize());
            }
        }
        return null;
    }

    @Override // net.p110sf.saxon.om.Function
    public int getArity() {
        return this.f100321e;
    }

    public int getCardinality(Expression[] expressionArr) {
        BuiltInFunctionSet.Entry entry = this.f100322f;
        int i = entry.cardinality;
        if (i != 24576 || (entry.properties & 32768) == 0 || Cardinality.allowsZero(expressionArr[0].getCardinality())) {
            return i;
        }
        return 16384;
    }

    public String getCompilerName() {
        return null;
    }

    public NodeInfo getContextNode(XPathContext xPathContext) throws XPathException {
        Item contextItem = xPathContext.getContextItem();
        if (contextItem == null) {
            XPathException xPathException = new XPathException("Context item for " + getFunctionName() + "() is absent", "XPDY0002");
            xPathException.maybeSetContext(xPathContext);
            throw xPathException;
        }
        if (contextItem instanceof NodeInfo) {
            return (NodeInfo) contextItem;
        }
        XPathException xPathException2 = new XPathException("Context item for " + getFunctionName() + "() is not a node", "XPTY0004");
        xPathException2.maybeSetContext(xPathContext);
        throw xPathException2;
    }

    @Override // net.p110sf.saxon.om.Function
    public String getDescription() {
        return this.f100322f.name.getDisplayName();
    }

    public BuiltInFunctionSet.Entry getDetails() {
        return this.f100322f;
    }

    public String getErrorCodeForTypeErrors() {
        return "XPTY0004";
    }

    @Override // net.p110sf.saxon.om.Function
    public FunctionItemType getFunctionItemType() {
        return new SpecificFunctionType(this.f100322f.argumentTypes, SequenceType.makeSequenceType(getResultItemType(), this.f100322f.cardinality));
    }

    @Override // net.p110sf.saxon.om.Function
    public StructuredQName getFunctionName() {
        return this.f100322f.name;
    }

    public IntegerValue[] getIntegerBounds() {
        return null;
    }

    public int getNetCost() {
        return 1;
    }

    @Override // net.p110sf.saxon.functions.AbstractFunction, net.p110sf.saxon.om.Function
    public OperandRole[] getOperandRoles() {
        OperandUsage[] operandUsageArr;
        OperandRole[] operandRoleArr = new OperandRole[getArity()];
        if (isSequenceVariadic()) {
            operandUsageArr = new OperandUsage[getArity()];
            Arrays.fill(operandUsageArr, this.f100322f.usage[0]);
        } else {
            operandUsageArr = this.f100322f.usage;
        }
        for (int i = 0; i < operandUsageArr.length; i++) {
            try {
                operandRoleArr[i] = new OperandRole(0, operandUsageArr[i], getRequiredType(i));
            } catch (ArrayIndexOutOfBoundsException e) {
                e.printStackTrace();
            }
        }
        return operandRoleArr;
    }

    public SequenceType getRequiredType(int i) {
        BuiltInFunctionSet.Entry entry = this.f100322f;
        return entry == null ? SequenceType.ANY_SEQUENCE : entry.argumentTypes[i];
    }

    public ItemType getResultItemType() {
        return this.f100322f.itemType;
    }

    public RetainedStaticContext getRetainedStaticContext() {
        return this.f100323g;
    }

    public int getSpecialProperties(Expression[] expressionArr) {
        int i = this.f100322f.properties;
        if ((65536 & i) != 0) {
            return 4194304;
        }
        return (i & 8192) != 0 ? 41943040 : 8388608;
    }

    public String getStaticBaseUriString() {
        return getRetainedStaticContext().getStaticBaseUriString();
    }

    public String getStreamerName() {
        return null;
    }

    public UnicodeString getUniStringArg(Sequence sequence) throws XPathException {
        StringValue stringValue = (StringValue) sequence.head();
        return stringValue == null ? EmptyUnicodeString.getInstance() : stringValue.getUnicodeStringValue();
    }

    public int hashCode() {
        return super.hashCode();
    }

    public void importAttributes(Properties properties) throws XPathException {
    }

    @Override // net.p110sf.saxon.om.Function
    public boolean isSequenceVariadic() {
        return (this.f100322f.properties & 262144) != 0;
    }

    @Override // net.p110sf.saxon.functions.AbstractFunction, net.p110sf.saxon.om.Function
    public boolean isTrustedResultType() {
        return true;
    }

    public Expression makeFunctionCall(Expression... expressionArr) {
        if (expressionArr.length > getArity() && isSequenceVariadic()) {
            if (getArity() != 1) {
                throw new UnsupportedOperationException("Not implemented: sequence-variadic function with arity>1");
            }
            expressionArr = new Expression[]{new Block(expressionArr)};
        }
        SystemFunctionCall systemFunctionCall = new SystemFunctionCall(this, expressionArr);
        systemFunctionCall.setRetainedStaticContext(getRetainedStaticContext());
        return systemFunctionCall;
    }

    public Expression makeOptimizedFunctionCall(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression... expressionArr) throws XPathException {
        if (expressionVisitor.obtainOptimizer().isOptionSet(32768)) {
            return fixArguments(expressionArr);
        }
        return null;
    }

    public Sequence resultIfEmpty(int i) {
        return this.f100322f.resultIfEmpty[i];
    }

    public void setArity(int i) {
        this.f100321e = i;
    }

    public void setDetails(BuiltInFunctionSet.Entry entry) {
        this.f100322f = entry;
    }

    public void setRetainedStaticContext(RetainedStaticContext retainedStaticContext) {
        this.f100323g = retainedStaticContext;
    }

    public void supplyTypeInformation(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression[] expressionArr) throws XPathException {
    }

    @Override // net.p110sf.saxon.functions.AbstractFunction, net.p110sf.saxon.om.Function, net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public String toShortString() {
        return getFunctionName().getDisplayName() + '#' + getArity();
    }

    public String toString() {
        return getFunctionName().getDisplayName() + '#' + getArity();
    }

    public Expression typeCheckCaller(FunctionCall functionCall, ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        return functionCall;
    }

    public ItemType getResultItemType(Expression[] expressionArr) {
        BuiltInFunctionSet.Entry entry = this.f100322f;
        int i = entry.properties;
        if ((i & 1) != 0) {
            return expressionArr[0].getItemType();
        }
        if ((i & 2) != 0) {
            return expressionArr[0].getItemType().getPrimitiveItemType();
        }
        return entry.itemType;
    }
}
