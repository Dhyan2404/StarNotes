package net.p110sf.saxon.expr.flwor;

import com.google.android.material.motion.MotionUtils;
import com.sunia.HTREnginev2.gon;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.ItemMappingIterator;
import net.p110sf.saxon.expr.ItemTypeCheckingFunction;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.flwor.Clause;
import net.p110sf.saxon.expr.flwor.WindowClause;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.ItemConsumer;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.p111z.IntHashMap;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.ListIterator;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class WindowClause extends Clause {
    public static final int END_ITEM = 5;
    public static final int END_ITEM_POSITION = 6;
    public static final int END_NEXT_ITEM = 8;
    public static final int END_PREVIOUS_ITEM = 7;
    public static final int START_ITEM = 1;
    public static final int START_ITEM_POSITION = 2;
    public static final int START_NEXT_ITEM = 4;
    public static final int START_PREVIOUS_ITEM = 3;
    public static final int WINDOW_VAR = 0;

    /* renamed from: d */
    public boolean f99570d;

    /* renamed from: f */
    public Operand f99572f;

    /* renamed from: g */
    public Operand f99573g;

    /* renamed from: h */
    public Operand f99574h;

    /* renamed from: j */
    public ItemTypeCheckingFunction f99576j;

    /* renamed from: k */
    public boolean f99577k;

    /* renamed from: e */
    public boolean f99571e = true;

    /* renamed from: i */
    public IntHashMap<LocalVariableBinding> f99575i = new IntHashMap<>(10);

    /* loaded from: classes11.dex */
    public static class Window {
        public List<Item> contents;
        public Item endItem;
        public Item endNextItem;
        public Item endPreviousItem;
        public Item startItem;
        public Item startNextItem;
        public int startPosition;
        public Item startPreviousItem;
        public int endPosition = 0;
        public boolean despatched = false;

        public boolean isDespatched() {
            return this.despatched;
        }

        public boolean isFinished() {
            return this.endPosition > 0;
        }
    }

    /* renamed from: net.sf.saxon.expr.flwor.WindowClause$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18315a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f99578a;

        static {
            int[] iArr = new int[Affinity.values().length];
            f99578a = iArr;
            try {
                iArr[Affinity.SAME_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f99578a[Affinity.SUBSUMES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f99578a[Affinity.OVERLAPS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f99578a[Affinity.SUBSUMED_BY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f99578a[Affinity.DISJOINT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: b */
    public static /* synthetic */ void m62709b(Item item) throws XPathException {
    }

    public static Sequence makeValue(Item item) {
        return item == null ? EmptySequence.getInstance() : item;
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        throw new UnsupportedOperationException("Cannot use document projection with windowing");
    }

    public void checkWindowContents(Window window) throws XPathException {
        if (this.f99577k && window.contents.size() > 1) {
            throw new XPathException("Required type of window allows only a single item; window has length " + window.contents.size(), "XPTY0004", getLocation());
        }
        ItemTypeCheckingFunction itemTypeChecker = getItemTypeChecker();
        if (itemTypeChecker != null) {
            SequenceTool.supply(new ItemMappingIterator(new ListIterator.C18538Of(window.contents), itemTypeChecker), new ItemConsumer() { // from class: com.sunia.HTREnginev2.n7o
                @Override // net.p110sf.saxon.om.ItemConsumer
                public final void accept(Item item) {
                    WindowClause.m62709b(item);
                }
            });
        }
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public Clause copy(FLWORExpression fLWORExpression, RebindingMap rebindingMap) {
        WindowClause windowClause = new WindowClause();
        windowClause.setLocation(getLocation());
        windowClause.setPackageData(getPackageData());
        windowClause.f99570d = this.f99570d;
        windowClause.f99571e = this.f99571e;
        windowClause.initSequence(fLWORExpression, getSequence().copy(rebindingMap));
        windowClause.initStartCondition(fLWORExpression, getStartCondition().copy(rebindingMap));
        if (getEndCondition() != null) {
            windowClause.initEndCondition(fLWORExpression, getEndCondition().copy(rebindingMap));
        }
        windowClause.f99575i = this.f99575i;
        return windowClause;
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void explain(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement(isSlidingWindow() ? "slidingWindow" : "tumblingWindow");
        expressionPresenter.startSubsidiaryElement("select");
        getSequence().export(expressionPresenter);
        expressionPresenter.endSubsidiaryElement();
        expressionPresenter.startSubsidiaryElement(gon.f71290o0);
        getStartCondition().export(expressionPresenter);
        expressionPresenter.endSubsidiaryElement();
        if (this.f99574h != null) {
            expressionPresenter.startSubsidiaryElement("end");
            getEndCondition().export(expressionPresenter);
            expressionPresenter.endSubsidiaryElement();
        }
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public Clause.ClauseName getClauseKey() {
        return Clause.ClauseName.WINDOW;
    }

    public Expression getEndCondition() {
        Operand operand = this.f99574h;
        if (operand == null) {
            return null;
        }
        return operand.getChildExpression();
    }

    public ItemTypeCheckingFunction getItemTypeChecker() {
        return this.f99576j;
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public TuplePull getPullStream(TuplePull tuplePull, XPathContext xPathContext) {
        return new WindowClausePull(tuplePull, this, xPathContext);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public TuplePush getPushStream(TuplePush tuplePush, Outputter outputter, XPathContext xPathContext) {
        return new WindowClausePush(outputter, tuplePush, this);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public LocalVariableBinding[] getRangeVariables() {
        LocalVariableBinding[] localVariableBindingArr = new LocalVariableBinding[this.f99575i.size()];
        Iterator<LocalVariableBinding> it2 = this.f99575i.valueSet().iterator();
        int i = 0;
        while (it2.hasNext()) {
            localVariableBindingArr[i] = it2.next();
            i++;
        }
        return localVariableBindingArr;
    }

    public Expression getSequence() {
        return this.f99572f.getChildExpression();
    }

    public Expression getStartCondition() {
        return this.f99573g.getChildExpression();
    }

    public LocalVariableBinding getVariableBinding(int i) {
        return this.f99575i.get(i);
    }

    public void initEndCondition(FLWORExpression fLWORExpression, Expression expression) {
        this.f99574h = new Operand(fLWORExpression, expression, OperandRole.INSPECT);
    }

    public void initSequence(FLWORExpression fLWORExpression, Expression expression) {
        this.f99572f = new Operand(fLWORExpression, expression, OperandRole.INSPECT);
    }

    public void initStartCondition(FLWORExpression fLWORExpression, Expression expression) {
        this.f99573g = new Operand(fLWORExpression, expression, OperandRole.INSPECT);
    }

    public boolean isIncludeUnclosedWindows() {
        return this.f99571e;
    }

    public boolean isSlidingWindow() {
        return this.f99570d;
    }

    public boolean isTumblingWindow() {
        return !this.f99570d;
    }

    public boolean isWindowMustBeSingleton() {
        return this.f99577k;
    }

    public boolean matchesEnd(Window window, Item item, Item item2, Item item3, int i, XPathContext xPathContext) throws XPathException {
        LocalVariableBinding variableBinding = getVariableBinding(1);
        if (variableBinding != null) {
            xPathContext.setLocalVariable(variableBinding.getLocalSlotNumber(), window.startItem);
        }
        LocalVariableBinding variableBinding2 = getVariableBinding(2);
        if (variableBinding2 != null) {
            xPathContext.setLocalVariable(variableBinding2.getLocalSlotNumber(), new Int64Value(window.startPosition));
        }
        LocalVariableBinding variableBinding3 = getVariableBinding(4);
        if (variableBinding3 != null) {
            xPathContext.setLocalVariable(variableBinding3.getLocalSlotNumber(), makeValue(window.startNextItem));
        }
        LocalVariableBinding variableBinding4 = getVariableBinding(3);
        if (variableBinding4 != null) {
            xPathContext.setLocalVariable(variableBinding4.getLocalSlotNumber(), makeValue(window.startPreviousItem));
        }
        LocalVariableBinding variableBinding5 = getVariableBinding(5);
        if (variableBinding5 != null) {
            xPathContext.setLocalVariable(variableBinding5.getLocalSlotNumber(), item2);
        }
        LocalVariableBinding variableBinding6 = getVariableBinding(6);
        if (variableBinding6 != null) {
            xPathContext.setLocalVariable(variableBinding6.getLocalSlotNumber(), new Int64Value(i));
        }
        LocalVariableBinding variableBinding7 = getVariableBinding(8);
        if (variableBinding7 != null) {
            xPathContext.setLocalVariable(variableBinding7.getLocalSlotNumber(), makeValue(item3));
        }
        LocalVariableBinding variableBinding8 = getVariableBinding(7);
        if (variableBinding8 != null) {
            xPathContext.setLocalVariable(variableBinding8.getLocalSlotNumber(), makeValue(item));
        }
        return getEndCondition().effectiveBooleanValue(xPathContext);
    }

    public boolean matchesStart(Item item, Item item2, Item item3, int i, XPathContext xPathContext) throws XPathException {
        LocalVariableBinding variableBinding = getVariableBinding(1);
        if (variableBinding != null) {
            xPathContext.setLocalVariable(variableBinding.getLocalSlotNumber(), item2);
        }
        LocalVariableBinding variableBinding2 = getVariableBinding(2);
        if (variableBinding2 != null) {
            xPathContext.setLocalVariable(variableBinding2.getLocalSlotNumber(), new Int64Value(i));
        }
        LocalVariableBinding variableBinding3 = getVariableBinding(4);
        if (variableBinding3 != null) {
            xPathContext.setLocalVariable(variableBinding3.getLocalSlotNumber(), makeValue(item3));
        }
        LocalVariableBinding variableBinding4 = getVariableBinding(3);
        if (variableBinding4 != null) {
            xPathContext.setLocalVariable(variableBinding4.getLocalSlotNumber(), makeValue(item));
        }
        return getStartCondition().effectiveBooleanValue(xPathContext);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void processOperands(OperandProcessor operandProcessor) throws XPathException {
        operandProcessor.processOperand(this.f99572f);
        operandProcessor.processOperand(this.f99573g);
        Operand operand = this.f99574h;
        if (operand != null) {
            operandProcessor.processOperand(operand);
        }
    }

    public void setEndCondition(Expression expression) {
        this.f99574h.setChildExpression(expression);
    }

    public void setIncludeUnclosedWindows(boolean z) {
        this.f99571e = z;
    }

    public void setIsSlidingWindow(boolean z) {
        this.f99570d = z;
    }

    public void setSequence(Expression expression) {
        this.f99572f.setChildExpression(expression);
    }

    public void setStartCondition(Expression expression) {
        this.f99573g.setChildExpression(expression);
    }

    public void setVariableBinding(int i, LocalVariableBinding localVariableBinding) throws XPathException {
        Iterator<LocalVariableBinding> it2 = this.f99575i.valueSet().iterator();
        while (it2.hasNext()) {
            if (it2.next().getVariableQName().equals(localVariableBinding.getVariableQName())) {
                throw new XPathException("Two variables in a window clause cannot have the same name (" + localVariableBinding.getVariableQName().getDisplayName() + MotionUtils.f31762d, "XQST0103");
            }
        }
        this.f99575i.put(i, localVariableBinding);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        SequenceType requiredType = getVariableBinding(0).getRequiredType();
        ItemType primaryType = requiredType.getPrimaryType();
        ItemType itemType = getSequence().getItemType();
        Configuration configuration = expressionVisitor.getConfiguration();
        int i = C18315a.f99578a[configuration.getTypeHierarchy().relationship(primaryType, itemType).ordinal()];
        if (i == 3 || i == 4) {
            this.f99576j = new ItemTypeCheckingFunction(primaryType, new RoleDiagnostic(3, getVariableBinding(0).getVariableQName().getDisplayName(), 0), getLocation(), configuration);
        } else if (i == 5) {
            throw new XPathException("The items in the window will always be instances of " + itemType + ", never of the required type " + primaryType, "XPTY0004", getLocation());
        }
        this.f99577k = !Cardinality.allowsMany(requiredType.getCardinality());
        if (requiredType.getCardinality() == 8192) {
            throw new XPathException("The value of the window variable can never be an empty sequence", "XPTY0004", getLocation());
        }
    }
}
