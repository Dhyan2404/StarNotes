package com.google.protobuf;

import com.google.protobuf.Descriptors;

/* loaded from: classes6.dex */
public interface BlockingService {
    Message callBlockingMethod(Descriptors.MethodDescriptor method, RpcController controller, Message request) throws ServiceException;

    Descriptors.ServiceDescriptor getDescriptorForType();

    Message getRequestPrototype(Descriptors.MethodDescriptor method);

    Message getResponsePrototype(Descriptors.MethodDescriptor method);
}
