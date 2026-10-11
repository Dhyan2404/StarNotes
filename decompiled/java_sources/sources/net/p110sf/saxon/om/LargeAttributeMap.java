package net.p110sf.saxon.om;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.ma.trie.ImmutableHashTrieMap;

/* loaded from: classes11.dex */
public class LargeAttributeMap implements AttributeMap {

    /* renamed from: i */
    public static final /* synthetic */ boolean f100801i = false;

    /* renamed from: e */
    public ImmutableHashTrieMap<NodeName, C18422b> f100802e;

    /* renamed from: f */
    public NodeName f100803f;

    /* renamed from: g */
    public NodeName f100804g;

    /* renamed from: h */
    public int f100805h;

    /* renamed from: net.sf.saxon.om.LargeAttributeMap$a */
    /* loaded from: classes11.dex */
    public class C18421a implements Iterator<AttributeInfo> {

        /* renamed from: e */
        public NodeName f100806e;

        public C18421a() {
            this.f100806e = LargeAttributeMap.this.f100803f;
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AttributeInfo next() {
            C18422b c18422b = (C18422b) LargeAttributeMap.this.f100802e.get(this.f100806e);
            this.f100806e = c18422b.f100810c;
            return c18422b.f100808a;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f100806e != null;
        }
    }

    /* renamed from: net.sf.saxon.om.LargeAttributeMap$b */
    /* loaded from: classes11.dex */
    public static class C18422b {

        /* renamed from: a */
        public AttributeInfo f100808a;

        /* renamed from: b */
        public NodeName f100809b;

        /* renamed from: c */
        public NodeName f100810c;

        public C18422b() {
        }

        public /* synthetic */ C18422b(C18421a c18421a) {
            this();
        }
    }

    public LargeAttributeMap() {
        this.f100803f = null;
        this.f100804g = null;
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public synchronized ArrayList<AttributeInfo> asList() {
        ArrayList<AttributeInfo> arrayList;
        arrayList = new ArrayList<>(this.f100805h);
        Iterator<AttributeInfo> it2 = iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next());
        }
        return arrayList;
    }

