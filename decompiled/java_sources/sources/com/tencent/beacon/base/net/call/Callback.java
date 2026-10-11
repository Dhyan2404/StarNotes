package com.tencent.beacon.base.net.call;

import com.tencent.beacon.base.net.C14950d;
import com.tencent.beacon.base.net.NetException;

/* loaded from: classes10.dex */
public interface Callback<T> {
    void onFailure(C14950d c14950d);

    void onResponse(T t) throws NetException;
}
