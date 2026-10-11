package com.sun.org.apache.xerces.internal.p056xs.datatypes;

import com.sun.org.apache.xerces.internal.p056xs.XSException;

/* loaded from: classes10.dex */
public interface ByteList {
    boolean contains(byte b);

    int getLength();

    byte item(int i) throws XSException;
}
