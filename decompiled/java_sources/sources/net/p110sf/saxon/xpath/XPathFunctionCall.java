package net.p110sf.saxon.xpath;

import java.util.ArrayList;
import java.util.List;
import javax.xml.xpath.XPathFunction;
import javax.xml.xpath.XPathFunctionException;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.FunctionCall;
import net.p110sf.saxon.expr.JPConverter;
import net.p110sf.saxon.expr.PJConverter;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.ItemConsumer;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.xpath.XPathFunctionCall;

/* loaded from: classes11.dex */
public class XPathFunctionCall extends FunctionCall implements Callable {

    /* renamed from: o */
    public StructuredQName f102971o;

    /* renamed from: p */
    public final XPathFunction f102972p;

    public XPathFunctionCall(StructuredQName structuredQName, XPathFunction xPathFunction) {
        this.f102972p = xPathFunction;
    }

    /* renamed from: e */
    public static /* synthetic */ void m64697e(Configuration configuration, List list, XPathContext xPathContext, Item item) throws XPathException {
        list.add(PJConverter.allocate(configuration, Type.getItemType(item, configuration.getTypeHierarchy()), 16384, Object.class).convert(item, Object.class, xPathContext));
    }

    @Override // net.p110sf.saxon.expr.Expression
    public PathMap.PathMapNodeSet addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        return addExternalFunctionCallToPathMap(pathMap, pathMapNodeSet);
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(final XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        ArrayList arrayList = new ArrayList(sequenceArr.length);
        final Configuration configuration = xPathContext.getConfiguration();
        for (Sequence sequence : sequenceArr) {
            final ArrayList arrayList2 = new ArrayList();
            SequenceTool.supply(sequence.iterate(), new ItemConsumer() { // from class: com.sunia.HTREnginev2.gmo
                @Override // net.p110sf.saxon.om.ItemConsumer
                public final void accept(Item item) {
                    XPathFunctionCall.m64697e(Configuration.this, arrayList2, xPathContext, item);
                }
            });
            if (arrayList2.size() == 1) {
                arrayList.add(arrayList2.get(0));
            } else {
                arrayList.add(arrayList2);
            }
        }
        try {
            Object evaluate = this.f102972p.evaluate(arrayList);
            return evaluate == null ? EmptySequence.getInstance() : JPConverter.allocate(evaluate.getClass(), null, configuration).convert(evaluate, xPathContext);
        } catch (XPathFunctionException e) {
            throw new XPathException(e);
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 57344;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        return new XPathFunctionCall(this.f102971o, this.f102972p);
    }

    @Override // net.p110sf.saxon.expr.FunctionCall
    public StructuredQName getFunctionName() {
        return this.f102971o;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getIntrinsicDependencies() {
        return 0;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return Type.ITEM_TYPE;
    }

    @Override // net.p110sf.saxon.expr.FunctionCall
    public Function getTargetFunction(XPathContext xPathContext) {
        return null;
    }

    @Override // net.p110sf.saxon.expr.FunctionCall, net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        int arity = getArity();
        Sequence[] sequenceArr = new Sequence[arity];
        for (int i = 0; i < arity; i++) {
            sequenceArr[i] = SequenceTool.toLazySequence(getArg(i).iterate(xPathContext));
        }
        return call(xPathContext, sequenceArr).iterate();
    }

    @Override // net.p110sf.saxon.expr.FunctionCall
    public Expression preEvaluate(ExpressionVisitor expressionVisitor) {
        return this;
    }
}
