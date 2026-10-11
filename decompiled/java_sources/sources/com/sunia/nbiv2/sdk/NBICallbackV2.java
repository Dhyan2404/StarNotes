package com.sunia.nbiv2.sdk;

import com.sunia.commonv2.callback.INoProguard;
import java.util.List;

/* loaded from: classes10.dex */
public interface NBICallbackV2 extends INoProguard {
    void onCancel();

    void onDrawNBIPath(long j, List<NBIAxisPath> list, List<NBIAxisPath> list2);

    void onError(Exception exc);

    void onLoad();

    default void onProgress(int i, int i2) {
    }
}