    /* renamed from: c */
    public final ImmutableHashTrieMap<NodeName, C18422b> m63378c() {
        return ImmutableHashTrieMap.empty();
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public AttributeInfo get(NodeName nodeName) {
        C18422b c18422b = this.f100802e.get(nodeName);
        if (c18422b == null) {
            return null;
        }
        return c18422b.f100808a;
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public AttributeInfo getByFingerprint(int i, NamePool namePool) {
        return get(new FingerprintedQName(namePool.getStructuredQName(i), i));
    }

    @Override // java.lang.Iterable
    public Iterator<AttributeInfo> iterator() {
        return new C18421a();
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public AttributeMap put(AttributeInfo attributeInfo) {
        C18422b c18422b = this.f100802e.get(attributeInfo.getNodeName());
        C18421a c18421a = null;
        C18422b c18422b2 = new C18422b(c18421a);
        NodeName nodeName = this.f100804g;
        c18422b2.f100808a = attributeInfo;
        if (c18422b == null) {
            c18422b2.f100809b = nodeName;
            nodeName = attributeInfo.getNodeName();
            C18422b c18422b3 = this.f100802e.get(this.f100804g);
            C18422b c18422b4 = new C18422b(c18421a);
            c18422b4.f100808a = c18422b3.f100808a;
            c18422b4.f100810c = attributeInfo.getNodeName();
            c18422b4.f100809b = c18422b3.f100809b;
            this.f100802e = this.f100802e.put((ImmutableHashTrieMap<NodeName, C18422b>) this.f100804g, (NodeName) c18422b4);
        } else {
            c18422b2.f100809b = c18422b.f100809b;
            c18422b2.f100810c = c18422b.f100810c;
        }
        return new LargeAttributeMap(this.f100802e.put((ImmutableHashTrieMap<NodeName, C18422b>) attributeInfo.getNodeName(), (NodeName) c18422b2), c18422b == null ? this.f100805h + 1 : this.f100805h, this.f100803f, nodeName);
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public AttributeMap remove(NodeName nodeName) {
        if (this.f100802e.get(nodeName) == null) {
            return this;
        }
        NodeName nodeName2 = this.f100803f;
        NodeName nodeName3 = this.f100804g;
        ImmutableHashTrieMap<NodeName, C18422b> remove = this.f100802e.remove((ImmutableHashTrieMap<NodeName, C18422b>) nodeName);
        C18422b c18422b = this.f100802e.get(nodeName);
        NodeName nodeName4 = c18422b.f100809b;
        C18421a c18421a = null;
        if (nodeName4 != null) {
            C18422b c18422b2 = this.f100802e.get(nodeName4);
            C18422b c18422b3 = new C18422b(c18421a);
            c18422b3.f100808a = c18422b2.f100808a;
            c18422b3.f100809b = c18422b2.f100809b;
            c18422b3.f100810c = c18422b.f100810c;
            remove = remove.put((ImmutableHashTrieMap<NodeName, C18422b>) c18422b.f100809b, (NodeName) c18422b3);
        } else {
            nodeName2 = c18422b.f100810c;
        }
        NodeName nodeName5 = c18422b.f100810c;
        if (nodeName5 != null) {
            C18422b c18422b4 = this.f100802e.get(nodeName5);
            C18422b c18422b5 = new C18422b(c18421a);
            c18422b5.f100808a = c18422b4.f100808a;
            c18422b5.f100810c = c18422b4.f100810c;
            c18422b5.f100809b = c18422b.f100809b;
            remove = remove.put((ImmutableHashTrieMap<NodeName, C18422b>) c18422b.f100810c, (NodeName) c18422b5);
        } else {
            nodeName3 = c18422b.f100809b;
        }
        return new LargeAttributeMap(remove, this.f100805h - 1, nodeName2, nodeName3);
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public int size() {
        return this.f100805h;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(256);
        Iterator<AttributeInfo> it2 = iterator();
        while (it2.hasNext()) {
            AttributeInfo next = it2.next();
            sb.append(next.getNodeName().getDisplayName());
            sb.append("=\"");
            sb.append(next.getValue());
            sb.append("\" ");
        }
        return sb.toString().trim();
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public AttributeInfo get(String str, String str2) {
        return get(new FingerprintedQName("", str, str2));
    }

    public LargeAttributeMap(List<AttributeInfo> list) {
        C18421a c18421a = null;
        this.f100803f = null;
        this.f100804g = null;
        this.f100802e = m63378c();
        this.f100805h = list.size();
        C18422b c18422b = null;
        for (AttributeInfo attributeInfo : list) {
            if (this.f100802e.get(attributeInfo.getNodeName()) == null) {
                C18422b c18422b2 = new C18422b(c18421a);
                c18422b2.f100808a = attributeInfo;
                if (c18422b == null) {
                    this.f100803f = attributeInfo.getNodeName();
                } else {
                    c18422b.f100810c = attributeInfo.getNodeName();
                    c18422b2.f100809b = c18422b.f100808a.getNodeName();
                }
                this.f100802e = this.f100802e.put((ImmutableHashTrieMap<NodeName, C18422b>) attributeInfo.getNodeName(), (NodeName) c18422b2);
                c18422b = c18422b2;
            } else {
                throw new IllegalArgumentException("Attribute map contains duplicates");
            }
        }
        this.f100804g = c18422b.f100808a.getNodeName();
    }

    public LargeAttributeMap(ImmutableHashTrieMap<NodeName, C18422b> immutableHashTrieMap, int i, NodeName nodeName, NodeName nodeName2) {
        this.f100802e = immutableHashTrieMap;
        this.f100805h = i;
        this.f100803f = nodeName;
        this.f100804g = nodeName2;
    }
}
