package com.google.protobuf;

import com.google.protobuf.Descriptors;

/* loaded from: classes6.dex */
public interface BlockingRpcChannel {
    Message callBlockingMethod(Descriptors.MethodDescriptor method, RpcController controller, Message request, Message responsePrototype) throws ServiceException;
}
