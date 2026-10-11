package com.evernote.thrift;

import com.evernote.thrift.TBase;
import com.evernote.thrift.protocol.TProtocol;
import java.io.Serializable;

/* loaded from: classes4.dex */
public interface TBase<T extends TBase> extends Comparable<T>, Serializable {
    void clear();

    TBase<T> deepCopy();

    void read(TProtocol tProtocol) throws TException;

    void write(TProtocol tProtocol) throws TException;
}
