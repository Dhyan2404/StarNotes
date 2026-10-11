package net.p110sf.saxon.expr.parser;

import com.bumptech.glide.load.engine.GlideException;
import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import com.sunia.HTREnginev2.gon;
import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;
import javax.xml.transform.SourceLocator;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.event.ComplexContentOutputter;
import net.p110sf.saxon.event.SequenceCollector;
import net.p110sf.saxon.expr.Assignation;
import net.p110sf.saxon.expr.AxisExpression;
import net.p110sf.saxon.expr.Binding;
import net.p110sf.saxon.expr.ContextItemExpression;
import net.p110sf.saxon.expr.ContextSwitchingExpression;
import net.p110sf.saxon.expr.CurrentItemExpression;
import net.p110sf.saxon.expr.ErrorExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.FilterExpression;
import net.p110sf.saxon.expr.FunctionCall;
import net.p110sf.saxon.expr.GlobalVariableReference;
import net.p110sf.saxon.expr.LetExpression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.LocalBinding;
import net.p110sf.saxon.expr.LocalVariableReference;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandUsage;
import net.p110sf.saxon.expr.RootExpression;
import net.p110sf.saxon.expr.SingleItemFilter;
import net.p110sf.saxon.expr.SlashExpression;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.StaticFunctionCall;
import net.p110sf.saxon.expr.SuppliedParameterReference;
import net.p110sf.saxon.expr.TailExpression;
import net.p110sf.saxon.expr.TryCatch;
import net.p110sf.saxon.expr.UnaryExpression;
import net.p110sf.saxon.expr.UserFunctionCall;
import net.p110sf.saxon.expr.VariableReference;
import net.p110sf.saxon.expr.VennExpression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.flwor.Clause;
import net.p110sf.saxon.expr.flwor.FLWORExpression;
import net.p110sf.saxon.expr.flwor.LocalVariableBinding;
import net.p110sf.saxon.expr.instruct.ApplyImports;
import net.p110sf.saxon.expr.instruct.ApplyTemplates;
import net.p110sf.saxon.expr.instruct.Block;
import net.p110sf.saxon.expr.instruct.CallTemplate;
import net.p110sf.saxon.expr.instruct.ForEachGroup;
import net.p110sf.saxon.expr.instruct.GlobalVariable;
import net.p110sf.saxon.expr.instruct.LocalParam;
import net.p110sf.saxon.expr.instruct.NextMatch;
import net.p110sf.saxon.expr.instruct.ParentNodeConstructor;
import net.p110sf.saxon.expr.instruct.ResultDocument;
import net.p110sf.saxon.expr.instruct.SimpleNodeConstructor;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.instruct.TraceExpression;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.expr.parser.Evaluator;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.sort.ConditionalSorter;
import net.p110sf.saxon.expr.sort.DocumentSorter;
import net.p110sf.saxon.functions.ApplyFn;
import net.p110sf.saxon.functions.Current;
import net.p110sf.saxon.functions.CurrentGroup;
import net.p110sf.saxon.functions.IriToUri;
import net.p110sf.saxon.functions.RegexGroup;
import net.p110sf.saxon.functions.hof.UserFunctionReference;
import net.p110sf.saxon.lib.Logger;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.lib.StandardLogger;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.style.Compilation;
import net.p110sf.saxon.style.ScopedBindingElement;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.Closure;
import net.p110sf.saxon.value.NumericValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;
import org.apache.commons.lang3.SystemUtils;

/* loaded from: classes11.dex */
public class ExpressionTool {

    /* renamed from: a */
    public static final /* synthetic */ boolean f99912a = false;

