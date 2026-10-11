package com.evernote.thrift;

import com.evernote.thrift.protocol.TProtocol;

/* loaded from: classes4.dex */
public interface TServiceClient {
    TProtocol getInputProtocol();

    TProtocol getOutputProtocol();
}
