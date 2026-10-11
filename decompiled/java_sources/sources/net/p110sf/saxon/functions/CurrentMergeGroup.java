package net.p110sf.saxon.functions;

import java.util.HashSet;
import java.util.Set;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.SystemFunctionCall;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.sort.GroupIterator;
import net.p110sf.saxon.expr.sort.MergeGroupingIterator;
import net.p110sf.saxon.expr.sort.MergeInstr;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;

/* loaded from: classes11.dex */
public class CurrentMergeGroup extends SystemFunction {

    /* renamed from: h */
    public boolean f100172h = false;

    /* renamed from: i */
    public MergeInstr f100173i = null;

    /* renamed from: j */
    public final Set<String> f100174j = new HashSet();

    /* renamed from: net.sf.saxon.functions.CurrentMergeGroup$a */
    /* loaded from: classes11.dex */
    public class C18348a extends SystemFunctionCall {
        public C18348a(SystemFunction systemFunction, Expression[] expressionArr) {
            super(systemFunction, expressionArr);
        }

        @Override // net.p110sf.saxon.expr.SystemFunctionCall, net.p110sf.saxon.expr.Expression
        public Expression getScopingExpression() {
            return CurrentMergeGroup.this.getControllingInstruction();
        }
    }

    /* renamed from: a */
    public final SequenceIterator m62970a(String str, XPathContext xPathContext) throws XPathException {
        GroupIterator currentMergeGroupIterator = xPathContext.getCurrentMergeGroupIterator();
        if (currentMergeGroupIterator == null) {
            throw new XPathException("There is no current merge group", "XTDE3480");
        }
        if (str == null) {
            return currentMergeGroupIterator.iterateCurrentGroup();
        }
        if (this.f100174j.contains(str)) {
            return ((MergeGroupingIterator) currentMergeGroupIterator).iterateCurrentGroup(str);
        }
        throw new XPathException("Supplied argument (" + str + ") is not the name of any xsl:merge-source in the containing xsl:merge instruction", "XTDE3490");
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return SequenceTool.toLazySequence(m62970a(sequenceArr.length > 0 ? sequenceArr[0].head().getStringValue() : null, xPathContext));
    }

    public MergeInstr getControllingInstruction() {
        return this.f100173i;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public ItemType getResultItemType() {
        return AnyItemType.getInstance();
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getSpecialProperties(Expression[] expressionArr) {
        return 0;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getStreamerName() {
        return "CurrentMergeGroup";
    }

    public boolean isInLoop() {
        return this.f100172h;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression... expressionArr) {
        return new C18348a(this, expressionArr);
    }

    public void setControllingInstruction(MergeInstr mergeInstr, boolean z) {
        this.f100173i = mergeInstr;
        this.f100172h = z;
        for (MergeInstr.MergeSource mergeSource : mergeInstr.getMergeSources()) {
            String str = mergeSource.sourceName;
            if (str != null) {
                this.f100174j.add(str);
            }
        }
    }
}
