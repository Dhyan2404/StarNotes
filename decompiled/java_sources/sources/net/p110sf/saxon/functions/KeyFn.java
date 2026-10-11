package net.p110sf.saxon.functions;

import java.util.ArrayList;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.ItemFilter;
import net.p110sf.saxon.expr.ItemMappingIterator;
import net.p110sf.saxon.expr.RootExpression;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.UnionIterator;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.expr.sort.LocalOrderComparer;
import net.p110sf.saxon.functions.KeyFn;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.LazySequence;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.NodeSetPattern;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.trans.KeyDefinition;
import net.p110sf.saxon.trans.KeyDefinitionSet;
import net.p110sf.saxon.trans.KeyManager;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.iter.SingletonIterator;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.EmptySequence;

/* loaded from: classes11.dex */
public class KeyFn extends SystemFunction implements StatefulSystemFunction {

    /* renamed from: i */
    public static final /* synthetic */ boolean f100260i = false;

    /* renamed from: h */
    public KeyDefinitionSet f100261h = null;

    /* renamed from: d */
    public static NodeInfo m63025d(XPathContext xPathContext) throws XPathException {
        Item contextItem = xPathContext.getContextItem();
        if (contextItem == null) {
            throw new XPathException("Cannot call the key() function when there is no context item", "XTDE1270", xPathContext);
        }
        if (contextItem instanceof NodeInfo) {
            return ((NodeInfo) contextItem).getRoot();
        }
        throw new XPathException("Cannot call the key() function when the context item is not a node", "XTDE1270", xPathContext);
    }

    /* renamed from: f */
    public static Item m63026f(XPathContext xPathContext, Sequence sequence) throws XPathException {
        try {
            return sequence.head();
        } catch (XPathException e) {
            String errorCodeLocalPart = e.getErrorCodeLocalPart();
            if ("XPDY0002".equals(errorCodeLocalPart) && (sequence instanceof RootExpression)) {
                throw new XPathException("Cannot call the key() function when there is no context node", "XTDE1270", xPathContext);
            }
            if ("XPDY0050".equals(errorCodeLocalPart)) {
                throw new XPathException("In the key() function, the node supplied in the third argument (or the context node if absent) must be in a tree whose root is a document node", "XTDE1270", xPathContext);
            }
            if ("XPTY0020".equals(errorCodeLocalPart) || "XPTY0019".equals(errorCodeLocalPart)) {
                throw new XPathException("Cannot call the key() function when the context item is an atomic value", "XTDE1270", xPathContext);
            }
            throw e;
        }
    }

    /* renamed from: g */
    public static /* synthetic */ boolean m63027g(NodeInfo nodeInfo, Item item) throws XPathException {
        return Navigator.isAncestorOrSelf(nodeInfo, (NodeInfo) item);
    }

    /* renamed from: h */
    public static /* synthetic */ boolean m63028h(NodeInfo nodeInfo, Item item) throws XPathException {
        return Navigator.isAncestorOrSelf(nodeInfo, (NodeInfo) item);
    }

    /* renamed from: i */
    public static /* synthetic */ boolean m63029i(NodeInfo nodeInfo, Item item) throws XPathException {
        return Navigator.isAncestorOrSelf(nodeInfo, (NodeInfo) item);
    }

    public static Expression internalKeyCall(KeyManager keyManager, KeyDefinitionSet keyDefinitionSet, String str, Expression expression, Expression expression2, RetainedStaticContext retainedStaticContext) {
        KeyFn keyFn = (KeyFn) SystemFunction.makeFunction("key", retainedStaticContext, 3);
        keyFn.f100261h = keyDefinitionSet;
        try {
            keyFn.fixArguments(new StringLiteral(str), expression, expression2);
        } catch (XPathException unused) {
        }
        return keyFn.makeFunctionCall(new StringLiteral(str), expression, expression2);
    }

