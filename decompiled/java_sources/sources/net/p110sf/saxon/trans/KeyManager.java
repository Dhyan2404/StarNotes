package net.p110sf.saxon.trans;

import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.AtomicSequenceConverter;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.ContextItemExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.PackageData;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.functions.IntegratedFunctionLibrary;
import net.p110sf.saxon.functions.IsIdRef;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.p111z.IntHashMap;
import net.p110sf.saxon.pattern.BasePatternWithPredicate;
import net.p110sf.saxon.pattern.MultipleNodeKindTest;
import net.p110sf.saxon.pattern.NodeTestPattern;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.sxpath.IndependentContext;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.KeyIndex;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.Converter;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.NumericValue;

/* loaded from: classes11.dex */
public class KeyManager {

    /* renamed from: a */
    public final PackageData f102315a;

    /* renamed from: b */
    public final HashMap<StructuredQName, KeyDefinitionSet> f102316b = new HashMap<>(10);

    /* renamed from: c */
    public transient WeakHashMap<TreeInfo, WeakReference<IntHashMap<KeyIndex>>> f102317c = new WeakHashMap<>(10);

    public KeyManager(Configuration configuration, PackageData packageData) {
        this.f102315a = packageData;
        m64127i(configuration);
    }

    /* renamed from: a */
    public final synchronized KeyIndex m64119a(KeyDefinitionSet keyDefinitionSet, TreeInfo treeInfo, XPathContext xPathContext) throws XPathException {
        KeyIndex keyIndex;
        keyIndex = new KeyIndex(keyDefinitionSet.isRangeKey());
        keyIndex.buildIndex(keyDefinitionSet, treeInfo, xPathContext);
        return keyIndex;
    }

