package com.google.protobuf;

import com.google.protobuf.Descriptors;

/* loaded from: classes6.dex */
public interface Service {
    void callMethod(Descriptors.MethodDescriptor method, RpcController controller, Message request, RpcCallback<Message> done);

    Descriptors.ServiceDescriptor getDescriptorForType();

    Message getRequestPrototype(Descriptors.MethodDescriptor method);

    Message getResponsePrototype(Descriptors.MethodDescriptor method);
}
