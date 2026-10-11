package org.apache.xerces.p118xs.datatypes;

import java.util.List;

/* loaded from: classes13.dex */
public interface ObjectList extends List {
    @Override // java.util.Collection, java.util.List, org.apache.xerces.p118xs.datatypes.ObjectList
    boolean contains(Object obj);

    int getLength();

    Object item(int i);
}
