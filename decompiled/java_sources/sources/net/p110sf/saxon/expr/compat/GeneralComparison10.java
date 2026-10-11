package net.p110sf.saxon.expr.compat;

import java.util.ArrayList;
import java.util.Iterator;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Atomizer;
import net.p110sf.saxon.expr.BinaryExpression;
import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.GeneralComparison;
import net.p110sf.saxon.expr.GeneralComparison20;
import net.p110sf.saxon.expr.ItemMapper;
import net.p110sf.saxon.expr.ItemMappingIterator;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.ValueComparison;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.compat.GeneralComparison10;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.sort.AtomicComparer;
import net.p110sf.saxon.expr.sort.CodepointCollator;
import net.p110sf.saxon.expr.sort.GenericAtomicComparer;
import net.p110sf.saxon.functions.Number_1;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.iter.PrependSequenceIterator;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.NumericType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class GeneralComparison10 extends BinaryExpression implements Callable {
    protected AtomicComparer comparer;

    /* renamed from: p */
    public boolean f99474p;

    /* renamed from: q */
    public boolean f99475q;

    /* renamed from: r */
    public boolean f99476r;

    /* renamed from: s */
    public boolean f99477s;
    protected int singletonOperator;

    public GeneralComparison10(Expression expression, int i, Expression expression2) {
        super(expression, i, expression2);
        this.f99474p = true;
        this.f99475q = true;
        this.f99476r = true;
        this.f99477s = true;
        this.singletonOperator = GeneralComparison.getCorrespondingSingletonOperator(i);
    }

    /* renamed from: j */
    public static boolean m62678j(AtomicValue atomicValue, int i, AtomicValue atomicValue2, AtomicComparer atomicComparer, XPathContext xPathContext) throws XPathException {
        AtomicComparer provideContext = atomicComparer.provideContext(xPathContext);
        ConversionRules conversionRules = xPathContext.getConfiguration().getConversionRules();
        BuiltInAtomicType primitiveType = atomicValue.getPrimitiveType();
        BuiltInAtomicType primitiveType2 = atomicValue2.getPrimitiveType();
        if (primitiveType.isPrimitiveNumeric() || primitiveType2.isPrimitiveNumeric()) {
            return ValueComparison.compare(Number_1.convert(atomicValue, xPathContext.getConfiguration()), i, Number_1.convert(atomicValue2, xPathContext.getConfiguration()), provideContext, false);
        }
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.STRING;
        if (!primitiveType.equals(builtInAtomicType) && !primitiveType2.equals(builtInAtomicType)) {
            BuiltInAtomicType builtInAtomicType2 = BuiltInAtomicType.UNTYPED_ATOMIC;
            if (!primitiveType.equals(builtInAtomicType2) || !primitiveType2.equals(builtInAtomicType2)) {
                if (primitiveType.equals(builtInAtomicType2)) {
                    atomicValue = primitiveType2.getStringConverter(conversionRules).convert(atomicValue).asAtomic();
                }
                if (primitiveType2.equals(builtInAtomicType2)) {
                    atomicValue2 = primitiveType.getStringConverter(conversionRules).convert(atomicValue2).asAtomic();
                }
                return ValueComparison.compare(atomicValue, i, atomicValue2, provideContext, false);
            }
        }
        return ValueComparison.compare(new StringValue(atomicValue.getUnicodeStringValue()), i, new StringValue(atomicValue2.getUnicodeStringValue()), provideContext, false);
    }

    /* renamed from: l */
    public static /* synthetic */ Item m62679l(Configuration configuration, Item item) throws XPathException {
        return Number_1.convert((AtomicValue) item, configuration);
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 16384;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        GeneralComparison10 generalComparison10 = new GeneralComparison10(getLhsExpression().copy(rebindingMap), this.operator, getRhsExpression().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, generalComparison10);
        generalComparison10.setRetainedStaticContext(getRetainedStaticContext());
        generalComparison10.comparer = this.comparer;
        generalComparison10.f99474p = this.f99474p;
        generalComparison10.f99475q = this.f99475q;
        generalComparison10.f99476r = this.f99476r;
        generalComparison10.f99477s = this.f99477s;
        return generalComparison10;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
        return m62680k(getLhsExpression().iterate(xPathContext), getRhsExpression().iterate(xPathContext), xPathContext);
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression
    public void explainExtraAttributes(ExpressionPresenter expressionPresenter) {
        expressionPresenter.emitAttribute("cardinality", "many-to-many (1.0)");
        expressionPresenter.emitAttribute("comp", this.comparer.save());
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return BuiltInAtomicType.BOOLEAN;
    }

    /* renamed from: k */
    public final boolean m62680k(SequenceIterator sequenceIterator, SequenceIterator sequenceIterator2, XPathContext xPathContext) throws XPathException {
        if (this.f99476r) {
            Item next = sequenceIterator.next();
            Item next2 = next == null ? null : sequenceIterator.next();
            if ((next instanceof BooleanValue) && next2 == null) {
                sequenceIterator.close();
                return m62678j((BooleanValue) next, this.singletonOperator, BooleanValue.get(ExpressionTool.effectiveBooleanValue(sequenceIterator2)), this.comparer, xPathContext);
            }
            if (next == null && !this.f99477s) {
                sequenceIterator.close();
                return false;
            }
            if (next2 != null) {
                sequenceIterator = new PrependSequenceIterator(next2, sequenceIterator);
            }
            if (next != null) {
                sequenceIterator = new PrependSequenceIterator(next, sequenceIterator);
            }
        }
        if (this.f99477s) {
            Item next3 = sequenceIterator2.next();
            Item next4 = next3 == null ? null : sequenceIterator2.next();
            if ((next3 instanceof BooleanValue) && next4 == null) {
                sequenceIterator2.close();
                return m62678j(BooleanValue.get(ExpressionTool.effectiveBooleanValue(sequenceIterator)), this.singletonOperator, (BooleanValue) next3, this.comparer, xPathContext);
            }
            if (next3 == null && !this.f99476r) {
                sequenceIterator2.close();
                return false;
            }
            if (next4 != null) {
                sequenceIterator2 = new PrependSequenceIterator(next4, sequenceIterator2);
            }
            if (next3 != null) {
                sequenceIterator2 = new PrependSequenceIterator(next3, sequenceIterator2);
            }
        }
        if (this.f99474p) {
            sequenceIterator = Atomizer.getAtomizingIterator(sequenceIterator, false);
        }
        if (this.f99475q) {
            sequenceIterator2 = Atomizer.getAtomizingIterator(sequenceIterator2, false);
        }
        if (!(sequenceIterator instanceof EmptyIterator) && !(sequenceIterator2 instanceof EmptyIterator)) {
            int i = this.operator;
            if (i == 12 || i == 14 || i == 11 || i == 13) {
                final Configuration configuration = xPathContext.getConfiguration();
                ItemMapper m62594of = ItemMapper.m62594of(new ItemMapper.Lambda() { // from class: com.sunia.HTREnginev2.vyg
                    @Override // net.sf.saxon.expr.ItemMapper.Lambda
                    public final Item map(Item item) {
                        Item m62679l;
                        m62679l = GeneralComparison10.m62679l(Configuration.this, item);
                        return m62679l;
                    }
                });
                ItemMappingIterator itemMappingIterator = new ItemMappingIterator(sequenceIterator, m62594of, true);
                sequenceIterator2 = new ItemMappingIterator(sequenceIterator2, m62594of, true);
                sequenceIterator = itemMappingIterator;
            }
            ArrayList arrayList = null;
            while (true) {
                AtomicValue atomicValue = (AtomicValue) sequenceIterator.next();
                if (atomicValue == null) {
                    break;
                }
                if (sequenceIterator2 != null) {
                    while (true) {
                        AtomicValue atomicValue2 = (AtomicValue) sequenceIterator2.next();
                        if (atomicValue2 != null) {
                            try {
                                if (m62678j(atomicValue, this.singletonOperator, atomicValue2, this.comparer, xPathContext)) {
                                    return true;
                                }
                                if (arrayList == null) {
                                    arrayList = new ArrayList(40);
                                }
                                arrayList.add(atomicValue2);
                            } catch (XPathException e) {
                                e.maybeSetLocation(getLocation());
                                e.maybeSetContext(xPathContext);
                                throw e;
                            }
                        } else {
                            if (arrayList == null) {
                                return false;
                            }
                            sequenceIterator2 = null;
                        }
                    }
                } else {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        if (m62678j(atomicValue, this.singletonOperator, (AtomicValue) it2.next(), this.comparer, xPathContext)) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Configuration configuration = expressionVisitor.getConfiguration();
        StaticContext staticContext = expressionVisitor.getStaticContext();
        getLhs().optimize(expressionVisitor, contextItemStaticInfo);
        getRhs().optimize(expressionVisitor, contextItemStaticInfo);
        setLhsExpression(getLhsExpression().unordered(false, false));
        setRhsExpression(getRhsExpression().unordered(false, false));
        if ((getLhsExpression() instanceof Literal) && (getRhsExpression() instanceof Literal)) {
            return Literal.makeLiteral(evaluateItem(staticContext.makeEarlyEvaluationContext()), this);
        }
        TypeHierarchy typeHierarchy = configuration.getTypeHierarchy();
        ItemType itemType = getLhsExpression().getItemType();
        ItemType itemType2 = getRhsExpression().getItemType();
        if (itemType.isPlainType()) {
            this.f99474p = false;
        }
        if (itemType2.isPlainType()) {
            this.f99475q = false;
        }
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.BOOLEAN;
        Affinity relationship = typeHierarchy.relationship(itemType, builtInAtomicType);
        Affinity affinity = Affinity.DISJOINT;
        if (relationship == affinity) {
            this.f99476r = false;
        }
        if (typeHierarchy.relationship(itemType2, builtInAtomicType) == affinity) {
            this.f99477s = false;
        }
        if (this.f99476r || this.f99477s) {
            return this;
        }
        if (!(itemType instanceof AtomicType)) {
            setLhsExpression(Atomizer.makeAtomizer(getLhsExpression(), null).simplify());
            itemType = getLhsExpression().getItemType();
        }
        if (!(itemType2 instanceof AtomicType)) {
            setRhsExpression(Atomizer.makeAtomizer(getRhsExpression(), null).simplify());
            itemType2 = getRhsExpression().getItemType();
        }
        Affinity relationship2 = typeHierarchy.relationship(itemType, NumericType.getInstance());
        Affinity relationship3 = typeHierarchy.relationship(itemType2, NumericType.getInstance());
        boolean z = true;
        boolean z2 = relationship2 != affinity;
        boolean z3 = relationship3 != affinity;
        Affinity affinity2 = Affinity.SUBSUMED_BY;
        boolean z4 = relationship2 == affinity2 || relationship2 == Affinity.SAME_TYPE;
        if (relationship3 != affinity2 && relationship3 != Affinity.SAME_TYPE) {
            z = false;
        }
        int i = this.operator;
        if (i != 6 && i != 22) {
            if (!z4 || !z) {
                return this;
            }
            GeneralComparison20 generalComparison20 = new GeneralComparison20(getLhsExpression(), this.operator, getRhsExpression());
            generalComparison20.setRetainedStaticContext(getRetainedStaticContext());
            Expression optimizeGeneralComparison = expressionVisitor.obtainOptimizer().optimizeGeneralComparison(expressionVisitor, generalComparison20, false, contextItemStaticInfo);
            ExpressionTool.copyLocationInfo(this, optimizeGeneralComparison);
            return optimizeGeneralComparison.typeCheck(expressionVisitor, contextItemStaticInfo).optimize(expressionVisitor, contextItemStaticInfo);
        }
        if ((z2 || z3) && !(z4 && z)) {
            return this;
        }
        GeneralComparison20 generalComparison202 = new GeneralComparison20(getLhsExpression(), this.operator, getRhsExpression());
        generalComparison202.setRetainedStaticContext(getRetainedStaticContext());
        generalComparison202.setAtomicComparer(this.comparer);
        Expression optimizeGeneralComparison2 = expressionVisitor.obtainOptimizer().optimizeGeneralComparison(expressionVisitor, generalComparison202, false, contextItemStaticInfo);
        ExpressionTool.copyLocationInfo(this, optimizeGeneralComparison2);
        return optimizeGeneralComparison2.typeCheck(expressionVisitor, contextItemStaticInfo).optimize(expressionVisitor, contextItemStaticInfo);
    }

    public void setAtomicComparer(AtomicComparer atomicComparer) {
        this.comparer = atomicComparer;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression
    public String tag() {
        return "gc10";
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getLhs().typeCheck(expressionVisitor, contextItemStaticInfo);
        getRhs().typeCheck(expressionVisitor, contextItemStaticInfo);
        StaticContext staticContext = expressionVisitor.getStaticContext();
        StringCollator collation = expressionVisitor.getConfiguration().getCollation(staticContext.getDefaultCollationName());
        if (collation == null) {
            collation = CodepointCollator.getInstance();
        }
        XPathContext makeEarlyEvaluationContext = staticContext.makeEarlyEvaluationContext();
        this.comparer = new GenericAtomicComparer(collation, makeEarlyEvaluationContext);
        return ((getLhsExpression() instanceof Literal) && (getRhsExpression() instanceof Literal)) ? Literal.makeLiteral(evaluateItem(makeEarlyEvaluationContext), this) : this;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public BooleanValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return BooleanValue.get(m62680k(sequenceArr[0].iterate(), sequenceArr[1].iterate(), xPathContext));
    }

    @Override // net.p110sf.saxon.expr.Expression
    public BooleanValue evaluateItem(XPathContext xPathContext) throws XPathException {
        return BooleanValue.get(effectiveBooleanValue(xPathContext));
    }
}