    public static Sequence search(KeyManager keyManager, XPathContext xPathContext, Sequence sequence, final NodeInfo nodeInfo, KeyDefinitionSet keyDefinitionSet) throws XPathException {
        NodeInfo root = nodeInfo.getRoot();
        if (keyDefinitionSet.isComposite()) {
            SequenceIterator selectByCompositeKey = keyManager.selectByCompositeKey(keyDefinitionSet, root.getTreeInfo(), sequence.iterate(), xPathContext);
            return nodeInfo.equals(root) ? new LazySequence(selectByCompositeKey) : new LazySequence(ItemMappingIterator.filter(selectByCompositeKey, new ItemFilter.Lambda() { // from class: com.sunia.HTREnginev2.zri
                @Override // net.sf.saxon.expr.ItemFilter.Lambda
                public final boolean test(Item item) {
                    boolean m63027g;
                    m63027g = KeyFn.m63027g(NodeInfo.this, item);
                    return m63027g;
                }
            }));
        }
        if (sequence instanceof AtomicValue) {
            SequenceIterator selectByKey = keyManager.selectByKey(keyDefinitionSet, root.getTreeInfo(), (AtomicValue) sequence, xPathContext);
            if (selectByKey instanceof EmptyIterator) {
                return EmptySequence.getInstance();
            }
            if (selectByKey instanceof SingletonIterator) {
                NodeInfo nodeInfo2 = (NodeInfo) selectByKey.next();
                return (root.equals(nodeInfo) || Navigator.isAncestorOrSelf(nodeInfo, nodeInfo2)) ? nodeInfo2 : EmptySequence.getInstance();
            }
            if (root.equals(nodeInfo)) {
                return new LazySequence(selectByKey);
            }
            new LazySequence(ItemMappingIterator.filter(selectByKey, new ItemFilter.Lambda() { // from class: com.sunia.HTREnginev2.asi
                @Override // net.sf.saxon.expr.ItemFilter.Lambda
                public final boolean test(Item item) {
                    boolean m63028h;
                    m63028h = KeyFn.m63028h(NodeInfo.this, item);
                    return m63028h;
                }
            }));
        }
        SequenceIterator iterate = sequence.iterate();
        ArrayList arrayList = new ArrayList();
        while (true) {
            AtomicValue atomicValue = (AtomicValue) iterate.next();
            if (atomicValue == null) {
                break;
            }
            arrayList.add(keyManager.selectByKey(keyDefinitionSet, root.getTreeInfo(), atomicValue, xPathContext));
        }
        if (arrayList.isEmpty()) {
            return EmptySequence.getInstance();
        }
        SequenceIterator unionIterator = arrayList.size() == 1 ? (SequenceIterator) arrayList.get(0) : new UnionIterator(arrayList, LocalOrderComparer.getInstance());
        return nodeInfo.equals(root) ? new LazySequence(unionIterator) : new LazySequence(ItemMappingIterator.filter(unionIterator, new ItemFilter.Lambda() { // from class: com.sunia.HTREnginev2.bsi
            @Override // net.sf.saxon.expr.ItemFilter.Lambda
            public final boolean test(Item item) {
                boolean m63029i;
                m63029i = KeyFn.m63029i(NodeInfo.this, item);
                return m63029i;
            }
        }));
    }

    public PathMap.PathMapNodeSet addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        if (this.f100261h == null) {
            throw new IllegalStateException("Can't add dynamic key() call to pathmap");
        }
        PathMap.PathMapNodeSet pathMapNodeSet2 = new PathMap.PathMapNodeSet();
        for (KeyDefinition keyDefinition : this.f100261h.getKeyDefinitions()) {
            Pattern match = keyDefinition.getMatch();
            if (!(match instanceof NodeSetPattern)) {
                throw new IllegalStateException("Can't add key() call to pathmap");
            }
            PathMap.PathMapNodeSet addToPathMap = ((NodeSetPattern) match).getSelectionExpression().addToPathMap(pathMap, pathMapNodeSet);
            keyDefinition.getUse().addToPathMap(pathMap, addToPathMap);
            pathMapNodeSet2.addNodeSet(addToPathMap);
        }
        return pathMapNodeSet2;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        NodeInfo m63025d = sequenceArr.length == 3 ? (NodeInfo) m63026f(xPathContext, sequenceArr[2]) : m63025d(xPathContext);
        if (m63025d.getRoot().getNodeKind() != 9) {
            throw new XPathException("In the key() function, the node supplied in the third argument (or the context node if absent) must be in a tree whose root is a document node", "XTDE1270", xPathContext);
        }
        KeyDefinitionSet keyDefinitionSet = this.f100261h;
        KeyManager keyManager = getKeyManager();
        if (keyDefinitionSet == null) {
            keyDefinitionSet = m63030e(keyManager, sequenceArr[0].head().getStringValue());
        }
        return search(keyManager, xPathContext, sequenceArr[1], m63025d, keyDefinitionSet);
    }

    @Override // net.p110sf.saxon.functions.StatefulSystemFunction
    public SystemFunction copy() {
        KeyFn keyFn = (KeyFn) SystemFunction.makeFunction(getFunctionName().getLocalPart(), getRetainedStaticContext(), getArity());
        keyFn.f100261h = this.f100261h;
        return keyFn;
    }

    /* renamed from: e */
    public final KeyDefinitionSet m63030e(KeyManager keyManager, String str) throws XPathException {
        try {
            KeyDefinitionSet keyDefinitionSet = keyManager.getKeyDefinitionSet(StructuredQName.fromLexicalQName(str, false, true, getNamespaceResolver()));
            if (keyDefinitionSet != null) {
                return keyDefinitionSet;
            }
            throw new XPathException("Key '" + str + "' has not been defined", "XTDE1260");
        } catch (XPathException e) {
            throw new XPathException("Invalid key name: " + e.getMessage(), "XTDE1260");
        }
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression fixArguments(Expression... expressionArr) throws XPathException {
        if (!(expressionArr[0] instanceof StringLiteral) || this.f100261h != null) {
            return null;
        }
        this.f100261h = m63030e(getKeyManager(), ((StringLiteral) expressionArr[0]).stringify());
        return null;
    }

    public KeyManager getKeyManager() {
        return getRetainedStaticContext().getPackageData().getKeyManager();
    }

    public NamespaceResolver getNamespaceResolver() {
        return getRetainedStaticContext();
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getSpecialProperties(Expression[] expressionArr) {
        return (getArity() == 2 || (expressionArr[2].getSpecialProperties() & 65536) != 0) ? 25362432 : 25296896;
    }
}