    /* renamed from: net.sf.saxon.expr.parser.ExpressionTool$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18320a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f99913a;

        static {
            int[] iArr = new int[Genre.values().length];
            f99913a = iArr;
            try {
                iArr[Genre.NODE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f99913a[Genre.ATOMIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f99913a[Genre.ARRAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f99913a[Genre.MAP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f99913a[Genre.FUNCTION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f99913a[Genre.EXTERNAL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int allocateSlots(Expression expression, int i, SlotManager slotManager) {
        Logger standardLogger;
        if (expression instanceof Assignation) {
            Assignation assignation = (Assignation) expression;
            assignation.setSlotNumber(i);
            i += assignation.getRequiredSlots();
            if (slotManager != null) {
                slotManager.allocateSlotNumber(assignation.getVariableQName());
            }
        }
        if (expression instanceof LocalParam) {
            LocalParam localParam = (LocalParam) expression;
            if (localParam.getSlotNumber() < 0) {
                localParam.setSlotNumber(i);
                i++;
            }
        }
        if (expression instanceof FLWORExpression) {
            Iterator<Clause> it2 = ((FLWORExpression) expression).getClauseList().iterator();
            while (it2.hasNext()) {
                LocalVariableBinding[] rangeVariables = it2.next().getRangeVariables();
                int length = rangeVariables.length;
                int i2 = 0;
                while (i2 < length) {
                    LocalVariableBinding localVariableBinding = rangeVariables[i2];
                    localVariableBinding.setSlotNumber(i);
                    slotManager.allocateSlotNumber(localVariableBinding.getVariableQName());
                    i2++;
                    i++;
                }
            }
        }
        if (expression instanceof VariableReference) {
            VariableReference variableReference = (VariableReference) expression;
            Binding binding = variableReference.getBinding();
            if (expression instanceof LocalVariableReference) {
                ((LocalVariableReference) variableReference).setSlotNumber(((LocalBinding) binding).getLocalSlotNumber());
            }
            if ((binding instanceof Assignation) && ((LocalBinding) binding).getLocalSlotNumber() < 0) {
                Assignation assignation2 = (Assignation) binding;
                try {
                    standardLogger = expression.getConfiguration().getLogger();
                } catch (Exception unused) {
                    standardLogger = new StandardLogger();
                }
                standardLogger.error("*** Internal Saxon error: local variable encountered whose binding has been deleted");
                standardLogger.error("Variable name: " + assignation2.getVariableName());
                standardLogger.error("Line number of reference: " + variableReference.getLocation().getLineNumber() + CloudStorageConstants.OPERATION_IN + variableReference.getLocation().getSystemId());
                standardLogger.error("Line number of declaration: " + assignation2.getLocation().getLineNumber() + CloudStorageConstants.OPERATION_IN + assignation2.getLocation().getSystemId());
                standardLogger.error("DECLARATION:");
                try {
                    assignation2.explain(standardLogger);
                } catch (Exception unused2) {
                }
                throw new IllegalStateException("*** Internal Saxon error: local variable encountered whose binding has been deleted");
            }
        }
        if (expression instanceof Pattern) {
            return ((Pattern) expression).allocateSlots(slotManager, i);
        }
        if (expression instanceof ScopedBindingElement) {
            return ((ScopedBindingElement) expression).allocateSlots(slotManager, i);
        }
        Iterator<Operand> it3 = expression.operands().iterator();
        while (it3.hasNext()) {
            i = allocateSlots(it3.next().getChildExpression(), i, slotManager);
        }
        return i;
    }

    public static boolean callsFunction(Expression expression, final StructuredQName structuredQName, boolean z) {
        return contains(expression, z, new Predicate() { // from class: com.sunia.HTREnginev2.b3g
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m62820m;
                m62820m = ExpressionTool.m62820m(StructuredQName.this, (Expression) obj);
                return m62820m;
            }
        });
    }

    public static boolean changesXsltContext(Expression expression) {
        Expression interpretedExpression = expression.getInterpretedExpression();
        if ((interpretedExpression instanceof ResultDocument) || (interpretedExpression instanceof CallTemplate) || (interpretedExpression instanceof ApplyTemplates) || (interpretedExpression instanceof NextMatch) || (interpretedExpression instanceof ApplyImports) || interpretedExpression.isCallOn(RegexGroup.class) || interpretedExpression.isCallOn(CurrentGroup.class)) {
            return true;
        }
        Iterator<Operand> it2 = interpretedExpression.operands().iterator();
        while (it2.hasNext()) {
            if (changesXsltContext(it2.next().getChildExpression())) {
                return true;
            }
        }
        return false;
    }

    public static void clearStreamabilityData(Expression expression) throws XPathException {
        processExpressionTree(expression, null, new ExpressionAction() { // from class: com.sunia.HTREnginev2.a3g
            @Override // net.p110sf.saxon.expr.parser.ExpressionAction
            public final boolean process(Expression expression2, Object obj) {
                boolean m62821n;
                m62821n = ExpressionTool.m62821n(expression2, obj);
                return m62821n;
            }
        });
    }

    public static void computeEvaluationModesForUserFunctionCalls(Expression expression) throws XPathException {
        processExpressionTree(expression, null, new ExpressionAction() { // from class: com.sunia.HTREnginev2.y2g
            @Override // net.p110sf.saxon.expr.parser.ExpressionAction
            public final boolean process(Expression expression2, Object obj) {
                boolean m62822o;
                m62822o = ExpressionTool.m62822o(expression2, obj);
                return m62822o;
            }
        });
    }

    public static boolean contains(Expression expression, Expression expression2) {
        while (expression2 != null) {
            if (expression2 == expression) {
                return true;
            }
            expression2 = expression2.getParentExpression();
        }
        return false;
    }

    public static boolean containsLocalParam(Expression expression) {
        return contains(expression, true, new Predicate() { // from class: com.sunia.HTREnginev2.x2g
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m62823p;
                m62823p = ExpressionTool.m62823p((Expression) obj);
                return m62823p;
            }
        });
    }

    public static boolean containsLocalVariableReference(final Expression expression) {
        return contains(expression, false, new Predicate() { // from class: com.sunia.HTREnginev2.d3g
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m62824q;
                m62824q = ExpressionTool.m62824q(Expression.this, (Expression) obj);
                return m62824q;
            }
        });
    }

    public static boolean containsSubexpression(Expression expression, final Class<? extends Expression> cls) {
        return contains(expression, false, new Predicate() { // from class: com.sunia.HTREnginev2.c3g
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m62825r;
                m62825r = ExpressionTool.m62825r(cls, (Expression) obj);
                return m62825r;
            }
        });
    }

    public static void copyLocationInfo(Expression expression, Expression expression2) {
        if (expression == null || expression2 == null) {
            return;
        }
        if (expression2.getLocation() == null || expression2.getLocation() == Loc.NONE) {
            expression2.setLocation(expression.getLocation());
        }
        if (expression2.getLocalRetainedStaticContext() == null) {
            expression2.setRetainedStaticContextLocally(expression.getLocalRetainedStaticContext());
        }
    }

    public static boolean dependsOnFocus(Expression expression) {
        return (expression.getDependencies() & 30) != 0;
    }

    public static boolean dependsOnVariable(Expression expression, final Binding[] bindingArr) {
        return (bindingArr == null || bindingArr.length == 0 || !contains(expression, false, new Predicate() { // from class: com.sunia.HTREnginev2.z2g
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m62826s;
                m62826s = ExpressionTool.m62826s(bindingArr, (Expression) obj);
                return m62826s;
            }
        })) ? false : true;
    }

    public static GroundedValue eagerEvaluate(Expression expression, XPathContext xPathContext) throws XPathException {
        return eagerEvaluator(expression).evaluate(expression, xPathContext).materialize();
    }

    public static Evaluator eagerEvaluator(Expression expression) {
        if ((expression instanceof Literal) && !(((Literal) expression).getGroundedValue() instanceof Closure)) {
            return Evaluator.Literal.INSTANCE;
        }
        if (expression instanceof VariableReference) {
            return Evaluator.Variable.INSTANCE;
        }
        int implementationMethod = expression.getImplementationMethod();
        return ((implementationMethod & 1) == 0 || Cardinality.allowsMany(expression.getCardinality())) ? (implementationMethod & 2) != 0 ? Evaluator.EagerSequence.INSTANCE : Evaluator.Process.INSTANCE : Cardinality.allowsZero(expression.getCardinality()) ? Evaluator.OptionalItem.INSTANCE : Evaluator.SingleItem.INSTANCE;
    }

    public static void ebvError(String str) throws XPathException {
        XPathException xPathException = new XPathException("Effective boolean value is not defined for " + str);
        xPathException.setErrorCode("FORG0006");
        xPathException.setIsTypeError(true);
        throw xPathException;
    }

    public static boolean effectiveBooleanValue(SequenceIterator sequenceIterator) throws XPathException {
        Item next = sequenceIterator.next();
        if (next == null) {
            return false;
        }
        switch (C18320a.f99913a[next.getGenre().ordinal()]) {
            case 1:
                sequenceIterator.close();
                return true;
            case 2:
                if (next instanceof BooleanValue) {
                    if (sequenceIterator.next() != null) {
                        sequenceIterator.close();
                        ebvError("a sequence of two or more items starting with a boolean");
                    }
                    sequenceIterator.close();
                    return ((BooleanValue) next).getBooleanValue();
                }
                if (next instanceof StringValue) {
                    if (sequenceIterator.next() != null) {
                        sequenceIterator.close();
                        ebvError("a sequence of two or more items starting with a string ('" + next.getStringValue() + "')");
                    }
                    return !((StringValue) next).isEmpty();
                }
                if (next instanceof NumericValue) {
                    if (sequenceIterator.next() != null) {
                        sequenceIterator.close();
                        ebvError("a sequence of two or more items starting with a numeric value (" + next.getStringValue() + MotionUtils.f31762d);
                    }
                    NumericValue numericValue = (NumericValue) next;
                    return (numericValue.compareTo(0L) == 0 || numericValue.isNaN()) ? false : true;
                }
                sequenceIterator.close();
                ebvError("a sequence starting with an atomic value of type " + ((AtomicValue) next).getItemType().getTypeName().getDisplayName());
                return false;
            case 3:
                sequenceIterator.close();
                ebvError("a sequence starting with an array item (" + next.toShortString() + MotionUtils.f31762d);
                return false;
            case 4:
                sequenceIterator.close();
                ebvError("a sequence starting with a map (" + next.toShortString() + MotionUtils.f31762d);
                return false;
            case 5:
                sequenceIterator.close();
                ebvError("a sequence starting with a function (" + next.toShortString() + MotionUtils.f31762d);
                return false;
            case 6:
                if (sequenceIterator.next() != null) {
                    sequenceIterator.close();
                    ebvError("a sequence of two or more items starting with an external object value");
                }
                return true;
            default:
                ebvError("a sequence starting with an item of unknown kind");
                return false;
        }
    }

    public static boolean equalOrNull(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static int expressionSize(Expression expression) {
        int i = 1;
        for (Operand operand : expression.getInterpretedExpression().operands()) {
            i += expressionSize(operand.getChildExpression());
            if (operand.getChildExpression() instanceof UserFunctionReference) {
                i += expressionSize(((UserFunctionReference) operand.getChildExpression()).getNominalTarget().getBody());
            }
        }
        return i;
    }

    public static boolean factorOutDot(Expression expression, Binding binding) {
        boolean z = false;
        if ((expression.getDependencies() & 18) != 0) {
            for (Operand operand : expression.operands()) {
                if (operand.hasSameFocus()) {
                    Expression childExpression = operand.getChildExpression();
                    if (childExpression instanceof ContextItemExpression) {
                        VariableReference m62829v = m62829v(binding);
                        copyLocationInfo(childExpression, m62829v);
                        operand.setChildExpression(m62829v);
                    } else if ((childExpression instanceof AxisExpression) || (childExpression instanceof RootExpression)) {
                        VariableReference m62829v2 = m62829v(binding);
                        copyLocationInfo(childExpression, m62829v2);
                        operand.setChildExpression(makePathExpression(m62829v2, childExpression));
                    } else {
                        z |= factorOutDot(childExpression, binding);
                    }
                    z = true;
                }
            }
        }
        if (z) {
            expression.resetLocalStaticProperties();
        }
        return z;
    }

    public static Operand findOperand(Expression expression, Expression expression2) {
        for (Operand operand : expression.operands()) {
            if (operand.getChildExpression() == expression2) {
                return operand;
            }
        }
        return null;
    }

    public static void gatherCalledFunctionNames(Expression expression, List<SymbolicName> list) {
        if (expression instanceof UserFunctionCall) {
            list.add(((UserFunctionCall) expression).getSymbolicName());
            return;
        }
        Iterator<Operand> it2 = expression.operands().iterator();
        while (it2.hasNext()) {
            gatherCalledFunctionNames(it2.next().getChildExpression(), list);
        }
    }

    public static void gatherCalledFunctions(Expression expression, List<UserFunction> list) {
        if (!(expression instanceof UserFunctionCall)) {
            Iterator<Operand> it2 = expression.operands().iterator();
            while (it2.hasNext()) {
                gatherCalledFunctions(it2.next().getChildExpression(), list);
            }
        } else {
            UserFunction function = ((UserFunctionCall) expression).getFunction();
            if (list.contains(function)) {
                return;
            }
            list.add(function);
        }
    }

    public static void gatherReferencedVariables(Expression expression, List<Binding> list) {
        if (expression instanceof VariableReference) {
            Binding binding = ((VariableReference) expression).getBinding();
            if (list.contains(binding)) {
                return;
            }
            list.add(binding);
            return;
        }
        for (Operand operand : expression.operands()) {
            if (!operand.getOperandRole().isInChoiceGroup()) {
                gatherReferencedVariables(operand.getChildExpression(), list);
            }
        }
    }

    public static void gatherVariableReferences(Expression expression, Binding binding, List<VariableReference> list) {
        if (expression instanceof VariableReference) {
            VariableReference variableReference = (VariableReference) expression;
            if (variableReference.getBinding() == binding) {
                list.add(variableReference);
                return;
            }
        }
        Iterator<Operand> it2 = expression.operands().iterator();
        while (it2.hasNext()) {
            gatherVariableReferences(it2.next().getChildExpression(), binding, list);
        }
    }

    public static int getAxisNavigation(Expression expression) {
        Expression unfilteredExpression = unfilteredExpression(expression, true);
        if (unfilteredExpression instanceof AxisExpression) {
            return ((AxisExpression) unfilteredExpression).getAxis();
        }
        if (!(unfilteredExpression instanceof VennExpression)) {
            return -1;
        }
        VennExpression vennExpression = (VennExpression) unfilteredExpression;
        int axisNavigation = getAxisNavigation(vennExpression.getLhsExpression());
        if (axisNavigation == getAxisNavigation(vennExpression.getRhsExpression())) {
            return axisNavigation;
        }
        return -1;
    }

    public static URI getBaseURI(StaticContext staticContext, SourceLocator sourceLocator, boolean z) throws XPathException {
        String str;
        URI uri = null;
        try {
            str = staticContext.getStaticBaseURI();
            if (str == null) {
                try {
                    str = getCurrentDirectory();
                } catch (URISyntaxException unused) {
                    try {
                        uri = new URI(IriToUri.iriToUri(StringView.tidy(str)).toString());
                    } catch (URISyntaxException unused2) {
                    }
                    if (uri != null || !z) {
                        return uri;
                    }
                    XPathException xPathException = new XPathException("The base URI " + Err.wrap(staticContext.getStaticBaseURI(), 7) + " is not a valid URI");
                    xPathException.setLocator(sourceLocator);
                    throw xPathException;
                }
            }
            if (str == null || str.isEmpty()) {
                return null;
            }
            return new URI(str);
        } catch (URISyntaxException unused3) {
            str = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Expression getContextDocumentSettingContainer(Expression expression) {
        Expression parentExpression = expression.getParentExpression();
        Expression expression2 = expression;
        while (true) {
            Expression expression3 = parentExpression;
            Expression expression4 = expression2;
            Expression expression5 = expression3;
            if (expression5 == 0) {
                return null;
            }
            if (expression5 instanceof ContextSwitchingExpression) {
                ContextSwitchingExpression contextSwitchingExpression = (ContextSwitchingExpression) expression5;
                if (expression4 == contextSwitchingExpression.getActionExpression() && contextSwitchingExpression.getSelectExpression().hasSpecialProperty(65536)) {
                    expression5.resetLocalStaticProperties();
                    expression5.getSpecialProperties();
                    return getContextDocumentSettingContainer(expression5);
                }
            }
            Operand findOperand = findOperand(expression5, expression4);
            if (findOperand == null) {
                throw new AssertionError();
            }
            if (!findOperand.hasSameFocus()) {
                return expression5;
            }
            parentExpression = expression5.getParentExpression();
            expression2 = expression5;
        }
    }

    public static String getCurrentDirectory() {
        try {
            String property = System.getProperty(SystemUtils.f107422c);
            if (!property.endsWith("/")) {
                property = property + '/';
            }
            return new File(property).toURI().toString();
        } catch (Exception unused) {
            return null;
        }
    }

    public static Expression getFocusSettingContainer(Expression expression) {
        Expression parentExpression = expression.getParentExpression();
        while (true) {
            Expression expression2 = parentExpression;
            Expression expression3 = expression;
            expression = expression2;
            if (expression == null) {
                return null;
            }
            Operand findOperand = findOperand(expression, expression3);
            if (findOperand == null) {
                throw new AssertionError();
            }
            if (!findOperand.hasSameFocus()) {
                return expression;
            }
            parentExpression = expression.getParentExpression();
        }
    }

    public static Item getItemFromProcessMethod(Expression expression, XPathContext xPathContext) throws XPathException {
        Controller controller = xPathContext.getController();
        if (controller == null) {
            throw new NoDynamicContextException("No controller available");
        }
        SequenceCollector allocateSequenceOutputter = controller.allocateSequenceOutputter(1);
        expression.process(new ComplexContentOutputter(allocateSequenceOutputter), xPathContext);
        allocateSequenceOutputter.close();
        Item firstItem = allocateSequenceOutputter.getFirstItem();
        allocateSequenceOutputter.reset();
        return firstItem;
    }

    public static SequenceIterator getIteratorFromProcessMethod(Expression expression, XPathContext xPathContext) throws XPathException {
        SequenceCollector allocateSequenceOutputter = xPathContext.getController().allocateSequenceOutputter();
        expression.process(new ComplexContentOutputter(allocateSequenceOutputter), xPathContext);
        allocateSequenceOutputter.close();
        return allocateSequenceOutputter.iterate();
    }

    public static int getReferenceCount(Expression expression, Binding binding, boolean z) {
        if (expression instanceof VariableReference) {
            VariableReference variableReference = (VariableReference) expression;
            if (variableReference.getBinding() == binding) {
                if (variableReference.isFiltered()) {
                    return 10000;
                }
                return (z ? 10 : 1) + 0;
            }
        }
        if ((expression.getDependencies() & 128) == 0) {
            return 0;
        }
        int i = 0;
        for (Operand operand : expression.operands()) {
            i += getReferenceCount(operand.getChildExpression(), binding, z || operand.isEvaluatedRepeatedly());
            if (i >= 10000) {
                break;
            }
        }
        return i;
    }

    public static boolean hasLoopingSubexpression(Expression expression, Expression expression2) {
        for (Operand operand : expression.operands()) {
            if (operand.getChildExpression() == expression2) {
                return operand.isEvaluatedRepeatedly();
            }
        }
        return false;
    }

    public static String indent(int i) {
        StringBuilder sb = new StringBuilder(i);
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(GlideException.C1935a.f14609h);
        }
        return sb.toString();
    }

    public static Expression injectCode(Expression expression, CodeInjector codeInjector) {
        if (expression instanceof FLWORExpression) {
            ((FLWORExpression) expression).injectCode(codeInjector);
        } else if (expression instanceof TraceExpression) {
            for (Operand operand : ((TraceExpression) expression).getChild().operands()) {
                if (!operand.getOperandRole().isConstrainedClass()) {
                    operand.setChildExpression(injectCode(operand.getChildExpression(), codeInjector));
                }
            }
        } else {
            for (Operand operand2 : expression.operands()) {
                if (!operand2.getOperandRole().isConstrainedClass()) {
                    operand2.setChildExpression(injectCode(operand2.getChildExpression(), codeInjector));
                }
            }
        }
        return codeInjector.inject(expression);
    }

    public static boolean inlineVariableReferences(Expression expression, Binding binding, Expression expression2) {
        return inlineVariableReferencesInternal(expression, binding, expression2);
    }

    public static boolean inlineVariableReferencesInternal(Expression expression, Binding binding, Expression expression2) {
        Expression expression3;
        boolean z = false;
        if ((expression instanceof TryCatch) && !(expression2 instanceof Literal)) {
            return false;
        }
        for (Operand operand : expression.operands()) {
            Expression childExpression = operand.getChildExpression();
            if ((childExpression instanceof VariableReference) && ((VariableReference) childExpression).getBinding() == binding) {
                try {
                    expression3 = expression2.copy(new RebindingMap());
                    copyLocationInfo(childExpression, expression3);
                } catch (UnsupportedOperationException unused) {
                    expression3 = expression2;
                }
                operand.setChildExpression(expression3);
                z = true;
            } else {
                z |= inlineVariableReferencesInternal(childExpression, binding, expression2);
            }
        }
        if (z) {
            expression.resetLocalStaticProperties();
        }
        return z;
    }

    public static boolean isCallOnSystemFunction(Expression expression, String str) {
        return (expression instanceof StaticFunctionCall) && str.equals(((StaticFunctionCall) expression).getFunctionName().getLocalPart());
    }

    public static boolean isLocalConstructor(Expression expression) {
        if (!(expression instanceof ParentNodeConstructor) && !(expression instanceof SimpleNodeConstructor)) {
            return false;
        }
        Expression parentExpression = expression.getParentExpression();
        while (true) {
            Expression expression2 = parentExpression;
            Expression expression3 = expression;
            expression = expression2;
            if (expression == null) {
                return false;
            }
            if (expression instanceof ParentNodeConstructor) {
                return true;
            }
            if (findOperand(expression, expression3).getUsage() != OperandUsage.TRANSMISSION) {
                return false;
            }
            parentExpression = expression.getParentExpression();
        }
    }

    public static boolean isLoopingReference(VariableReference variableReference, Binding binding) {
        Expression parentExpression = variableReference.getParentExpression();
        Expression expression = variableReference;
        while (true) {
            Expression expression2 = parentExpression;
            Expression expression3 = expression;
            Expression expression4 = expression2;
            if (expression4 == null) {
                return true;
            }
            if (expression4 instanceof FLWORExpression) {
                if (expression4.hasVariableBinding(binding)) {
                    return ((FLWORExpression) expression4).hasLoopingVariableReference(binding);
                }
                if (hasLoopingSubexpression(expression4, expression3)) {
                    return true;
                }
            } else {
                if (expression4.getExpressionName().equals("tryCatch")) {
                    return true;
                }
                if ((expression4 instanceof ForEachGroup) && expression4.hasVariableBinding(binding)) {
                    return false;
                }
                if (hasLoopingSubexpression(expression4, expression3)) {
                    return true;
                }
                if (expression4.hasVariableBinding(binding)) {
                    return false;
                }
            }
            parentExpression = expression4.getParentExpression();
            expression = expression4;
        }
    }

    public static boolean isLoopingSubexpression(Expression expression, Expression expression2) {
        while (true) {
            Expression parentExpression = expression.getParentExpression();
            if (parentExpression == null) {
                return false;
            }
            if (hasLoopingSubexpression(parentExpression, expression)) {
                return true;
            }
            if (parentExpression == expression2) {
                return false;
            }
            expression = parentExpression;
        }
    }

    public static boolean isNotAllowedInUpdatingContext(Expression expression) {
        return (expression.isUpdatingExpression() || expression.isVacuousExpression()) ? false : true;
    }

    /* renamed from: j */
    public static Expression m62817j(Expression expression) {
        DocumentSorter documentSorter;
        Expression m62817j;
        if (expression instanceof DocumentSorter) {
            Expression baseExpression = ((DocumentSorter) expression).getBaseExpression();
            return baseExpression.hasSpecialProperty(131072) ? baseExpression : expression;
        }
        if ((expression instanceof ConditionalSorter) && (m62817j = m62817j((documentSorter = ((ConditionalSorter) expression).getDocumentSorter()))) != documentSorter) {
            return m62817j;
        }
        for (Operand operand : expression.operands()) {
            operand.setChildExpression(m62817j(operand.getChildExpression()));
        }
        return expression;
    }

