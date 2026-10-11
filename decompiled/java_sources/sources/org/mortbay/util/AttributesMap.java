package org.mortbay.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes13.dex */
public class AttributesMap implements Attributes {

    /* renamed from: e */
    public Map f115288e;

    public AttributesMap() {
        this.f115288e = new HashMap();
    }

    public static Enumeration getAttributeNamesCopy(Attributes attributes) {
        if (attributes instanceof AttributesMap) {
            return Collections.enumeration(((AttributesMap) attributes).f115288e.keySet());
        }
        ArrayList arrayList = new ArrayList();
        Enumeration attributeNames = attributes.getAttributeNames();
        while (attributeNames.hasMoreElements()) {
            arrayList.add(attributeNames.nextElement());
        }
        return Collections.enumeration(arrayList);
    }

    @Override // org.mortbay.util.Attributes
    public void clearAttributes() {
        this.f115288e.clear();
    }

    @Override // org.mortbay.util.Attributes
    public Object getAttribute(String str) {
        return this.f115288e.get(str);
    }

    @Override // org.mortbay.util.Attributes
    public Enumeration getAttributeNames() {
        return Collections.enumeration(this.f115288e.keySet());
    }

    @Override // org.mortbay.util.Attributes
    public void removeAttribute(String str) {
        this.f115288e.remove(str);
    }

    @Override // org.mortbay.util.Attributes
    public void setAttribute(String str, Object obj) {
        if (obj == null) {
            this.f115288e.remove(str);
        } else {
            this.f115288e.put(str, obj);
        }
    }

    public String toString() {
        return this.f115288e.toString();
    }

    public AttributesMap(Map map) {
        this.f115288e = map;
    }
}
