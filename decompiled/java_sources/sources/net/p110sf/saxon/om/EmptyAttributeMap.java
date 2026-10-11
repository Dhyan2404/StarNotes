package net.p110sf.saxon.om;

import java.util.Collections;
import java.util.Iterator;
import java.util.function.Function;

/* loaded from: classes11.dex */
public class EmptyAttributeMap implements AttributeMap {

    /* renamed from: e */
    public static final EmptyAttributeMap f100781e = new EmptyAttributeMap();

    public static EmptyAttributeMap getInstance() {
        return f100781e;
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public AttributeMap apply(Function<AttributeInfo, AttributeInfo> function) {
        return this;
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public AttributeInfo get(String str, String str2) {
        return null;
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public AttributeInfo getByFingerprint(int i, NamePool namePool) {
        return null;
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public AttributeInfo itemAt(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // java.lang.Iterable
    public Iterator<AttributeInfo> iterator() {
        return Collections.emptyIterator();
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public AttributeMap put(AttributeInfo attributeInfo) {
        return SingletonAttributeMap.m63409of(attributeInfo);
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public AttributeMap remove(NodeName nodeName) {
        return this;
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public int size() {
        return 0;
    }

    @Override // net.p110sf.saxon.om.AttributeMap
    public AttributeInfo get(NodeName nodeName) {
        return null;
    }
}
