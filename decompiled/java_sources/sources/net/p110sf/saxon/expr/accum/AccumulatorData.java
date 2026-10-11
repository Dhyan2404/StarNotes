package net.p110sf.saxon.expr.accum;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.parser.Evaluator;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.rules.Rule;
import net.p110sf.saxon.tree.iter.ManualIterator;
import net.p110sf.saxon.tree.util.Navigator;

/* loaded from: classes11.dex */
public class AccumulatorData implements IAccumulatorData {

    /* renamed from: d */
    public static final /* synthetic */ boolean f99453d = false;

    /* renamed from: a */
    public final Accumulator f99454a;

    /* renamed from: b */
    public final List<C18311a> f99455b = new ArrayList();

    /* renamed from: c */
    public boolean f99456c = false;

    /* renamed from: net.sf.saxon.expr.accum.AccumulatorData$a */
    /* loaded from: classes11.dex */
    public static class C18311a {

        /* renamed from: a */
        public C18312b f99457a;

        /* renamed from: b */
        public Sequence f99458b;

        public C18311a(C18312b c18312b, Sequence sequence) {
            this.f99457a = c18312b;
            this.f99458b = sequence;
        }
    }

    /* renamed from: net.sf.saxon.expr.accum.AccumulatorData$b */
    /* loaded from: classes11.dex */
    public static class C18312b implements Comparable<C18312b> {

        /* renamed from: e */
        public NodeInfo f99459e;

        /* renamed from: f */
        public boolean f99460f;

        public C18312b(NodeInfo nodeInfo, boolean z) {
            this.f99459e = nodeInfo;
            this.f99460f = z;
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(C18312b c18312b) {
            int comparePosition = Navigator.comparePosition(this.f99459e, c18312b.f99459e);
            if (comparePosition == 0) {
                return this.f99460f ? 1 : -1;
            }
            if (comparePosition == 4) {
                return c18312b.f99460f ? -1 : 1;
            }
            if (comparePosition == 6) {
                return 1;
            }
            if (comparePosition == 10) {
                return -1;
            }
            if (comparePosition != 12) {
                throw new IllegalStateException();
            }
            boolean z = this.f99460f;
            if (z == c18312b.f99460f) {
                return 0;
            }
            return z ? 1 : -1;
        }
    }

    public AccumulatorData(Accumulator accumulator) {
        this.f99454a = accumulator;
    }

    /* renamed from: a */
    public final void m62669a(NodeInfo nodeInfo, Sequence sequence, XPathContext xPathContext, String str) {
        if (this.f99454a.isTracing()) {
            xPathContext.getConfiguration().getLogger().info(this.f99454a.getAccumulatorName().getDisplayName() + str + Navigator.getPath(nodeInfo) + ": " + ((Object) Err.depictSequence(sequence)));
        }
    }

    /* renamed from: b */
    public final Sequence m62670b(Rule rule, NodeInfo nodeInfo, boolean z, Sequence sequence, XPathContext xPathContext) throws XPathException {
        AccumulatorRule accumulatorRule = (AccumulatorRule) rule.getAction();
        Expression newValueExpression = accumulatorRule.getNewValueExpression();
        XPathContextMajor newCleanContext = xPathContext.newCleanContext();
        newCleanContext.getController();
        newCleanContext.setCurrentIterator(new ManualIterator(nodeInfo));
        newCleanContext.openStackFrame(accumulatorRule.getStackFrameMap());
        newCleanContext.setLocalVariable(0, sequence);
        newCleanContext.setCurrentComponent(this.f99454a.getDeclaringComponent());
        newCleanContext.setTemporaryOutputState(130);
        Sequence evaluate = Evaluator.EagerSequence.INSTANCE.evaluate(newValueExpression, newCleanContext);
        if (nodeInfo.getParent() == null && !z && this.f99455b.size() == 1) {
            this.f99455b.clear();
        }
        this.f99455b.add(new C18311a(new C18312b(nodeInfo, z), evaluate));
        return evaluate;
    }