    /* renamed from: k */
    public static boolean m62818k(Expression expression) {
        Iterator<Operand> it2 = expression.operands().iterator();
        if (!it2.hasNext()) {
            return false;
        }
        it2.next();
        return it2.hasNext();
    }

    /* renamed from: l */
    public static boolean m62819l(Expression expression) {
        return unfilteredExpression(expression, true) instanceof AxisExpression;
    }

    public static Sequence lazyEvaluate(Expression expression, XPathContext xPathContext, boolean z) throws XPathException {
        return lazyEvaluator(expression, z).evaluate(expression, xPathContext);
    }

    public static Evaluator lazyEvaluator(Expression expression, boolean z) {
        return expression instanceof Literal ? Evaluator.Literal.INSTANCE : expression instanceof VariableReference ? Evaluator.Variable.INSTANCE : expression instanceof SuppliedParameterReference ? Evaluator.SuppliedParameter.INSTANCE : (expression.getDependencies() & 109) != 0 ? eagerEvaluator(expression) : expression instanceof ErrorExpression ? Evaluator.SingleItem.INSTANCE : !Cardinality.allowsMany(expression.getCardinality()) ? eagerEvaluator(expression) : expression instanceof TailExpression ? ((TailExpression) expression).getBaseExpression() instanceof VariableReference ? Evaluator.LazyTail.INSTANCE : z ? Evaluator.MemoClosureEvaluator.INSTANCE : Evaluator.LazySequence.INSTANCE : ((expression instanceof Block) && ((Block) expression).isCandidateForSharedAppend()) ? Evaluator.SharedAppend.INSTANCE : z ? Evaluator.MemoClosureEvaluator.INSTANCE : Evaluator.LazySequence.INSTANCE;
    }

