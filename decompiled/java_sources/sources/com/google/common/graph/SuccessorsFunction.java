package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.errorprone.annotations.DoNotMock;
import com.sunia.HTREnginev2.vnf;

@DoNotMock("Implement with a lambda, or use GraphBuilder to build a Graph with the desired edges")
@Beta
@vnf
/* loaded from: classes6.dex */
public interface SuccessorsFunction<N> {
    Iterable<? extends N> successors(N n);
}