    public void buildIndex(NodeInfo nodeInfo, XPathContext xPathContext) throws XPathException {
        if (this.f99456c) {
            throw new XPathException("Accumulator " + this.f99454a.getAccumulatorName().getDisplayName() + " requires access to its own value", "XTDE3400");
        }
        this.f99456c = true;
        Expression initialValueExpression = this.f99454a.getInitialValueExpression();
        XPathContextMajor newContext = xPathContext.newContext();
        SlotManager slotManagerForInitialValueExpression = this.f99454a.getSlotManagerForInitialValueExpression();
        newContext.setStackFrame(slotManagerForInitialValueExpression, new Sequence[slotManagerForInitialValueExpression.getNumberOfVariables()]);
        newContext.setCurrentIterator(new ManualIterator(nodeInfo));
        GroundedValue groundedValue = SequenceTool.toGroundedValue(initialValueExpression.iterate(newContext));
        this.f99455b.add(new C18311a(new C18312b(nodeInfo, false), groundedValue));
        this.f99455b.add(new C18311a(new C18312b(nodeInfo, true), m62672d(nodeInfo, groundedValue, newContext)));
        ((ArrayList) this.f99455b).trimToSize();
        this.f99456c = false;
    }

    /* renamed from: c */
    public final Sequence m62671c(int i, int i2, C18312b c18312b) {
        if (i == i2) {
            return c18312b.compareTo(this.f99455b.get(i).f99457a) < 0 ? this.f99455b.get(i - 1).f99458b : this.f99455b.get(i).f99458b;
        }
        int i3 = (i + i2) / 2;
        return c18312b.compareTo(this.f99455b.get(i3).f99457a) <= 0 ? m62671c(i, i3, c18312b) : m62671c(i3 + 1, i2, c18312b);
    }

    /* renamed from: d */
    public final Sequence m62672d(NodeInfo nodeInfo, Sequence sequence, XPathContext xPathContext) throws XPathException {
        try {
            ((ManualIterator) xPathContext.getCurrentIterator()).setContextItem(nodeInfo);
            Rule rule = this.f99454a.getPreDescentRules().getRule(nodeInfo, xPathContext);
            if (rule != null) {
                sequence = m62670b(rule, nodeInfo, false, sequence, xPathContext);
                m62669a(nodeInfo, sequence, xPathContext, " BEFORE ");
            }
            Iterator<? extends NodeInfo> it2 = nodeInfo.children().iterator();
            Sequence sequence2 = sequence;
            while (it2.hasNext()) {
                sequence2 = m62672d(it2.next(), sequence2, xPathContext);
            }
            ((ManualIterator) xPathContext.getCurrentIterator()).setContextItem(nodeInfo);
            Rule rule2 = this.f99454a.getPostDescentRules().getRule(nodeInfo, xPathContext);
            if (rule2 == null) {
                return sequence2;
            }
            Sequence m62670b = m62670b(rule2, nodeInfo, true, sequence2, xPathContext);
            m62669a(nodeInfo, m62670b, xPathContext, " AFTER ");
            return m62670b;
        } catch (StackOverflowError unused) {
            XPathException.StackOverflow stackOverflow = new XPathException.StackOverflow("Too many nested accumulator evaluations. The accumulator definition may have cyclic dependencies", "XTDE3400", this.f99454a);
            stackOverflow.setXPathContext(xPathContext);
            throw stackOverflow;
        }
    }

    @Override // net.p110sf.saxon.expr.accum.IAccumulatorData
    public Accumulator getAccumulator() {
        return this.f99454a;
    }

    @Override // net.p110sf.saxon.expr.accum.IAccumulatorData
    public Sequence getValue(NodeInfo nodeInfo, boolean z) {
        return m62671c(0, this.f99455b.size(), new C18312b(nodeInfo, z));
    }
}