    /* renamed from: m */
    public static /* synthetic */ boolean m62820m(StructuredQName structuredQName, Expression expression) {
        return (expression instanceof FunctionCall) && structuredQName.equals(((FunctionCall) expression).getFunctionName());
    }

    public static Expression make(String str, StaticContext staticContext, int i, int i2, CodeInjector codeInjector) throws XPathException {
        XPathParser newExpressionParser = staticContext.getConfiguration().newExpressionParser("XP", false, staticContext.getXPathVersion());
        if (codeInjector != null) {
            newExpressionParser.setCodeInjector(codeInjector);
        }
        if (i2 == -1) {
            i2 = 0;
        }
        Expression parse = newExpressionParser.parse(str, i, i2, staticContext);
        setDeepRetainedStaticContext(parse, staticContext.makeRetainedStaticContext());
        return parse.simplify();
    }

    public static Expression makePathExpression(Expression expression, Expression expression2) {
        if ((expression instanceof RootExpression) && (expression2 instanceof AxisExpression) && ((AxisExpression) expression2).getAxis() == 9) {
            return Literal.makeEmptySequence();
        }
        SlashExpression slashExpression = new SlashExpression(expression, expression2);
        if (expression2 instanceof SlashExpression) {
            SlashExpression slashExpression2 = (SlashExpression) expression2;
            if (m62819l(slashExpression2.getSelectExpression()) && m62819l(slashExpression2.getActionExpression())) {
                slashExpression.setStart(makePathExpression(expression, slashExpression2.getSelectExpression()));
                slashExpression.setStep(slashExpression2.getActionExpression());
            }
        }
        return slashExpression;
    }

