package com.sunia.HTREnginev2.sdk.editor;

import com.sunia.HTREnginev2.sdk.Params;
import com.sunia.HTREnginev2.sdk.RecognizePath;
import com.sunia.HTREnginev2.sdk.RecognizePoint;
import com.sunia.commonv2.bean.PointsToBitmapResult;
import java.util.List;

/* loaded from: classes10.dex */
public interface BaseEditor {
    int[] addPoints(List<RecognizePoint> list);

    int addStrokePoints(List<RecognizePoint> list);

    void clearContent();

    void close();

    String commonInterface(String str);

    String commonInterface(String str, String str2);

    boolean deleteStrokePoints(int i);

    void doPageRecognize();

    void doPageRecognize(boolean z);

    PointsToBitmapResult doPointsToBitmap(List<RecognizePath> list);

    void editorPause();

    String getContent();

    MixtureEditorV2 getMixtureEditorV2();

    boolean incRecDoSave(String str);

    String incRecLoadByPath(String str);

    boolean isClosed();

    boolean isEmpty();

    boolean isIdle();

    Params obtainParams();

    RecognizePoint obtainPoint(float f, float f2, long j, int i);

    boolean open();

    boolean open(Params params);

    String pictureProcess(String str);

    void setCharacterSet(String[] strArr);

    void setReferWords(String str, int i);

    void setSyntheseWords(String str, int i);

    String shapeEdite(String str);

    String syncRecognize(List<RecognizePoint> list);

    boolean updateParams(Params params);

    void waitForIdle();
}
