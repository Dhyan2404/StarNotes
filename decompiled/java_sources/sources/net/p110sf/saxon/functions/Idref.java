package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.MappingFunction;
import net.p110sf.saxon.expr.MappingIterator;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.sort.DocumentOrderIterator;
import net.p110sf.saxon.expr.sort.LocalOrderComparer;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.LazySequence;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.trans.KeyDefinitionSet;
import net.p110sf.saxon.trans.KeyManager;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class Idref extends SystemFunction {

    /* renamed from: net.sf.saxon.functions.Idref$b */
    /* loaded from: classes11.dex */
    public static class C18357b implements MappingFunction {

        /* renamed from: e */
        public TreeInfo f100233e;

        /* renamed from: f */
        public XPathContext f100234f;

        /* renamed from: g */
        public KeyManager f100235g;

        /* renamed from: h */
        public KeyDefinitionSet f100236h;

        public C18357b() {
        }

        @Override // net.p110sf.saxon.expr.MappingFunction
        public SequenceIterator map(Item item) throws XPathException {
            return this.f100235g.selectByKey(this.f100236h, this.f100233e, (StringValue) item, this.f100234f);
        }
    }

    public static SequenceIterator getIdrefMultiple(TreeInfo treeInfo, SequenceIterator sequenceIterator, XPathContext xPathContext) throws XPathException {
        C18357b c18357b = new C18357b();
        c18357b.f100233e = treeInfo;
        c18357b.f100234f = xPathContext;
        KeyManager keyManager = xPathContext.getController().getExecutable().getTopLevelPackage().getKeyManager();
        c18357b.f100235g = keyManager;
        c18357b.f100236h = keyManager.getKeyDefinitionSet(StandardNames.getStructuredQName(562));
        return new DocumentOrderIterator(new MappingIterator(sequenceIterator, c18357b), LocalOrderComparer.getInstance());
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        NodeInfo root = (sequenceArr.length == 1 ? getContextNode(xPathContext) : (NodeInfo) sequenceArr[1].head()).getRoot();
        if (root.getNodeKind() == 9) {
            return new LazySequence(getIdrefMultiple(root.getTreeInfo(), sequenceArr[0].iterate(), xPathContext));
        }
        throw new XPathException("In the idref() function, the tree being searched must be one whose root is a document node", "FODC0001", xPathContext);
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getSpecialProperties(Expression[] expressionArr) {
        return (getArity() == 1 || expressionArr[1].hasSpecialProperty(65536)) ? 25362432 : 25296896;
    }
}
