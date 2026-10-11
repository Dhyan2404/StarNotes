package net.p110sf.saxon.expr;

import com.sun.org.apache.xalan.internal.templates.Constants;
import com.thegrizzlylabs.sardineandroid.DavPrincipal;
import java.util.ArrayList;
import java.util.Iterator;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.TailCallLoop;
import net.p110sf.saxon.expr.instruct.Block;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.Evaluator;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.Visibility;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class UserFunctionCall extends FunctionCall implements UserFunctionResolvable, ComponentInvocation, ContextOriginator {
    public static final int FOREIGN_TAIL_CALL = 1;
    public static final int NOT_TAIL_CALL = 0;
    public static final int SELF_TAIL_CALL = 2;

    /* renamed from: v */
    public static final int f99405v = 877;

    /* renamed from: w */
    public static final int f99406w = 0;

    /* renamed from: o */
    public SequenceType f99407o;

    /* renamed from: p */
    public UserFunction f99408p;

    /* renamed from: s */
    public StructuredQName f99411s;

    /* renamed from: q */
    public int f99409q = -1;

    /* renamed from: r */
    public int f99410r = 0;

    /* renamed from: t */
    public boolean f99412t = false;

    /* renamed from: u */
    public Evaluator[] f99413u = null;

    @Override // net.p110sf.saxon.expr.Expression
    public PathMap.PathMapNodeSet addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        return addExternalFunctionCallToPathMap(pathMap, pathMapNodeSet);
    }

    public void allocateArgumentEvaluators() {
        this.f99413u = new Evaluator[getArity()];
        Iterator<Operand> it2 = operands().iterator();
        int i = 0;
        while (it2.hasNext()) {
            Expression childExpression = it2.next().getChildExpression();
            int cardinality = this.f99408p.getArgumentType(i).getCardinality();
            if (i == 0 && this.f99408p.getDeclaredStreamability().isConsuming()) {
                this.f99413u[i] = Evaluator.StreamingArgument.INSTANCE;
            } else if (this.f99408p.getParameterDefinitions()[i].isIndexedVariable()) {
                this.f99413u[i] = Evaluator.MakeIndexedVariable.INSTANCE;
            } else if (childExpression instanceof Literal) {
                this.f99413u[i] = Evaluator.Literal.INSTANCE;
            } else if (childExpression instanceof VariableReference) {
                this.f99413u[i] = Evaluator.Variable.INSTANCE;
            } else if (cardinality == 16384) {
                this.f99413u[i] = Evaluator.SingleItem.INSTANCE;
            } else if ((childExpression.getDependencies() & f99405v) != 0) {
                this.f99413u[i] = new Evaluator.EagerSequence();
            } else if (!Cardinality.allowsMany(childExpression.getCardinality()) && childExpression.getCost() < 20.0d) {
                this.f99413u[i] = new Evaluator.EagerSequence();
            } else if (cardinality == 24576) {
                this.f99413u[i] = Evaluator.OptionalItem.INSTANCE;
            } else if ((childExpression instanceof Block) && ((Block) childExpression).isCandidateForSharedAppend()) {
                this.f99413u[i] = Evaluator.SharedAppend.INSTANCE;
            } else {
                this.f99413u[i] = Evaluator.MemoClosureEvaluator.INSTANCE;
            }
            i++;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        SequenceType sequenceType = this.f99407o;
        if (sequenceType == null) {
            return 57344;
        }
        return sequenceType.getCardinality();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        UserFunction userFunction = this.f99408p;
        if (userFunction == null) {
            return super.computeSpecialProperties();
        }
        if (userFunction.getBody() == null || !(this.f99408p.getDeclaredVisibility() == Visibility.PRIVATE || this.f99408p.getDeclaredVisibility() == Visibility.FINAL)) {
            return super.computeSpecialProperties();
        }
        ArrayList arrayList = new ArrayList();
        ExpressionTool.gatherCalledFunctions(this.f99408p.getBody(), arrayList);
        int specialProperties = arrayList.isEmpty() ? this.f99408p.getBody().getSpecialProperties() : super.computeSpecialProperties();
        return this.f99408p.getDeterminism() != UserFunction.Determinism.PROACTIVE ? specialProperties | 8388608 : specialProperties;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        if (this.f99408p == null) {
            throw new UnsupportedOperationException("UserFunctionCall.copy()");
        }
        UserFunctionCall userFunctionCall = new UserFunctionCall();
        userFunctionCall.setFunction(this.f99408p);
        userFunctionCall.setStaticType(this.f99407o);
        int arity = getArity();
        Expression[] expressionArr = new Expression[arity];
        for (int i = 0; i < arity; i++) {
            expressionArr[i] = getArg(i).copy(rebindingMap);
        }
        userFunctionCall.setArguments(expressionArr);
        ExpressionTool.copyLocationInfo(this, userFunctionCall);
        return userFunctionCall;
    }

    /* renamed from: d */
    public final Sequence m62653d(XPathContext xPathContext) throws XPathException {
        UserFunction userFunction;
        XPathContextMajor makeNewContext;
        Sequence[] evaluateArguments = evaluateArguments(xPathContext);
        if (isTailCall()) {
            m62654e(xPathContext, evaluateArguments);
            return EmptySequence.getInstance();
        }
        if (this.f99409q >= 0) {
            Component targetComponent = getTargetComponent(xPathContext);
            if (targetComponent.isHiddenAbstractComponent()) {
                throw new XPathException("Cannot call an abstract function (" + this.f99411s.getDisplayName() + ") with no implementation", "XTDE3052");
            }
            userFunction = (UserFunction) targetComponent.getActor();
            makeNewContext = userFunction.makeNewContext(xPathContext, (ContextOriginator) this);
            makeNewContext.setCurrentComponent(targetComponent);
            makeNewContext.setOrigin(this);
        } else {
            userFunction = this.f99408p;
            makeNewContext = userFunction.makeNewContext(xPathContext, (ContextOriginator) this);
            makeNewContext.setOrigin(this);
        }
        try {
            return userFunction.call(makeNewContext, evaluateArguments);
        } catch (StackOverflowError unused) {
            throw new XPathException.StackOverflow("Too many nested function calls. May be due to infinite recursion", SaxonErrorCode.SXLM0001, this.getLocation());
        } catch (UncheckedXPathException e) {
            XPathException xPathException = e.getXPathException();
            xPathException.maybeSetLocation(this.getLocation());
            throw xPathException;
        }
    }

    /* renamed from: e */
    public final void m62654e(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        if (this.f99409q < 0) {
            TailCallLoop.TailCallFunction tailCallFunction = new TailCallLoop.TailCallFunction();
            tailCallFunction.function = this.f99408p;
            ((XPathContextMajor) xPathContext).requestTailCall(tailCallFunction, sequenceArr);
            return;
        }
        TailCallLoop.TailCallComponent tailCallComponent = new TailCallLoop.TailCallComponent();
        Component targetComponent = getTargetComponent(xPathContext);
        tailCallComponent.component = targetComponent;
        tailCallComponent.function = (UserFunction) targetComponent.getActor();
        if (!targetComponent.isHiddenAbstractComponent()) {
            ((XPathContextMajor) xPathContext).requestTailCall(tailCallComponent, sequenceArr);
            return;
        }
        throw new XPathException("Cannot call an abstract function (" + this.f99411s.getDisplayName() + ") with no implementation", "XTDE3052");
    }

    @Override // net.p110sf.saxon.expr.FunctionCall
    public Sequence[] evaluateArguments(XPathContext xPathContext) throws XPathException {
        return evaluateArguments(xPathContext, false);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Item evaluateItem(XPathContext xPathContext) throws XPathException {
        return m62653d(xPathContext).head();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void evaluatePendingUpdates(XPathContext xPathContext, PendingUpdateList pendingUpdateList) throws XPathException {
        Sequence[] evaluateArguments = evaluateArguments(xPathContext);
        XPathContextMajor newCleanContext = xPathContext.newCleanContext();
        newCleanContext.setOrigin(this);
        this.f99408p.callUpdating(evaluateArguments, newCleanContext, pendingUpdateList);
    }

    @Override // net.p110sf.saxon.expr.FunctionCall, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("ufCall", this);
        if (getFunctionName() != null) {
            expressionPresenter.emitAttribute("name", getFunctionName());
            int i = this.f99410r;
            expressionPresenter.emitAttribute("tailCall", i == 0 ? "false" : i == 2 ? DavPrincipal.KEY_SELF : "foreign");
        }
        expressionPresenter.emitAttribute("bSlot", "" + getBindingSlot());
        if (this.f99413u != null && getArity() > 0) {
            StringBuilder sb = new StringBuilder(64);
            for (Evaluator evaluator : this.f99413u) {
                sb.append(evaluator.getCode() + " ");
            }
            expressionPresenter.emitAttribute(Constants.ELEMNAME_EVAL_STRING, Whitespace.trim(sb.toString()));
        }
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            it2.next().getChildExpression().export(expressionPresenter);
        }
        if (getFunctionName() == null) {
            expressionPresenter.setChildRole("inline");
            this.f99408p.getBody().export(expressionPresenter);
            expressionPresenter.endElement();
        }
        expressionPresenter.endElement();
    }

    public Evaluator[] getArgumentEvaluators() {
        return this.f99413u;
    }

    @Override // net.p110sf.saxon.expr.ComponentInvocation
    public int getBindingSlot() {
        return this.f99409q;
    }

    @Override // net.p110sf.saxon.expr.FunctionCall, net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "userFunctionCall";
    }

    @Override // net.p110sf.saxon.expr.ComponentInvocation
    public Component getFixedTarget() {
        Visibility visibility = this.f99408p.getDeclaringComponent().getVisibility();
        if (visibility == Visibility.PRIVATE || visibility == Visibility.FINAL) {
            return this.f99408p.getDeclaringComponent();
        }
        return null;
    }

    public UserFunction getFunction() {
        return this.f99408p;
    }

    @Override // net.p110sf.saxon.expr.FunctionCall
    public final StructuredQName getFunctionName() {
        StructuredQName structuredQName = this.f99411s;
        return structuredQName == null ? this.f99408p.getFunctionName() : structuredQName;
    }

    @Override // net.p110sf.saxon.expr.FunctionCall, net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return Cardinality.allowsMany(getCardinality()) ? 6 : 1;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getIntrinsicDependencies() {
        return 256;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        SequenceType sequenceType = this.f99407o;
        return sequenceType == null ? AnyItemType.getInstance() : sequenceType.getPrimaryType();
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.trace.Traceable
    public StructuredQName getObjectName() {
        return getFunctionName();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Object getProperty(String str) {
        return str.equals("target") ? this.f99408p : super.getProperty(str);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        UserFunction function = getFunction();
        return function == null ? UType.ANY : function.getResultType().getPrimaryType().getUType();
    }

    @Override // net.p110sf.saxon.expr.ComponentInvocation
    public SymbolicName getSymbolicName() {
        return new SymbolicName.C18533F(getFunctionName(), getArity());
    }

    public Component getTarget() {
        return this.f99408p.getDeclaringComponent();
    }

    public Component getTargetComponent(XPathContext xPathContext) {
        int i = this.f99409q;
        return i == -1 ? this.f99408p.getDeclaringComponent() : xPathContext.getTargetComponent(i);
    }

    public boolean isBeingInlined() {
        return this.f99412t;
    }

    public boolean isRecursiveTailCall() {
        return this.f99410r == 2;
    }

    public boolean isTailCall() {
        return this.f99410r != 0;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isUpdatingExpression() {
        return this.f99408p.isUpdating();
    }

    @Override // net.p110sf.saxon.expr.FunctionCall, net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        return m62653d(xPathContext).iterate();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int markTailFunctionCalls(StructuredQName structuredQName, int i) {
        int i2 = (getFunctionName().equals(structuredQName) && i == getArity()) ? 2 : 1;
        this.f99410r = i2;
        return i2;
    }

    @Override // net.p110sf.saxon.expr.FunctionCall, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression optimize = super.optimize(expressionVisitor, contextItemStaticInfo);
        return (optimize != this || this.f99408p == null) ? optimize : expressionVisitor.obtainOptimizer().tryInlineFunctionCall(this, expressionVisitor, contextItemStaticInfo);
    }

    @Override // net.p110sf.saxon.expr.FunctionCall
    public Expression preEvaluate(ExpressionVisitor expressionVisitor) {
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void process(Outputter outputter, XPathContext xPathContext) throws XPathException {
        Sequence[] evaluateArguments = evaluateArguments(xPathContext);
        if (isTailCall()) {
            m62654e(xPathContext, evaluateArguments);
            return;
        }
        if (this.f99409q < 0) {
            XPathContextMajor makeNewContext = this.f99408p.makeNewContext(xPathContext, (ContextOriginator) this);
            makeNewContext.setOrigin(this);
            this.f99408p.process(makeNewContext, evaluateArguments, outputter);
            return;
        }
        Component targetComponent = getTargetComponent(xPathContext);
        UserFunction userFunction = (UserFunction) targetComponent.getActor();
        if (targetComponent.getVisibility() == Visibility.ABSTRACT) {
            throw new XPathException("Cannot call a function defined with visibility=abstract", "XTDE3052");
        }
        XPathContextMajor makeNewContext2 = userFunction.makeNewContext(xPathContext, (ContextOriginator) this);
        makeNewContext2.setCurrentComponent(targetComponent);
        makeNewContext2.setOrigin(this);
        userFunction.process(makeNewContext2, evaluateArguments, outputter);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void resetLocalStaticProperties() {
        super.resetLocalStaticProperties();
        this.f99413u = null;
    }

    public void setArgumentEvaluators(Evaluator[] evaluatorArr) {
        this.f99413u = evaluatorArr;
    }

    public void setBeingInlined(boolean z) {
        this.f99412t = z;
    }

    @Override // net.p110sf.saxon.expr.ComponentInvocation
    public void setBindingSlot(int i) {
        this.f99409q = i;
    }

    @Override // net.p110sf.saxon.expr.UserFunctionResolvable
    public void setFunction(UserFunction userFunction) {
        this.f99408p = userFunction;
    }

    public final void setFunctionName(StructuredQName structuredQName) {
        this.f99411s = structuredQName;
    }

    public void setStaticType(SequenceType sequenceType) {
        this.f99407o = sequenceType;
    }

    @Override // net.p110sf.saxon.expr.FunctionCall, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression typeCheck = super.typeCheck(expressionVisitor, contextItemStaticInfo);
        if (typeCheck != this) {
            return typeCheck;
        }
        UserFunction userFunction = this.f99408p;
        if (userFunction != null) {
            checkFunctionCall(userFunction, expressionVisitor);
            SequenceType sequenceType = this.f99407o;
            if (sequenceType == null || sequenceType == SequenceType.ANY_SEQUENCE) {
                this.f99407o = this.f99408p.getResultType();
            }
        }
        return this;
    }

    public Sequence[] evaluateArguments(XPathContext xPathContext, boolean z) throws XPathException {
        int arity = getArity();
        Sequence[] makeSequenceArray = SequenceTool.makeSequenceArray(arity);
        synchronized (this) {
            if (this.f99413u == null) {
                allocateArgumentEvaluators();
            }
        }
        for (int i = 0; i < arity; i++) {
            Evaluator evaluator = this.f99413u[i];
            if (evaluator == null || (evaluator == Evaluator.StreamingArgument.INSTANCE && !z)) {
                evaluator = Evaluator.EagerSequence.INSTANCE;
            }
            Sequence evaluate = evaluator.evaluate(getArg(i), xPathContext);
            makeSequenceArray[i] = evaluate;
            if (evaluate == null) {
                makeSequenceArray[i] = EmptySequence.getInstance();
            }
        }
        return makeSequenceArray;
    }

    @Override // net.p110sf.saxon.expr.FunctionCall
    public UserFunction getTargetFunction(XPathContext xPathContext) {
        return (UserFunction) getTargetComponent(xPathContext).getActor();
    }
}
