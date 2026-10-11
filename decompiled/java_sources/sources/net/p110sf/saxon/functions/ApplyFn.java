package net.p110sf.saxon.functions;

import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Properties;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.SystemFunctionCall;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.functions.registry.BuiltInFunctionSet;
import net.p110sf.saxon.ma.arrays.ArrayFunctionSet;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.ma.arrays.ArrayItemType;
import net.p110sf.saxon.ma.arrays.SquareArrayConstructor;
import net.p110sf.saxon.ma.map.MapFunctionSet;
import net.p110sf.saxon.ma.map.MapType;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyFunctionType;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.SequenceExtent;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class ApplyFn extends SystemFunction {

    /* renamed from: h */
    public String f100146h;

    /* renamed from: a */
    public final Expression m62950a(ExpressionVisitor expressionVisitor, BuiltInFunctionSet builtInFunctionSet, ContextItemStaticInfo contextItemStaticInfo, Expression[] expressionArr) throws XPathException {
        Expression expression = expressionArr[0];
        Expression childExpression = ((SquareArrayConstructor) expressionArr[1]).getOperanda().getOperand(0).getChildExpression();
        Expression makeFunctionCall = builtInFunctionSet.makeFunction("get", 2).makeFunctionCall(expression, childExpression);
        makeFunctionCall.setRetainedStaticContext(expression.getRetainedStaticContext());
        TypeChecker typeChecker = expressionVisitor.getConfiguration().getTypeChecker(expressionVisitor.getStaticContext().isInBackwardsCompatibleMode());
        if (builtInFunctionSet == MapFunctionSet.getInstance()) {
            ((SystemFunctionCall) makeFunctionCall).setArg(1, typeChecker.staticTypeCheck(childExpression, SequenceType.SINGLE_ATOMIC, new RoleDiagnostic(20, "key value supplied when calling a map as a function", 0), expressionVisitor));
        } else {
            ((SystemFunctionCall) makeFunctionCall).setArg(1, typeChecker.staticTypeCheck(childExpression, SequenceType.SINGLE_INTEGER, new RoleDiagnostic(20, "subscript supplied when calling an array as a function", 0), expressionVisitor));
        }
        return makeFunctionCall.typeCheck(expressionVisitor, contextItemStaticInfo);
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        Function function = (Function) sequenceArr[0].head();
        TypeHierarchy typeHierarchy = xPathContext.getConfiguration().getTypeHierarchy();
        FunctionItemType functionItemType = function.getFunctionItemType();
        ArrayItem arrayItem = (ArrayItem) sequenceArr[1].head();
        if (function.getArity() != arrayItem.arrayLength()) {
            XPathException xPathException = new XPathException("Number of arguments required for dynamic call to " + function.getDescription() + " is " + function.getArity() + "; number supplied = " + arrayItem.arrayLength(), isDynamicFunctionCall() ? "XPTY0004" : "FOAP0001");
            xPathException.setIsTypeError(isDynamicFunctionCall());
            xPathException.setXPathContext(xPathContext);
            throw xPathException;
        }
        int arrayLength = arrayItem.arrayLength();
        Sequence[] sequenceArr2 = new Sequence[arrayLength];
        if (functionItemType == AnyFunctionType.ANY_FUNCTION) {
            for (int i = 0; i < arrayLength; i++) {
                sequenceArr2[i] = arrayItem.get(i);
            }
        } else {
            for (int i2 = 0; i2 < arrayLength; i2++) {
                sequenceArr2[i2] = typeHierarchy.applyFunctionConversionRules(arrayItem.get(i2), functionItemType.getArgumentTypes()[i2], isDynamicFunctionCall() ? new RoleDiagnostic(0, this.f100146h.toString(), 0) : new RoleDiagnostic(0, "fn:apply", i2 + 1), Loc.NONE).materialize();
            }
        }
        if (function.isSequenceVariadic()) {
            ArrayList arrayList = new ArrayList();
            Iterator<GroundedValue> it2 = ((ArrayItem) sequenceArr[1].head()).members().iterator();
            while (it2.hasNext()) {
                Iterator<? extends Item> it3 = it2.next().asIterable().iterator();
                while (it3.hasNext()) {
                    arrayList.add(it3.next());
                }
            }
            new ArrayList(1).add(SequenceExtent.makeSequenceExtent(arrayList));
        }
        Sequence dynamicCall = SystemFunction.dynamicCall(function, xPathContext, sequenceArr2);
        if (function.isTrustedResultType()) {
            return dynamicCall;
        }
        return typeHierarchy.applyFunctionConversionRules(dynamicCall, functionItemType.getResultType(), new RoleDiagnostic(5, "fn:apply", -1), Loc.NONE);
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public void exportAttributes(ExpressionPresenter expressionPresenter) {
        expressionPresenter.emitAttribute(ExtensionNamespaceContext.EXSLT_DYNAMIC_PREFIX, this.f100146h);
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public ItemType getResultItemType(Expression[] expressionArr) {
        ItemType itemType = expressionArr[0].getItemType();
        return itemType instanceof MapType ? ((MapType) itemType).getValueType().getPrimaryType() : itemType instanceof ArrayItemType ? ((ArrayItemType) itemType).getMemberType().getPrimaryType() : itemType instanceof FunctionItemType ? ((FunctionItemType) itemType).getResultType().getPrimaryType() : itemType instanceof AnyFunctionType ? AnyItemType.getInstance() : AnyItemType.getInstance();
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public void importAttributes(Properties properties) {
        this.f100146h = properties.getProperty(ExtensionNamespaceContext.EXSLT_DYNAMIC_PREFIX);
    }

    public boolean isDynamicFunctionCall() {
        return this.f100146h != null;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeOptimizedFunctionCall(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression... expressionArr) throws XPathException {
        if (expressionArr.length != 2 || !(expressionArr[1] instanceof SquareArrayConstructor)) {
            return null;
        }
        Expression expression = expressionArr[0];
        if (expression.getItemType() instanceof MapType) {
            return m62950a(expressionVisitor, MapFunctionSet.getInstance(), contextItemStaticInfo, expressionArr);
        }
        if (expression.getItemType() instanceof ArrayItemType) {
            return m62950a(expressionVisitor, ArrayFunctionSet.getInstance(), contextItemStaticInfo, expressionArr);
        }
        return null;
    }

    public void setDynamicFunctionCall(String str) {
        this.f100146h = str;
    }
}