    public static int markTailFunctionCalls(Expression expression, StructuredQName structuredQName, int i) {
        return expression.markTailFunctionCalls(structuredQName, i);
    }

    /* renamed from: n */
    public static /* synthetic */ boolean m62821n(Expression expression, Object obj) throws XPathException {
        expression.setExtraProperty("P+S", null);
        expression.setExtraProperty("inversion", null);
        return false;
    }

    /* renamed from: o */
    public static /* synthetic */ boolean m62822o(Expression expression, Object obj) throws XPathException {
        if (expression instanceof UserFunctionCall) {
            ((UserFunctionCall) expression).allocateArgumentEvaluators();
        }
        if (!(expression instanceof LocalParam)) {
            return false;
        }
        ((LocalParam) expression).computeEvaluationMode();
        return false;
    }

    public static Expression optimizeComponentBody(Expression expression, Compilation compilation, ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, boolean z) throws XPathException {
        Expression promoteExpressionsToGlobal;
        expressionVisitor.getConfiguration();
        Optimizer obtainOptimizer = expressionVisitor.obtainOptimizer();
        expressionVisitor.getStaticContext();
        if (obtainOptimizer.isOptionSet(256)) {
            resetPropertiesWithinSubtree(expression);
            if (obtainOptimizer.isOptionSet(256)) {
                expression = expression.optimize(expressionVisitor, contextItemStaticInfo);
            }
            expression.setParentExpression(null);
            if (z && compilation != null && (promoteExpressionsToGlobal = obtainOptimizer.promoteExpressionsToGlobal(expression, compilation.getPrincipalStylesheetModule(), expressionVisitor)) != null) {
                resetPropertiesWithinSubtree(promoteExpressionsToGlobal);
                expression = promoteExpressionsToGlobal.optimize(expressionVisitor, contextItemStaticInfo);
            }
            if (obtainOptimizer.isOptionSet(1)) {
                expression = LoopLifter.process(expression, expressionVisitor, contextItemStaticInfo);
            }
        } else {
            expression = m62817j(expression);
        }
        if (!expressionVisitor.isOptimizeForStreaming()) {
            expression = obtainOptimizer.eliminateCommonSubexpressions(expression);
        }
        obtainOptimizer.prepareForStreaming(expression);
        computeEvaluationModesForUserFunctionCalls(expression);
        expression.restoreParentPointers();
        return expression;
    }

