package net.p110sf.saxon.trans;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.sort.AtomicMatchKey;
import net.p110sf.saxon.expr.sort.DocumentOrderIterator;
import net.p110sf.saxon.expr.sort.GlobalOrderComparer;
import net.p110sf.saxon.expr.sort.LocalOrderComparer;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.ItemConsumer;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.trans.KeyIndex;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.iter.ListIterator;
import net.p110sf.saxon.tree.iter.ManualIterator;
import net.p110sf.saxon.tree.iter.NodeListIterator;
import net.p110sf.saxon.tree.iter.SingleNodeIterator;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.Converter;
import net.p110sf.saxon.type.PrimitiveUType;
import net.p110sf.saxon.type.StringConverter;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class KeyIndex {

    /* renamed from: a */
    public final Map<AtomicMatchKey, Object> f102304a;

    /* renamed from: b */
    public UType f102305b = UType.VOID;

    /* renamed from: c */
    public final UType f102306c = UType.STRING_LIKE;

    /* renamed from: d */
    public List<StringValue> f102307d;

    /* renamed from: e */
    public ConversionRules f102308e;

    /* renamed from: f */
    public int f102309f;

    /* renamed from: g */
    public StringCollator f102310g;

    /* renamed from: h */
    public final long f102311h;

    /* renamed from: i */
    public Status f102312i;

    /* loaded from: classes11.dex */
    public enum Status {
        UNDER_CONSTRUCTION,
        BUILT,
        FAILED
    }

    /* renamed from: net.sf.saxon.trans.KeyIndex$a */
    /* loaded from: classes11.dex */
    public class C18529a implements AtomicMatchKey {

        /* renamed from: e */
        public final List<AtomicMatchKey> f102313e;

        public C18529a(List<AtomicMatchKey> list) {
            this.f102313e = list;
        }

        @Override // net.p110sf.saxon.expr.sort.AtomicMatchKey
        public AtomicValue asAtomic() {
            throw new UnsupportedOperationException();
        }

        public boolean equals(Object obj) {
            if (obj instanceof C18529a) {
                C18529a c18529a = (C18529a) obj;
                if (c18529a.f102313e.size() == this.f102313e.size()) {
                    List<AtomicMatchKey> list = c18529a.f102313e;
                    for (int i = 0; i < this.f102313e.size(); i++) {
                        if (!this.f102313e.get(i).equals(list.get(i))) {
                            return false;
                        }
                    }
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            Iterator<AtomicMatchKey> it2 = this.f102313e.iterator();
            int i = 447904982;
            while (it2.hasNext()) {
                i = (i ^ it2.next().hashCode()) << 1;
            }
            return i;
        }
    }

    public KeyIndex(boolean z) {
        if (z) {
            this.f102304a = new TreeMap();
        } else {
            this.f102304a = new HashMap(100);
        }
        this.f102311h = Thread.currentThread().getId();
        this.f102312i = Status.UNDER_CONSTRUCTION;
    }

    /* renamed from: g */
    public static AtomicMatchKey m64111g(AtomicValue atomicValue, StringCollator stringCollator, int i) throws XPathException {
        return UType.STRING_LIKE.subsumes(atomicValue.getUType()) ? stringCollator == null ? atomicValue.getUnicodeStringValue().tidy() : stringCollator.getCollationKey(atomicValue.getUnicodeStringValue()) : atomicValue.getXPathMatchKey(stringCollator, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public /* synthetic */ void m64113i(List list, Item item) throws XPathException {
        list.add(m64111g((AtomicValue) item, this.f102310g, this.f102309f));
    }

    /* renamed from: j */
    public static /* synthetic */ void m64114j(List list, StringCollator stringCollator, int i, Item item) throws XPathException {
        list.add(m64111g((AtomicValue) item, stringCollator, i));
    }

    public void buildIndex(KeyDefinitionSet keyDefinitionSet, TreeInfo treeInfo, XPathContext xPathContext) throws XPathException {
        List<KeyDefinition> keyDefinitions = keyDefinitionSet.getKeyDefinitions();
        int i = 0;
        while (i < keyDefinitions.size()) {
            m64116e(treeInfo, keyDefinitions.get(i), xPathContext, i == 0);
            i++;
        }
        this.f102308e = xPathContext.getConfiguration().getConversionRules();
        this.f102309f = xPathContext.getImplicitTimezone();
        this.f102310g = keyDefinitions.get(0).getCollation();
    }

    /* renamed from: d */
    public final void m64115d(AtomicMatchKey atomicMatchKey, NodeInfo nodeInfo, boolean z) {
        List list;
        Object obj = this.f102304a.get(atomicMatchKey);
        if (obj == null) {
            this.f102304a.put(atomicMatchKey, nodeInfo);
            return;
        }
        if (obj instanceof NodeInfo) {
            list = new ArrayList(4);
            list.add((NodeInfo) obj);
            this.f102304a.put(atomicMatchKey, list);
        } else {
            list = (List) obj;
        }
        boolean z2 = true;
        if (z) {
            if (list.get(list.size() - 1) != nodeInfo) {
                list.add(nodeInfo);
                return;
            }
            return;
        }
        LocalOrderComparer localOrderComparer = LocalOrderComparer.getInstance();
        int size = list.size() - 1;
        while (true) {
            if (size < 0) {
                z2 = false;
                break;
            }
            int compare = localOrderComparer.compare(nodeInfo, (NodeInfo) list.get(size));
            if (compare < 0) {
                size--;
            } else if (compare != 0) {
                list.add(size + 1, nodeInfo);
            }
        }
        if (z2) {
            return;
        }
        list.add(0, nodeInfo);
    }

    /* renamed from: e */
    public final void m64116e(TreeInfo treeInfo, final KeyDefinition keyDefinition, XPathContext xPathContext, final boolean z) throws XPathException {
        Pattern match = keyDefinition.getMatch();
        final XPathContextMajor newContext = xPathContext.newContext();
        newContext.setOrigin(keyDefinition);
        newContext.setCurrentComponent(keyDefinition.getDeclaringComponent());
        newContext.setTemporaryOutputState(169);
        SlotManager stackFrameMap = keyDefinition.getStackFrameMap();
        if (stackFrameMap != null) {
            newContext.openStackFrame(stackFrameMap);
        }
        SequenceTool.supply(match.selectNodes(treeInfo, newContext), new ItemConsumer() { // from class: com.sunia.HTREnginev2.dsi
            @Override // net.p110sf.saxon.om.ItemConsumer
            public final void accept(Item item) {
                KeyIndex.this.m64112h(keyDefinition, newContext, z, item);
            }
        });
    }

    /* renamed from: f */
    public final SequenceIterator m64117f(Object obj) {
        return obj == null ? EmptyIterator.ofNodes() : obj instanceof NodeInfo ? SingleNodeIterator.makeIterator((NodeInfo) obj) : new NodeListIterator((List) obj);
    }

    public SequenceIterator getComposite(SequenceIterator sequenceIterator) throws XPathException {
        final ArrayList arrayList = new ArrayList(4);
        SequenceTool.supply(sequenceIterator, new ItemConsumer() { // from class: com.sunia.HTREnginev2.csi
            @Override // net.p110sf.saxon.om.ItemConsumer
            public final void accept(Item item) {
                KeyIndex.this.m64113i(arrayList, item);
            }
        });
        return m64117f(this.f102304a.get(new C18529a(arrayList)));
    }

    public SequenceIterator getNodes(AtomicValue atomicValue) throws XPathException {
        if (this.f102307d != null && !this.f102306c.subsumes(atomicValue.getUType())) {
            reindexUntypedValues(atomicValue.getPrimitiveType());
        }
        if (!atomicValue.isUntypedAtomic()) {
            return m64117f(this.f102304a.get(m64111g(atomicValue, this.f102310g, this.f102309f)));
        }
        ArrayList arrayList = new ArrayList();
        Iterator<PrimitiveUType> it2 = this.f102305b.decompose().iterator();
        int i = 0;
        while (it2.hasNext()) {
            Object obj = this.f102304a.get(m64111g(Converter.convert(atomicValue, (AtomicType) it2.next().toItemType(), this.f102308e), this.f102310g, this.f102309f));
            if (obj != null) {
                i++;
                if (obj instanceof NodeInfo) {
                    arrayList.add((NodeInfo) obj);
                } else {
                    arrayList.addAll((List) obj);
                }
            }
        }
        ListIterator.C18538Of c18538Of = new ListIterator.C18538Of(arrayList);
        return i > 1 ? new DocumentOrderIterator(c18538Of, GlobalOrderComparer.getInstance()) : c18538Of;
    }

    public Status getStatus() {
        return this.f102312i;
    }

    public Map<AtomicMatchKey, Object> getUnderlyingMap() {
        return this.f102304a;
    }

    public boolean isCreatedInThisThread() {
        return this.f102311h == Thread.currentThread().getId();
    }

    public boolean isEmpty() {
        return this.f102304a.isEmpty();
    }

    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public final void m64112h(NodeInfo nodeInfo, KeyDefinition keyDefinition, XPathContext xPathContext, boolean z) throws XPathException {
        xPathContext.setCurrentIterator(new ManualIterator(nodeInfo));
        final StringCollator collation = keyDefinition.getCollation();
        final int implicitTimezone = xPathContext.getImplicitTimezone();
        SequenceIterator iterate = keyDefinition.getUse().iterate(xPathContext);
        if (keyDefinition.isComposite()) {
            final ArrayList arrayList = new ArrayList(4);
            SequenceTool.supply(iterate, new ItemConsumer() { // from class: com.sunia.HTREnginev2.esi
                @Override // net.p110sf.saxon.om.ItemConsumer
                public final void accept(Item item) {
                    KeyIndex.m64114j(arrayList, collation, implicitTimezone, item);
                }
            });
            m64115d(new C18529a(arrayList), nodeInfo, z);
            return;
        }
        while (true) {
            AtomicValue atomicValue = (AtomicValue) iterate.next();
            if (atomicValue == null) {
                return;
            }
            if (!atomicValue.isNaN()) {
                UType uType = atomicValue.getUType();
                if (!this.f102305b.subsumes(uType)) {
                    this.f102305b = this.f102305b.union(uType);
                }
                AtomicMatchKey m64111g = m64111g(atomicValue, collation, implicitTimezone);
                if (uType.equals(UType.UNTYPED_ATOMIC) && keyDefinition.isConvertUntypedToOther()) {
                    if (this.f102307d == null) {
                        this.f102307d = new ArrayList(20);
                    }
                    this.f102307d.add((StringValue) atomicValue);
                }
                m64115d(m64111g, nodeInfo, z);
            }
        }
    }

    public void reindexUntypedValues(BuiltInAtomicType builtInAtomicType) throws XPathException {
        UType uType = builtInAtomicType.getUType();
        if (UType.STRING_LIKE.subsumes(uType)) {
            return;
        }
        if (UType.NUMERIC.subsumes(uType)) {
            builtInAtomicType = BuiltInAtomicType.DOUBLE;
        }
        StringConverter stringConverter = builtInAtomicType.getStringConverter(this.f102308e);
        for (StringValue stringValue : this.f102307d) {
            AtomicMatchKey m64111g = m64111g(stringValue, this.f102310g, this.f102309f);
            AtomicMatchKey m64111g2 = m64111g(stringConverter.convertString(stringValue.getUnicodeStringValue()).asAtomic(), this.f102310g, this.f102309f);
            Object obj = this.f102304a.get(m64111g);
            if (obj instanceof NodeInfo) {
                m64115d(m64111g2, (NodeInfo) obj, false);
            } else {
                Iterator it2 = ((List) obj).iterator();
                while (it2.hasNext()) {
                    m64115d(m64111g2, (NodeInfo) it2.next(), false);
                }
            }
        }
    }

    public void setStatus(Status status) {
        this.f102312i = status;
    }
}
