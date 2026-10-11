package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.sunia.HTREnginev2.pnf;
import com.sunia.HTREnginev2.uvk;

@GwtCompatible
@pnf
/* loaded from: classes6.dex */
public interface FutureCallback<V> {
    void onFailure(Throwable th);

    void onSuccess(@uvk V v);
}
