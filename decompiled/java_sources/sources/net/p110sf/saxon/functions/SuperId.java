package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.MappingFunction;
import net.p110sf.saxon.expr.MappingIterator;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.sort.DocumentOrderIterator;
import net.p110sf.saxon.expr.sort.LocalOrderComparer;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.SingletonIterator;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public abstract class SuperId extends SystemFunction {
    public static final int ELEMENT_WITH_ID = 1;

    /* renamed from: ID */
    public static final int f100318ID = 0;

    /* loaded from: classes11.dex */
    public static class ElementWithId extends SuperId {
        @Override // net.p110sf.saxon.functions.SuperId
        public int getOp() {
            return 1;
        }
    }

    /* renamed from: net.sf.saxon.functions.SuperId$Id */
    /* loaded from: classes11.dex */
    public static class C18375Id extends SuperId {
        @Override // net.p110sf.saxon.functions.SuperId
        public int getOp() {
            return 0;
        }
    }

    /* renamed from: net.sf.saxon.functions.SuperId$b */
    /* loaded from: classes11.dex */
    public static class C18377b implements MappingFunction {

        /* renamed from: e */
        public TreeInfo f100319e;

        /* renamed from: f */
        public int f100320f;

        public C18377b() {
        }

        @Override // net.p110sf.saxon.expr.MappingFunction
        public SequenceIterator map(Item item) {
            UnicodeString trim = Whitespace.trim(item.getUnicodeStringValue());
            if (!Whitespace.containsWhitespace(trim.codePoints())) {
                return SingletonIterator.makeIterator(this.f100319e.selectID(trim.toString(), this.f100320f == 1));
            }
            Whitespace.Tokenizer tokenizer = new Whitespace.Tokenizer(trim);
            C18377b c18377b = new C18377b();
            c18377b.f100319e = this.f100319e;
            c18377b.f100320f = this.f100320f;
            return new MappingIterator(tokenizer, c18377b);
        }
    }

    public static SequenceIterator getIdMultiple(TreeInfo treeInfo, SequenceIterator sequenceIterator, int i) throws XPathException {
        C18377b c18377b = new C18377b();
        c18377b.f100319e = treeInfo;
        c18377b.f100320f = i;
        return new DocumentOrderIterator(new MappingIterator(sequenceIterator, c18377b), LocalOrderComparer.getInstance());
    }

    public static SequenceIterator getIdSingle(TreeInfo treeInfo, UnicodeString unicodeString, int i) throws XPathException {
        if (!Whitespace.containsWhitespace(unicodeString.codePoints())) {
            return SingletonIterator.makeIterator(treeInfo.selectID(unicodeString.toString(), i == 1));
        }
        Whitespace.Tokenizer tokenizer = new Whitespace.Tokenizer(unicodeString);
        C18377b c18377b = new C18377b();
        c18377b.f100319e = treeInfo;
        c18377b.f100320f = i;
        return new DocumentOrderIterator(new MappingIterator(tokenizer, c18377b), LocalOrderComparer.getInstance());
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        NodeInfo root = (sequenceArr.length == 1 ? getContextNode(xPathContext) : (NodeInfo) sequenceArr[1].head()).getRoot();
        if (root.getNodeKind() == 9) {
            TreeInfo treeInfo = root.getTreeInfo();
            Sequence sequence = sequenceArr[0];
            return SequenceTool.toLazySequence(sequence instanceof AtomicValue ? getIdSingle(treeInfo, ((AtomicValue) sequence).getUnicodeStringValue(), getOp()) : getIdMultiple(treeInfo, sequence.iterate(), getOp()));
        }
        throw new XPathException("In the " + getFunctionName().getLocalPart() + "() function, the tree being searched must be one whose root is a document node", "FODC0001", xPathContext);
    }

    public abstract int getOp();

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getSpecialProperties(Expression[] expressionArr) {
        return (getArity() == 1 || (expressionArr[1].getSpecialProperties() & 65536) != 0) ? 25362432 : 25296896;
    }
}
