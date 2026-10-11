package org.apache.xerces.p118xs;

import java.util.List;

/* loaded from: classes13.dex */
public interface ShortList extends List {
    boolean contains(short s);

    int getLength();

    short item(int i) throws XSException;
}