    public synchronized void addKeyDefinition(StructuredQName structuredQName, KeyDefinition keyDefinition, boolean z, Configuration configuration) throws XPathException {
        KeyDefinitionSet keyDefinitionSet = this.f102316b.get(structuredQName);
        if (keyDefinitionSet == null) {
            keyDefinitionSet = new KeyDefinitionSet(structuredQName, this.f102316b.size());
            this.f102316b.put(structuredQName, keyDefinitionSet);
        }
        keyDefinitionSet.addKeyDefinition(keyDefinition);
        if (!z) {
            keyDefinitionSet.setReusable(false);
        }
        if (keyDefinitionSet.isBackwardsCompatible()) {
            for (KeyDefinition keyDefinition2 : keyDefinitionSet.getKeyDefinitions()) {
                keyDefinition2.setBackwardsCompatible(true);
                ItemType itemType = keyDefinition2.getBody().getItemType();
                BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.STRING;
                if (!itemType.equals(builtInAtomicType)) {
                    AtomicSequenceConverter atomicSequenceConverter = new AtomicSequenceConverter(keyDefinition2.getBody(), builtInAtomicType);
                    atomicSequenceConverter.allocateConverterStatically(configuration, false);
                    keyDefinition2.setBody(atomicSequenceConverter);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m64120b(KeyIndex keyIndex, KeyDefinitionSet keyDefinitionSet, TreeInfo treeInfo, XPathContext xPathContext) throws XPathException {
        keyIndex.buildIndex(keyDefinitionSet, treeInfo, xPathContext);
    }

    /* renamed from: c */
    public final synchronized KeyIndex m64121c(TreeInfo treeInfo, int i, XPathContext xPathContext) {
        Map<Long, KeyIndex> map = xPathContext.getController().getLocalIndexes().get(i);
        if (map == null) {
            return null;
        }
        return map.get(Long.valueOf(treeInfo.getDocumentNumber()));
    }

    public synchronized void clearDocumentIndexes(TreeInfo treeInfo) {
        this.f102317c.remove(treeInfo);
    }

    /* renamed from: d */
    public final synchronized KeyIndex m64122d(TreeInfo treeInfo, int i) {
        if (this.f102317c == null) {
            this.f102317c = new WeakHashMap<>(10);
        }
        WeakReference<IntHashMap<KeyIndex>> weakReference = this.f102317c.get(treeInfo);
        if (weakReference == null) {
            return null;
        }
        IntHashMap<KeyIndex> intHashMap = weakReference.get();
        if (intHashMap == null) {
            return null;
        }
        return intHashMap.get(i);
    }

    /* renamed from: e */
    public final KeyIndex m64123e(KeyDefinitionSet keyDefinitionSet, TreeInfo treeInfo, XPathContext xPathContext) throws XPathException {
        int keySetNumber = keyDefinitionSet.getKeySetNumber();
        KeyIndex m64121c = m64121c(treeInfo, keySetNumber, xPathContext);
        if (m64121c != null) {
            KeyIndex.Status status = m64121c.getStatus();
            if (status == KeyIndex.Status.UNDER_CONSTRUCTION) {
                if (m64121c.isCreatedInThisThread()) {
                    XPathException xPathException = new XPathException("Key definition " + keyDefinitionSet.getKeyName().getDisplayName() + " is circular");
                    xPathException.setXPathContext(xPathContext);
                    xPathException.setErrorCode("XTDE0640");
                    throw xPathException;
                }
                m64121c = null;
            } else if (status == KeyIndex.Status.FAILED) {
                throw new XPathException("Construction of index for key " + keyDefinitionSet.getKeyName().getDisplayName() + " was unsuccessful");
            }
        }
        if (m64121c == null) {
            KeyIndex keyIndex = new KeyIndex(keyDefinitionSet.isRangeKey());
            synchronized (this) {
                keyIndex.setStatus(KeyIndex.Status.UNDER_CONSTRUCTION);
                KeyIndex m64125g = m64125g(treeInfo, keySetNumber, keyIndex, xPathContext);
                KeyIndex.Status status2 = m64125g.getStatus();
                KeyIndex.Status status3 = KeyIndex.Status.BUILT;
                if (status2 == status3) {
                    return m64125g;
                }
                m64120b(m64125g, keyDefinitionSet, treeInfo, xPathContext);
                synchronized (this) {
                    m64125g.setStatus(status3);
                    m64121c = m64125g(treeInfo, keySetNumber, m64125g, xPathContext);
                }
            }
        }
        return m64121c;
    }

    public void exportKeys(ExpressionPresenter expressionPresenter, Map<Component, Integer> map) throws XPathException {
        for (Map.Entry<StructuredQName, KeyDefinitionSet> entry : this.f102316b.entrySet()) {
            boolean isReusable = entry.getValue().isReusable();
            for (KeyDefinition keyDefinition : entry.getValue().getKeyDefinitions()) {
                if (!keyDefinition.getObjectName().equals(StandardNames.getStructuredQName(562))) {
                    keyDefinition.export(expressionPresenter, isReusable, map);
                }
            }
        }
    }

    /* renamed from: f */
    public final KeyIndex m64124f(KeyDefinitionSet keyDefinitionSet, TreeInfo treeInfo, XPathContext xPathContext) throws XPathException {
        int keySetNumber = keyDefinitionSet.getKeySetNumber();
        KeyIndex m64122d = m64122d(treeInfo, keySetNumber);
        if (m64122d != null) {
            KeyIndex.Status status = m64122d.getStatus();
            if (status == KeyIndex.Status.UNDER_CONSTRUCTION) {
                if (m64122d.isCreatedInThisThread()) {
                    XPathException xPathException = new XPathException("Key definition " + keyDefinitionSet.getKeyName().getDisplayName() + " is circular");
                    xPathException.setXPathContext(xPathContext);
                    xPathException.setErrorCode("XTDE0640");
                    throw xPathException;
                }
                m64122d = null;
            } else if (status == KeyIndex.Status.FAILED) {
                throw new XPathException("Construction of index for key " + keyDefinitionSet.getKeyName().getDisplayName() + " was unsuccessful");
            }
        }
        if (m64122d == null) {
            KeyIndex keyIndex = new KeyIndex(keyDefinitionSet.isRangeKey());
            synchronized (this) {
                keyIndex.setStatus(KeyIndex.Status.UNDER_CONSTRUCTION);
                KeyIndex m64126h = m64126h(treeInfo, keySetNumber, keyIndex, xPathContext);
                KeyIndex.Status status2 = m64126h.getStatus();
                KeyIndex.Status status3 = KeyIndex.Status.BUILT;
                if (status2 == status3) {
                    return m64126h;
                }
                m64120b(m64126h, keyDefinitionSet, treeInfo, xPathContext);
                synchronized (this) {
                    m64126h.setStatus(status3);
                    m64122d = m64126h(treeInfo, keySetNumber, m64126h, xPathContext);
                }
            }
        }
        return m64122d;
    }

    public KeyDefinitionSet findKeyDefinition(Pattern pattern, Expression expression, String str) {
        for (KeyDefinitionSet keyDefinitionSet : this.f102316b.values()) {
            if (keyDefinitionSet.getKeyDefinitions().size() == 1) {
                for (KeyDefinition keyDefinition : keyDefinitionSet.getKeyDefinitions()) {
                    if (keyDefinition.getMatch().isEqual(pattern) && keyDefinition.getUse().isEqual(expression) && keyDefinition.getCollationName().equals(str)) {
                        return keyDefinitionSet;
                    }
                }
            }
        }
        return null;
    }

    /* renamed from: g */
    public final synchronized KeyIndex m64125g(TreeInfo treeInfo, int i, KeyIndex keyIndex, XPathContext xPathContext) {
        IntHashMap<Map<Long, KeyIndex>> localIndexes = xPathContext.getController().getLocalIndexes();
        Map<Long, KeyIndex> map = localIndexes.get(i);
        if (map == null) {
            map = new HashMap<>();
            localIndexes.put(i, map);
        }
        KeyIndex keyIndex2 = map.get(Long.valueOf(treeInfo.getDocumentNumber()));
        if (keyIndex2 != null && keyIndex2.getStatus() == KeyIndex.Status.BUILT) {
            keyIndex = keyIndex2;
        }
        map.put(Long.valueOf(treeInfo.getDocumentNumber()), keyIndex);
        return keyIndex;
    }

    public Collection<KeyDefinitionSet> getAllKeyDefinitionSets() {
        return this.f102316b.values();
    }

    public KeyDefinitionSet getKeyDefinitionSet(StructuredQName structuredQName) {
        return this.f102316b.get(structuredQName);
    }

    public int getNumberOfKeyDefinitions() {
        return this.f102316b.size();
    }

    /* renamed from: h */
    public final synchronized KeyIndex m64126h(TreeInfo treeInfo, int i, KeyIndex keyIndex, XPathContext xPathContext) {
        IntHashMap<KeyIndex> intHashMap;
        KeyIndex keyIndex2;
        if (this.f102317c == null) {
            this.f102317c = new WeakHashMap<>(10);
        }
        WeakReference<IntHashMap<KeyIndex>> weakReference = this.f102317c.get(treeInfo);
        if (weakReference != null && weakReference.get() != null) {
            intHashMap = weakReference.get();
            keyIndex2 = intHashMap.get(i);
            if (keyIndex2 != null && keyIndex2.getStatus() == KeyIndex.Status.BUILT) {
                keyIndex = keyIndex2;
            }
            intHashMap.put(i, keyIndex);
        }
        IntHashMap<KeyIndex> intHashMap2 = new IntHashMap<>(10);
        if (xPathContext.getController().getDocumentPool().contains(treeInfo)) {
            xPathContext.getController().setUserData(treeInfo, "saxon:key-index-list", intHashMap2);
        } else {
            treeInfo.setUserData("saxon:key-index-list", intHashMap2);
        }
        this.f102317c.put(treeInfo, new WeakReference<>(intHashMap2));
        intHashMap = intHashMap2;
        keyIndex2 = intHashMap.get(i);
        if (keyIndex2 != null) {
            keyIndex = keyIndex2;
        }
        intHashMap.put(i, keyIndex);
        return keyIndex;
    }

    /* renamed from: i */
    public final synchronized void m64127i(Configuration configuration) {
        StructuredQName structuredQName = StandardNames.getStructuredQName(562);
        if (this.f102316b.get(structuredQName) == null) {
            BasePatternWithPredicate basePatternWithPredicate = new BasePatternWithPredicate(new NodeTestPattern(new MultipleNodeKindTest(UType.ELEMENT_OR_ATTRIBUTE)), IntegratedFunctionLibrary.makeFunctionCall(new IsIdRef(), new Expression[0]));
            try {
                IndependentContext independentContext = new IndependentContext(configuration);
                independentContext.setPackageData(this.f102315a);
                independentContext.setXPathLanguageLevel(31);
                RetainedStaticContext retainedStaticContext = new RetainedStaticContext(independentContext);
                KeyDefinition keyDefinition = new KeyDefinition(new SymbolicName(169, structuredQName), basePatternWithPredicate, SystemFunction.makeCall("tokenize", retainedStaticContext, SystemFunction.makeCall("string", retainedStaticContext, new ContextItemExpression())), null, null);
                keyDefinition.setPackageData(this.f102315a);
                keyDefinition.setIndexedItemType(BuiltInAtomicType.STRING);
                addKeyDefinition(structuredQName, keyDefinition, true, configuration);
            } catch (XPathException e) {
                throw new AssertionError(e);
            }
        }
    }

    public KeyIndex obtainIndex(KeyDefinitionSet keyDefinitionSet, TreeInfo treeInfo, XPathContext xPathContext) throws XPathException {
        return keyDefinitionSet.isReusable() ? m64124f(keyDefinitionSet, treeInfo, xPathContext) : m64123e(keyDefinitionSet, treeInfo, xPathContext);
    }

    public synchronized void preRegisterKeyDefinition(StructuredQName structuredQName) {
        if (this.f102316b.get(structuredQName) == null) {
            this.f102316b.put(structuredQName, new KeyDefinitionSet(structuredQName, this.f102316b.size()));
        }
    }

    public SequenceIterator selectByCompositeKey(KeyDefinitionSet keyDefinitionSet, TreeInfo treeInfo, SequenceIterator sequenceIterator, XPathContext xPathContext) throws XPathException {
        return obtainIndex(keyDefinitionSet, treeInfo, xPathContext).getComposite(sequenceIterator);
    }

    public SequenceIterator selectByKey(KeyDefinitionSet keyDefinitionSet, TreeInfo treeInfo, AtomicValue atomicValue, XPathContext xPathContext) throws XPathException {
        if (atomicValue == null) {
            return EmptyIterator.ofNodes();
        }
        if (keyDefinitionSet.isBackwardsCompatible()) {
            atomicValue = Converter.convert(atomicValue, BuiltInAtomicType.STRING, xPathContext.getConfiguration().getConversionRules()).asAtomic();
        } else {
            BuiltInAtomicType primitiveType = atomicValue.getPrimitiveType();
            if (primitiveType.equals(BuiltInAtomicType.INTEGER) || primitiveType.equals(BuiltInAtomicType.DECIMAL) || primitiveType.equals(BuiltInAtomicType.FLOAT)) {
                atomicValue = new DoubleValue(((NumericValue) atomicValue).getDoubleValue());
            }
        }
        return obtainIndex(keyDefinitionSet, treeInfo, xPathContext).getNodes(atomicValue);
    }
}
