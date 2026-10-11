package net.p110sf.saxon.functions;

import java.util.Iterator;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.CardinalityCheckingIterator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.FunctionCall;
import net.p110sf.saxon.expr.ItemMapper;
import net.p110sf.saxon.expr.ItemMappingFunction;
import net.p110sf.saxon.expr.ItemMappingIterator;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.functions.IntegratedFunctionCall;
import net.p110sf.saxon.lib.ExtensionFunctionCall;
import net.p110sf.saxon.lib.ExtensionFunctionDefinition;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class IntegratedFunctionCall extends FunctionCall implements Callable {

    /* renamed from: o */
    public final StructuredQName f100253o;

    /* renamed from: p */
    public final ExtensionFunctionCall f100254p;

    /* renamed from: q */
    public SequenceType f100255q = SequenceType.ANY_SEQUENCE;

    /* renamed from: r */
    public int f100256r = 0;

    /* loaded from: classes11.dex */
    public static class ConfigurationCheckingFunction implements ItemMappingFunction {

        /* renamed from: e */
        public final Configuration f100257e;

        public ConfigurationCheckingFunction(Configuration configuration) {
            this.f100257e = configuration;
        }

        @Override // net.p110sf.saxon.expr.ItemMappingFunction
        public Item mapItem(Item item) throws XPathException {
            if (!(item instanceof NodeInfo) || this.f100257e.isCompatible(((NodeInfo) item).getConfiguration())) {
                return item;
            }
            throw new XPathException("Node returned by extension function was created with an incompatible Configuration", SaxonErrorCode.SXXP0004);
        }
    }

    public IntegratedFunctionCall(StructuredQName structuredQName, ExtensionFunctionCall extensionFunctionCall) {
        this.f100253o = structuredQName;
        this.f100254p = extensionFunctionCall;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ Item m63018e(ItemType itemType, TypeHierarchy typeHierarchy, RoleDiagnostic roleDiagnostic, Item item) throws XPathException {
        if (itemType.matches(item, typeHierarchy)) {
            return item;
        }
        XPathException xPathException = new XPathException(roleDiagnostic.composeErrorMessage(itemType, item, typeHierarchy), "XPTY0004");
        xPathException.setLocation(getLocation());
        throw xPathException;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return this.f100254p.call(xPathContext, sequenceArr);
    }

    @Override // net.p110sf.saxon.expr.FunctionCall
    public void checkArguments(ExpressionVisitor expressionVisitor) throws XPathException {
        ExtensionFunctionDefinition definition = this.f100254p.getDefinition();
        checkArgumentCount(definition.getMinimumNumberOfArguments(), definition.getMaximumNumberOfArguments());
        int arity = getArity();
        SequenceType[] argumentTypes = definition.getArgumentTypes();
        if (argumentTypes == null || (arity != 0 && argumentTypes.length == 0)) {
            throw new XPathException("Integrated function " + getDisplayName() + " failed to declare its argument types");
        }
        SequenceType[] sequenceTypeArr = new SequenceType[arity];
        TypeChecker typeChecker = expressionVisitor.getConfiguration().getTypeChecker(false);
        int i = 0;
        while (i < arity) {
            setArg(i, typeChecker.staticTypeCheck(getArg(i), i < argumentTypes.length ? argumentTypes[i] : argumentTypes[argumentTypes.length - 1], new RoleDiagnostic(0, getFunctionName().getDisplayName(), i), expressionVisitor));
            sequenceTypeArr[i] = SequenceType.makeSequenceType(getArg(i).getItemType(), getArg(i).getCardinality());
            i++;
        }
        this.f100255q = definition.getResultType(sequenceTypeArr);
        if (this.f100256r == 0) {
            this.f100254p.supplyStaticContext(expressionVisitor.getStaticContext(), 0, getArguments());
        }
        this.f100256r++;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return this.f100255q.getCardinality();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return this.f100254p.getDefinition().hasSideEffects() ? 33554432 : 8388608;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        ExtensionFunctionCall makeCallExpression = this.f100254p.getDefinition().makeCallExpression();
        makeCallExpression.setDefinition(this.f100254p.getDefinition());
        this.f100254p.copyLocalData(makeCallExpression);
        IntegratedFunctionCall integratedFunctionCall = new IntegratedFunctionCall(getFunctionName(), makeCallExpression);
        int arity = getArity();
        Expression[] expressionArr = new Expression[arity];
        for (int i = 0; i < arity; i++) {
            expressionArr[i] = getArg(i).copy(rebindingMap);
        }
        integratedFunctionCall.setArguments(expressionArr);
        integratedFunctionCall.f100255q = this.f100255q;
        integratedFunctionCall.f100256r = this.f100256r;
        ExpressionTool.copyLocationInfo(this, integratedFunctionCall);
        return integratedFunctionCall;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
        int arity = getArity();
        Sequence[] sequenceArr = new Sequence[arity];
        for (int i = 0; i < arity; i++) {
            sequenceArr[i] = SequenceTool.toLazySequence(getArg(i).iterate(xPathContext));
        }
        try {
            return this.f100254p.effectiveBooleanValue(xPathContext, sequenceArr);
        } catch (XPathException e) {
            e.maybeSetLocation(this.getLocation());
            throw e;
        }
    }

    @Override // net.p110sf.saxon.expr.FunctionCall, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("ifCall", this);
        expressionPresenter.emitAttribute("name", getFunctionName());
        expressionPresenter.emitAttribute("type", this.f100255q.toAlphaCode());
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            it2.next().getChildExpression().export(expressionPresenter);
        }
        expressionPresenter.endElement();
    }

    public ExtensionFunctionCall getFunction() {
        return this.f100254p;
    }

    @Override // net.p110sf.saxon.expr.FunctionCall
    public StructuredQName getFunctionName() {
        return this.f100253o;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getIntrinsicDependencies() {
        return this.f100254p.getDefinition().dependsOnFocus() ? 30 : 0;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return this.f100255q.getPrimaryType();
    }

    @Override // net.p110sf.saxon.expr.FunctionCall
    public Function getTargetFunction(XPathContext xPathContext) {
        return null;
    }

    @Override // net.p110sf.saxon.expr.FunctionCall, net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        ExtensionFunctionDefinition definition = this.f100254p.getDefinition();
        int arity = getArity();
        Sequence[] sequenceArr = new Sequence[arity];
        for (int i = 0; i < arity; i++) {
            sequenceArr[i] = SequenceTool.toLazySequence(getArg(i).iterate(xPathContext));
        }
        final RoleDiagnostic roleDiagnostic = new RoleDiagnostic(5, getFunctionName().getDisplayName(), 0);
        final TypeHierarchy typeHierarchy = xPathContext.getConfiguration().getTypeHierarchy();
        try {
            SequenceIterator iterate = this.f100254p.call(xPathContext, sequenceArr).iterate();
            if (definition.trustResultType()) {
                return iterate;
            }
            int cardinality = this.f100255q.getCardinality();
            if (cardinality != 57344) {
                iterate = new CardinalityCheckingIterator(iterate, cardinality, roleDiagnostic, getLocation());
            }
            final ItemType primaryType = this.f100255q.getPrimaryType();
            if (primaryType != AnyItemType.getInstance()) {
                iterate = new ItemMappingIterator(iterate, ItemMapper.m62594of(new ItemMapper.Lambda() { // from class: com.sunia.HTREnginev2.lni
                    @Override // net.sf.saxon.expr.ItemMapper.Lambda
                    public final Item map(Item item) {
                        Item m63018e;
                        m63018e = IntegratedFunctionCall.this.m63018e(primaryType, typeHierarchy, roleDiagnostic, item);
                        return m63018e;
                    }
                }), true);
            }
            return typeHierarchy.relationship(primaryType, AnyNodeTest.getInstance()) != Affinity.DISJOINT ? new ItemMappingIterator(iterate, new ConfigurationCheckingFunction(xPathContext.getConfiguration()), true) : iterate;
        } catch (XPathException e) {
            e.maybeSetLocation(getLocation());
            throw e;
        }
    }

    @Override // net.p110sf.saxon.expr.FunctionCall
    public Expression preEvaluate(ExpressionVisitor expressionVisitor) {
        return this;
    }

    public void setResultType(SequenceType sequenceType) {
        this.f100255q = sequenceType;
    }

    @Override // net.p110sf.saxon.expr.FunctionCall, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression rewrite;
        Expression typeCheck = super.typeCheck(expressionVisitor, contextItemStaticInfo);
        if (!(typeCheck instanceof IntegratedFunctionCall) || (rewrite = ((IntegratedFunctionCall) typeCheck).f100254p.rewrite(expressionVisitor.getStaticContext(), getArguments())) == null) {
            return typeCheck;
        }
        ExpressionTool.copyLocationInfo(this, rewrite);
        return rewrite.simplify().typeCheck(expressionVisitor, contextItemStaticInfo).optimize(expressionVisitor, contextItemStaticInfo);
    }
}
