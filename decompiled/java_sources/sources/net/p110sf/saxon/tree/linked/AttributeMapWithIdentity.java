package net.p110sf.saxon.tree.linked;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.iter.NodeListIterator;
import net.p110sf.saxon.tree.linked.AttributeMapWithIdentity;

/* loaded from: classes11.dex */
public class AttributeMapWithIdentity implements AttributeMap {

    /* renamed from: e */
    public final List<AttributeInfo> f102489e;

    public AttributeMapWithIdentity(List<AttributeInfo> list) {
        this.f102489e = list;
    }

    /* renamed from: d */
    public static /* synthetic */ boolean m64518d(AttributeInfo attributeInfo) {
        return !(attributeInfo instanceof AttributeInfo.Deleted);
    }

    /* renamed from: e */
    public static /* synthetic */ boolean m64519e(AttributeInfo attributeInfo) {
        return !(attributeInfo instanceof AttributeInfo.Deleted);
    }

    public AttributeMapWithIdentity add(AttributeInfo attributeInfo) {
        ArrayList arrayList = new ArrayList(this.f102489e);
        arrayList.add(attributeInfo);
        return new AttributeMapWithIdentity(arrayList);
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public ArrayList<AttributeInfo> asList() {
        List list = (List) this.f102489e.stream().filter(new Predicate() { // from class: com.sunia.HTREnginev2.lh
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m64518d;
                m64518d = AttributeMapWithIdentity.m64518d((AttributeInfo) obj);
                return m64518d;
            }
        }).collect(Collectors.toList());
        return list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list);
    }

    /* renamed from: c */
    public final boolean m64520c(AttributeInfo attributeInfo) {
        return attributeInfo instanceof AttributeInfo.Deleted;
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public AttributeInfo get(NodeName nodeName) {
        for (AttributeInfo attributeInfo : this.f102489e) {
            if (attributeInfo.getNodeName().equals(nodeName) && !(attributeInfo instanceof AttributeInfo.Deleted)) {
                return attributeInfo;
            }
        }
        return null;
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public AttributeInfo getByFingerprint(int i, NamePool namePool) {
        for (AttributeInfo attributeInfo : this.f102489e) {
            if (attributeInfo.getNodeName().obtainFingerprint(namePool) == i) {
                return attributeInfo;
            }
        }
        return null;
    }

    public int getIndex(String str, String str2) {
        for (int i = 0; i < this.f102489e.size(); i++) {
            NodeName nodeName = this.f102489e.get(i).getNodeName();
            if (nodeName.getLocalPart().equals(str2) && nodeName.hasURI(str)) {
                return i;
            }
        }
        return -1;
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public AttributeInfo itemAt(int i) {
        return this.f102489e.get(i);
    }

    public AxisIterator iterateAttributes(ElementImpl elementImpl) {
        ArrayList arrayList = new ArrayList(this.f102489e.size());
        for (int i = 0; i < this.f102489e.size(); i++) {
            if (!(this.f102489e.get(i) instanceof AttributeInfo.Deleted)) {
                arrayList.add(new AttributeImpl(elementImpl, i));
            }
        }
        return new NodeListIterator(arrayList);
    }

    @Override // java.lang.Iterable
    public Iterator<AttributeInfo> iterator() {
        return this.f102489e.stream().filter(new Predicate() { // from class: com.sunia.HTREnginev2.mh
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m64519e;
                m64519e = AttributeMapWithIdentity.m64519e((AttributeInfo) obj);
                return m64519e;
            }
        }).iterator();
    }

    public AttributeMapWithIdentity remove(int i) {
        ArrayList arrayList = new ArrayList(this.f102489e);
        if (i >= 0 && i < this.f102489e.size()) {
            arrayList.set(i, new AttributeInfo.Deleted(this.f102489e.get(i)));
        }
        return new AttributeMapWithIdentity(arrayList);
    }

    public AttributeMapWithIdentity set(int i, AttributeInfo attributeInfo) {
        ArrayList arrayList = new ArrayList(this.f102489e);
        if (i >= 0 && i < this.f102489e.size()) {
            arrayList.set(i, attributeInfo);
        } else if (i == this.f102489e.size()) {
            arrayList.add(attributeInfo);
        }
        return new AttributeMapWithIdentity(arrayList);
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public int size() {
        Iterator<AttributeInfo> it2 = this.f102489e.iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (!(it2.next() instanceof AttributeInfo.Deleted)) {
                i++;
            }
        }
        return i;
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public AttributeInfo get(String str, String str2) {
        for (AttributeInfo attributeInfo : this.f102489e) {
            NodeName nodeName = attributeInfo.getNodeName();
            if (nodeName.getLocalPart().equals(str2) && nodeName.hasURI(str) && !(attributeInfo instanceof AttributeInfo.Deleted)) {
                return attributeInfo;
            }
        }
        return null;
    }
}
