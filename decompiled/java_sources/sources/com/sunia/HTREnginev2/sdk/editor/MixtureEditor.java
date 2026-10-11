package com.sunia.HTREnginev2.sdk.editor;

import com.sunia.HTREnginev2.sdk.RecognizePoint;
import java.util.List;

/* loaded from: classes10.dex */
public interface MixtureEditor {
    int[] addPointsAndIDsForMixture(long j, long j2, long j3, long j4, long j5, long j6, long j7);

    long addStrokePointsForMixture(List<RecognizePoint> list, long j);

    long addStrokePointsPointerForMixture(long j, long j2, long j3, long j4, long j5);

    int deleteStrokesForMixture(long j, long j2);

    String doInteractForMixture(long j);

    String doRecognizeForMixture(String str);

    String getPartContentForMixture(String str);

    String getTotalContentForMixture();

    boolean inDoSaveForMixture(String str);

    String incLoadByPathForMixture(String str);

    boolean isChemValidForMixture(String str);

    void setWritingForMixture(boolean z);
}
