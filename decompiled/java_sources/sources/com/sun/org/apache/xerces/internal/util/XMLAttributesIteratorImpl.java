package com.sun.org.apache.xerces.internal.util;

import com.sun.org.apache.xerces.internal.util.XMLAttributesImpl;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes10.dex */
public class XMLAttributesIteratorImpl extends XMLAttributesImpl implements Iterator {
    protected int fCurrent = 0;
    protected XMLAttributesImpl.Attribute fLastReturnedItem;

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.fCurrent < getLength();
    }

    @Override // java.util.Iterator
    public Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        XMLAttributesImpl.Attribute[] attributeArr = this.fAttributes;
        int i = this.fCurrent;
        this.fCurrent = i + 1;
        XMLAttributesImpl.Attribute attribute = attributeArr[i];
        this.fLastReturnedItem = attribute;
        return attribute;
    }

    @Override // java.util.Iterator
    public void remove() {
        XMLAttributesImpl.Attribute attribute = this.fLastReturnedItem;
        XMLAttributesImpl.Attribute[] attributeArr = this.fAttributes;
        int i = this.fCurrent;
        if (attribute != attributeArr[i - 1]) {
            throw new IllegalStateException();
        }
        this.fCurrent = i - 1;
        removeAttributeAt(i);
    }

    @Override // com.sun.org.apache.xerces.internal.util.XMLAttributesImpl, com.sun.org.apache.xerces.internal.xni.XMLAttributes
    public void removeAllAttributes() {
        super.removeAllAttributes();
        this.fCurrent = 0;
    }
}
