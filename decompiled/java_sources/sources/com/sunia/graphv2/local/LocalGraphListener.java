package com.sunia.graphv2.local;

import com.sunia.commonv2.callback.INoProguard;

/* loaded from: classes10.dex */
public interface LocalGraphListener extends INoProguard {
    int onGraphRenderCallback(long j, int i, String str, float[] fArr, int i2, int i3, float[] fArr2, int i4, float[] fArr3);

    void onGraphResultCallback(long j, int i, String str);
}
