package com.google.common.hash;

import com.google.common.annotations.Beta;
import com.google.errorprone.annotations.DoNotMock;
import com.sunia.HTREnginev2.bwk;
import com.sunia.HTREnginev2.wnf;
import java.io.Serializable;

@DoNotMock("Implement with a lambda")
@Beta
@wnf
/* loaded from: classes6.dex */
public interface Funnel<T> extends Serializable {
    void funnel(@bwk T t, PrimitiveSink primitiveSink);
}
