package net.p110sf.saxon.om;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.Function;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.tree.jiter.MonoIterator;
import net.p110sf.saxon.type.SimpleType;

/* loaded from: classes11.dex */
public class SingletonAttributeMap extends AttributeInfo implements AttributeMap {
    public SingletonAttributeMap(NodeName nodeName, SimpleType simpleType, String str, Location location, int i) {
        super(nodeName, simpleType, str, location, i);
    }

    /* renamed from: of */
    public static SingletonAttributeMap m63409of(AttributeInfo attributeInfo) {
        return attributeInfo instanceof SingletonAttributeMap ? (SingletonAttributeMap) attributeInfo : new SingletonAttributeMap(attributeInfo.getNodeName(), attributeInfo.getType(), attributeInfo.getValue(), attributeInfo.getLocation(), attributeInfo.getProperties());
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public AttributeMap apply(Function<AttributeInfo, AttributeInfo> function) {
        return m63409of(function.apply(this));
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public ArrayList<AttributeInfo> asList() {
        ArrayList<AttributeInfo> arrayList = new ArrayList<>(1);
        arrayList.add(this);
        return arrayList;
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public AttributeInfo get(NodeName nodeName) {
        if (nodeName.equals(getNodeName())) {
            return this;
        }
        return null;
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public AttributeInfo getByFingerprint(int i, NamePool namePool) {
        if (getNodeName().obtainFingerprint(namePool) == i) {
            return this;
        }
        return null;
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public AttributeInfo itemAt(int i) {
        if (i == 0) {
            return this;
        }
        throw new IndexOutOfBoundsException(i + " of 1");
    }

    @Override // java.lang.Iterable
    public Iterator<AttributeInfo> iterator() {
        return new MonoIterator(this);
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public AttributeMap put(AttributeInfo attributeInfo) {
        if (getNodeName().equals(attributeInfo.getNodeName())) {
            return m63409of(attributeInfo);
        }
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(this);
        arrayList.add(attributeInfo);
        return new SmallAttributeMap(arrayList);
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public AttributeMap remove(NodeName nodeName) {
        return nodeName.equals(getNodeName()) ? EmptyAttributeMap.getInstance() : this;
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public int size() {
        return 1;
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public AttributeInfo get(String str, String str2) {
        if (getNodeName().getLocalPart().equals(str2) && getNodeName().hasURI(str)) {
            return this;
        }
        return null;
    }
}
