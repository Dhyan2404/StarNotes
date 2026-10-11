package org.apache.xerces.p118xs.datatypes;

import java.util.List;
import org.apache.xerces.p118xs.XSException;

/* loaded from: classes13.dex */
public interface ByteList extends List {
    boolean contains(byte b);

    int getLength();

    byte item(int i) throws XSException;

    byte[] toByteArray();
}