    /* renamed from: p */
    public static /* synthetic */ boolean m62823p(Expression expression) {
        return expression instanceof LocalParam;
    }

    public static String parenthesize(Expression expression) {
        if (!expression.operands().iterator().hasNext()) {
            return expression.toString();
        }
        return MotionUtils.f31761c + expression.toString() + MotionUtils.f31762d;
    }

    public static String parenthesizeShort(Expression expression) {
        if (!m62818k(expression)) {
            return expression.toShortString();
        }
        return MotionUtils.f31761c + expression.toShortString() + MotionUtils.f31762d;
    }

    public static boolean processExpressionTree(Expression expression, Object obj, ExpressionAction expressionAction) throws XPathException {
        if (expressionAction.process(expression, obj)) {
            return false;
        }
        Iterator<Operand> it2 = expression.operands().iterator();
        while (it2.hasNext()) {
            if (processExpressionTree(it2.next().getChildExpression(), obj, expressionAction)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: q */
    public static /* synthetic */ boolean m62824q(Expression expression, Expression expression2) {
        if (!(expression2 instanceof LocalVariableReference)) {
            return false;
        }
        Object binding = ((LocalVariableReference) expression2).getBinding();
        return ((binding instanceof Expression) && contains(expression, (Expression) binding)) ? false : true;
    }

    /* renamed from: r */
    public static /* synthetic */ boolean m62825r(Class cls, Expression expression) {
        return cls.isAssignableFrom(expression.getClass());
    }

    public static void rebindVariableReferences(Expression expression, Binding binding, Binding binding2) {
        if (!(expression instanceof VariableReference)) {
            Iterator<Operand> it2 = expression.operands().iterator();
            while (it2.hasNext()) {
                rebindVariableReferences(it2.next().getChildExpression(), binding, binding2);
            }
        } else {
            VariableReference variableReference = (VariableReference) expression;
            if (variableReference.getBinding() == binding) {
                variableReference.fixup(binding2);
            }
        }
    }

    public static boolean refersToVariableOrFunction(Expression expression) {
        return contains(expression, false, new Predicate() { // from class: com.sunia.HTREnginev2.f3g
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m62827t;
                m62827t = ExpressionTool.m62827t((Expression) obj);
                return m62827t;
            }
        });
    }

    public static boolean replaceCallsToCurrent(Expression expression, LocalBinding localBinding) {
        boolean z = false;
        for (Operand operand : expression.operands()) {
            Expression childExpression = operand.getChildExpression();
            if (childExpression.isCallOn(Current.class)) {
                LocalVariableReference localVariableReference = new LocalVariableReference(localBinding);
                copyLocationInfo(childExpression, localVariableReference);
                operand.setChildExpression(localVariableReference);
                z = true;
                localBinding.addReference(localVariableReference, true);
            } else {
                z = replaceCallsToCurrent(childExpression, localBinding);
            }
        }
        if (z) {
            expression.resetLocalStaticProperties();
        }
        return z;
    }

    public static boolean replaceSelectedSubexpressions(Expression expression, Predicate<Expression> predicate, Expression expression2, boolean z) {
        boolean z2 = false;
        for (Operand operand : expression.operands()) {
            if (z2) {
                z = true;
            }
            Expression childExpression = operand.getChildExpression();
            if (predicate.test(childExpression)) {
                operand.setChildExpression(z ? expression2.copy(new RebindingMap()) : expression2);
                z2 = true;
            } else {
                z2 |= replaceSelectedSubexpressions(childExpression, predicate, expression2, z);
            }
        }
        return z2;
    }

    public static boolean replaceTrivialCallsToCurrent(Expression expression) {
        boolean z = false;
        for (Operand operand : expression.operands()) {
            if (operand.hasSameFocus()) {
                Expression childExpression = operand.getChildExpression();
                if (childExpression.isCallOn(Current.class)) {
                    CurrentItemExpression currentItemExpression = new CurrentItemExpression();
                    copyLocationInfo(childExpression, currentItemExpression);
                    operand.setChildExpression(currentItemExpression);
                    z = true;
                } else {
                    z = replaceTrivialCallsToCurrent(childExpression);
                }
            }
        }
        if (z) {
            expression.resetLocalStaticProperties();
        }
        return z;
    }

    public static void replaceVariableReferences(Expression expression, final Binding binding, Expression expression2, boolean z) {
        if (replaceSelectedSubexpressions(expression, new Predicate() { // from class: com.sunia.HTREnginev2.e3g
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m62828u;
                m62828u = ExpressionTool.m62828u(Binding.this, (Expression) obj);
                return m62828u;
            }
        }, expression2, z)) {
            resetPropertiesWithinSubtree(expression);
        }
    }

    public static void resetPropertiesWithinSubtree(Expression expression) {
        expression.resetLocalStaticProperties();
        if (expression instanceof LocalVariableReference) {
            VariableReference variableReference = (LocalVariableReference) expression;
            LocalBinding binding = variableReference.getBinding();
            if (binding instanceof Assignation) {
                binding.addReference(variableReference, variableReference.isInLoop());
            }
        }
        for (Operand operand : expression.operands()) {
            resetPropertiesWithinSubtree(operand.getChildExpression());
            operand.getChildExpression().setParentExpression(expression);
        }
    }

    public static void resetStaticProperties(Expression expression) {
        int i = 0;
        while (expression != null) {
            expression.resetLocalStaticProperties();
            expression = expression.getParentExpression();
            int i2 = i + 1;
            if (i > 100000) {
                throw new IllegalStateException("Loop in parent expression chain");
            }
            i = i2;
        }
    }

    public static Expression resolveCallsToCurrentFunction(Expression expression) {
        if (expression.isCallOn(Current.class)) {
            ContextItemExpression contextItemExpression = new ContextItemExpression();
            copyLocationInfo(expression, contextItemExpression);
            return contextItemExpression;
        }
        StructuredQName structuredQName = Current.FN_CURRENT;
        if (callsFunction(expression, structuredQName, true)) {
            replaceTrivialCallsToCurrent(expression);
        }
        if (!callsFunction(expression, structuredQName, false)) {
            return expression;
        }
        LetExpression letExpression = new LetExpression();
        letExpression.setVariableQName(new StructuredQName("vv", NamespaceConstant.SAXON_GENERATED_VARIABLE, Keywords.FUNC_CURRENT_STRING + expression.hashCode()));
        letExpression.setRequiredType(SequenceType.SINGLE_ITEM);
        letExpression.setSequence(new CurrentItemExpression());
        replaceCallsToCurrent(expression, letExpression);
        letExpression.setAction(expression);
        return letExpression;
    }

    /* renamed from: s */
    public static /* synthetic */ boolean m62826s(Binding[] bindingArr, Expression expression) {
        if (expression instanceof VariableReference) {
            for (Binding binding : bindingArr) {
                if (((VariableReference) expression).getBinding() == binding) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void setDeepRetainedStaticContext(Expression expression, RetainedStaticContext retainedStaticContext) {
        if (expression.getLocalRetainedStaticContext() == null) {
            expression.setRetainedStaticContextLocally(retainedStaticContext);
        } else {
            retainedStaticContext = expression.getLocalRetainedStaticContext();
        }
        Iterator<Operand> it2 = expression.operands().iterator();
        while (it2.hasNext()) {
            setDeepRetainedStaticContext(it2.next().getChildExpression(), retainedStaticContext);
        }
    }

    /* renamed from: t */
    public static /* synthetic */ boolean m62827t(Expression expression) {
        return (expression instanceof VariableReference) || (expression instanceof UserFunctionCall) || (expression instanceof Binding) || (expression instanceof CallTemplate) || (expression instanceof ApplyTemplates) || (expression instanceof ApplyImports) || isCallOnSystemFunction(expression, "function-lookup") || expression.isCallOn(ApplyFn.class);
    }

    public static Expression tryToFactorOutDot(Expression expression, ItemType itemType) {
        if (expression instanceof ContextItemExpression) {
            return null;
        }
        if (expression instanceof LetExpression) {
            LetExpression letExpression = (LetExpression) expression;
            if (letExpression.getSequence() instanceof ContextItemExpression) {
                if (factorOutDot(letExpression.getAction(), letExpression)) {
                    expression.resetLocalStaticProperties();
                }
                return expression;
            }
        }
        if ((expression.getDependencies() & 18) == 0) {
            return null;
        }
        LetExpression letExpression2 = new LetExpression();
        letExpression2.setVariableQName(new StructuredQName("saxon", NamespaceConstant.SAXON, gon.f71308x0 + expression.hashCode()));
        letExpression2.setRequiredType(SequenceType.makeSequenceType(itemType, 16384));
        letExpression2.setSequence(new ContextItemExpression());
        letExpression2.setAction(expression);
        return factorOutDot(expression, letExpression2) ? letExpression2 : expression;
    }

    /* renamed from: u */
    public static /* synthetic */ boolean m62828u(Binding binding, Expression expression) {
        return (expression instanceof VariableReference) && ((VariableReference) expression).getBinding() == binding;
    }

    public static Expression unfilteredExpression(Expression expression, boolean z) {
        return (!(expression instanceof FilterExpression) || (!z && ((FilterExpression) expression).isFilterIsPositional())) ? ((expression instanceof TailExpression) && z) ? unfilteredExpression(((UnaryExpression) expression).getBaseExpression(), z) : ((expression instanceof SingleItemFilter) && z) ? unfilteredExpression(((SingleItemFilter) expression).getBaseExpression(), z) : expression : unfilteredExpression(((FilterExpression) expression).getSelectExpression(), z);
    }

    public static Expression unsortedIfHomogeneous(Expression expression, boolean z) throws XPathException {
        return ((expression instanceof Literal) || (expression.getItemType() instanceof AnyItemType)) ? expression : expression.unordered(false, z);
    }

    /* renamed from: v */
    public static VariableReference m62829v(Binding binding) {
        return binding.isGlobal() ? new GlobalVariableReference((GlobalVariable) binding) : new LocalVariableReference((LocalBinding) binding);
    }

    public static void validateTree(Expression expression) {
        try {
            Iterator<Operand> it2 = expression.checkedOperands().iterator();
            while (it2.hasNext()) {
                validateTree(it2.next().getChildExpression());
            }
        } catch (IllegalStateException e) {
            e.printStackTrace();
        }
    }

    public static boolean contains(Expression expression, boolean z, Predicate<Expression> predicate) {
        if (predicate.test(expression)) {
            return true;
        }
        for (Operand operand : expression.operands()) {
            if (operand.hasSameFocus() || !z) {
                if (contains(operand.getChildExpression(), z, predicate)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void ebvError(String str, Expression expression) throws XPathException {
        XPathException xPathException = new XPathException("Effective boolean value is not defined for " + str);
        xPathException.setErrorCode("FORG0006");
        xPathException.setIsTypeError(true);
        xPathException.setFailingExpression(expression);
        throw xPathException;
    }

    public static boolean effectiveBooleanValue(Item item) throws XPathException {
        if (item == null) {
            return false;
        }
        if (item instanceof NodeInfo) {
            return true;
        }
        if (item instanceof AtomicValue) {
            if (item instanceof BooleanValue) {
                return ((BooleanValue) item).getBooleanValue();
            }
            if (item instanceof StringValue) {
                return !((StringValue) item).isEmpty();
            }
            if (item instanceof NumericValue) {
                NumericValue numericValue = (NumericValue) item;
                return (numericValue.compareTo(0L) == 0 || numericValue.isNaN()) ? false : true;
            }
            if (item.getGenre() == Genre.EXTERNAL) {
                return true;
            }
            ebvError("an atomic value of type " + ((AtomicValue) item).getPrimitiveType().getDisplayName());
            return false;
        }
        ebvError(item.getGenre().toString());
        return false;
    }
}
