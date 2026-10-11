package com.evernote.thrift.protocol;

import com.evernote.thrift.transport.TTransport;
import java.io.Serializable;

/* loaded from: classes4.dex */
public interface TProtocolFactory extends Serializable {
    TProtocol getProtocol(TTransport tTransport);
}
