package com.google.protobuf;

import com.google.protobuf.Descriptors;

/* loaded from: classes6.dex */
public interface RpcChannel {
    void callMethod(Descriptors.MethodDescriptor method, RpcController controller, Message request, Message responsePrototype, RpcCallback<Message> done);
}
