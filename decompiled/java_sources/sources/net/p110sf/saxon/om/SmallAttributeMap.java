package net.p110sf.saxon.om;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes11.dex */
public class SmallAttributeMap implements AttributeMap {
    public static final int LIMIT = 8;

    /* renamed from: e */
    public final ArrayList<AttributeInfo> f100854e;

    public SmallAttributeMap(List<AttributeInfo> list) {
        this.f100854e = new ArrayList<>(list);
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public ArrayList<AttributeInfo> asList() {
        return this.f100854e;
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public AttributeInfo get(NodeName nodeName) {
        Iterator<AttributeInfo> it2 = this.f100854e.iterator();
        while (it2.hasNext()) {
            AttributeInfo next = it2.next();
            if (next.getNodeName().equals(nodeName)) {
                return next;
            }
        }
        return null;
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public AttributeInfo getByFingerprint(int i, NamePool namePool) {
        Iterator<AttributeInfo> it2 = this.f100854e.iterator();
        while (it2.hasNext()) {
            AttributeInfo next = it2.next();
            if (next.getNodeName().obtainFingerprint(namePool) == i) {
                return next;
            }
        }
        return null;
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public AttributeInfo itemAt(int i) {
        return this.f100854e.get(i);
    }

    @Override // java.lang.Iterable
    public Iterator<AttributeInfo> iterator() {
        return this.f100854e.iterator();
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public int size() {
        return this.f100854e.size();
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public AttributeInfo get(String str, String str2) {
        Iterator<AttributeInfo> it2 = this.f100854e.iterator();
        while (it2.hasNext()) {
            AttributeInfo next = it2.next();
            NodeName nodeName = next.getNodeName();
            if (nodeName.getLocalPart().equals(str2) && nodeName.hasURI(str)) {
                return next;
            }
        }
        return null;
    }
}
