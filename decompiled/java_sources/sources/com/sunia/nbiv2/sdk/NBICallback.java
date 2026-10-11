package com.sunia.nbiv2.sdk;

import com.sunia.HTREnginev2.sdk.RecognizePath;
import com.sunia.commonv2.callback.INoProguard;
import java.util.List;

/* loaded from: classes10.dex */
public interface NBICallback extends INoProguard {
    void onCancel();

    void onDrawNBIPath(long j, List<NBIAxisPath> list, List<RecognizePath> list2, List<NBIAxisPath> list3);

    void onError(Exception exc);

    void onLoad();

    default void onProgress(int i, int i2) {
    }
}
