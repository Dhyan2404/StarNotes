package net.p110sf.saxon.functions;

import java.util.Properties;
import net.p110sf.saxon.expr.Atomizer;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.FirstItemExpression;
import net.p110sf.saxon.expr.LastItemExpression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.RangeExpression;
import net.p110sf.saxon.expr.UntypedSequenceConverter;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.sort.AtomicComparer;
import net.p110sf.saxon.expr.sort.GenericAtomicComparer;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.PlainType;
import net.p110sf.saxon.value.Cardinality;

/* loaded from: classes11.dex */
public abstract class Minimax extends CollatingFunctionFixed {

    /* renamed from: k */
    public PlainType f100265k = BuiltInAtomicType.ANY_ATOMIC;

    /* renamed from: l */
    public boolean f100266l = false;

    /* loaded from: classes11.dex */
    public static class Max extends Minimax {
        @Override // net.p110sf.saxon.functions.Minimax
        public boolean isMaxFunction() {
            return true;
        }
    }

    /* loaded from: classes11.dex */
    public static class Min extends Minimax {
        @Override // net.p110sf.saxon.functions.Minimax
        public boolean isMaxFunction() {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x014b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x009f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static net.p110sf.saxon.value.AtomicValue minimax(net.p110sf.saxon.om.SequenceIterator r16, boolean r17, net.p110sf.saxon.expr.sort.AtomicComparer r18, boolean r19, net.p110sf.saxon.expr.XPathContext r20) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 449
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.functions.Minimax.minimax(net.sf.saxon.om.SequenceIterator, boolean, net.sf.saxon.expr.sort.AtomicComparer, boolean, net.sf.saxon.expr.XPathContext):net.sf.saxon.value.AtomicValue");
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return SequenceTool.itemOrEmpty(minimax(sequenceArr[0].iterate(), isMaxFunction(), getAtomicComparer(xPathContext), this.f100266l, xPathContext));
    }

    @Override // net.p110sf.saxon.functions.CollatingFunctionFixed, net.p110sf.saxon.functions.SystemFunction
    public void exportAttributes(ExpressionPresenter expressionPresenter) {
        super.exportAttributes(expressionPresenter);
        if (this.f100266l) {
            expressionPresenter.emitAttribute("flags", "i");
        }
    }

    public PlainType getArgumentType() {
        return this.f100265k;
    }

    @Override // net.p110sf.saxon.functions.CollatingFunctionFixed
    public AtomicComparer getAtomicComparer(XPathContext xPathContext) {
        AtomicComparer preAllocatedAtomicComparer = getPreAllocatedAtomicComparer();
        if (preAllocatedAtomicComparer != null) {
            return preAllocatedAtomicComparer;
        }
        AtomicType primitiveItemType = this.f100265k.getPrimitiveItemType();
        if (primitiveItemType.equals(BuiltInAtomicType.UNTYPED_ATOMIC)) {
            primitiveItemType = BuiltInAtomicType.DOUBLE;
        }
        BuiltInAtomicType builtInAtomicType = (BuiltInAtomicType) primitiveItemType;
        return GenericAtomicComparer.makeAtomicComparer(builtInAtomicType, builtInAtomicType, getStringCollator(), xPathContext);
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getCardinality(Expression[] expressionArr) {
        return !Cardinality.allowsZero(expressionArr[0].getCardinality()) ? 16384 : 24576;
    }

    public AtomicComparer getComparer() {
        return getPreAllocatedAtomicComparer();
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public ItemType getResultItemType(Expression[] expressionArr) {
        ItemType atomizedItemType = Atomizer.getAtomizedItemType(expressionArr[0], false, getRetainedStaticContext().getConfiguration().getTypeHierarchy());
        if (atomizedItemType.equals(BuiltInAtomicType.UNTYPED_ATOMIC)) {
            atomizedItemType = BuiltInAtomicType.DOUBLE;
        }
        return atomizedItemType.getPrimitiveItemType();
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getStreamerName() {
        return "Minimax";
    }

    @Override // net.p110sf.saxon.functions.CollatingFunctionFixed, net.p110sf.saxon.functions.SystemFunction
    public void importAttributes(Properties properties) throws XPathException {
        super.importAttributes(properties);
        String property = properties.getProperty("flags");
        if (property == null || !property.contains("i")) {
            return;
        }
        setIgnoreNaN(true);
    }

    public boolean isIgnoreNaN() {
        return this.f100266l;
    }

    public abstract boolean isMaxFunction();

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeOptimizedFunctionCall(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression... expressionArr) throws XPathException {
        if (!Cardinality.allowsMany(expressionArr[0].getCardinality())) {
            ItemType primitiveItemType = expressionArr[0].getItemType().getPrimitiveItemType();
            if ((primitiveItemType instanceof BuiltInAtomicType) && ((BuiltInAtomicType) primitiveItemType).isOrdered(false)) {
                return expressionVisitor.getConfiguration().getTypeHierarchy().relationship(primitiveItemType, BuiltInAtomicType.UNTYPED_ATOMIC) != Affinity.DISJOINT ? UntypedSequenceConverter.makeUntypedSequenceConverter(expressionVisitor.getConfiguration(), expressionArr[0], BuiltInAtomicType.DOUBLE).typeCheck(expressionVisitor, contextItemStaticInfo) : expressionArr[0];
            }
        }
        if (!(expressionArr[0] instanceof RangeExpression)) {
            return null;
        }
        if (!isMaxFunction()) {
            return FirstItemExpression.makeFirstItemExpression(expressionArr[0]);
        }
        Expression startExpression = ((RangeExpression) expressionArr[0]).getStartExpression();
        Expression endExpression = ((RangeExpression) expressionArr[0]).getEndExpression();
        return ((startExpression instanceof Literal) && (endExpression instanceof Literal)) ? endExpression : new LastItemExpression(expressionArr[0]);
    }

    public void setIgnoreNaN(boolean z) {
        this.f100266l = z;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public void supplyTypeInformation(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression[] expressionArr) {
        PlainType atomizedItemType = expressionArr[0].getItemType().getAtomizedItemType();
        this.f100265k = atomizedItemType;
        if (atomizedItemType instanceof AtomicType) {
            if (atomizedItemType == BuiltInAtomicType.UNTYPED_ATOMIC) {
                this.f100265k = BuiltInAtomicType.DOUBLE;
            }
            PlainType plainType = this.f100265k;
            preAllocateComparer((AtomicType) plainType, (AtomicType) plainType, expressionVisitor.getStaticContext());
        }
    }
}
