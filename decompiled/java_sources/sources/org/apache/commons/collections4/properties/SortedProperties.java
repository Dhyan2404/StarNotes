package org.apache.commons.collections4.properties;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Properties;
import java.util.Set;
import org.apache.commons.collections4.iterators.IteratorEnumeration;

/* loaded from: classes11.dex */
public class SortedProperties extends Properties {
    private static final long serialVersionUID = 1;

    @Override // java.util.Hashtable, java.util.Dictionary
    public synchronized Enumeration<Object> keys() {
        ArrayList arrayList;
        Set<Object> keySet = keySet();
        arrayList = new ArrayList(keySet.size());
        Iterator<Object> it2 = keySet.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().toString());
        }
        Collections.sort(arrayList);
        return new IteratorEnumeration(arrayList.iterator());
    }
}
