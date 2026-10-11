package com.sunia.commonv2.callback;

import android.graphics.RectF;
import com.sunia.HTREnginev2.sdk.RecognizePath;
import com.sunia.commonv2.bean.PathAction;
import java.util.List;

/* loaded from: classes10.dex */
public interface InputViewListenerV2 {
    void afterPointChanged(RecognizePath recognizePath);

    void onLongClick(float f, float f2);

    void onPointSelectorChanged(boolean z);

    void redo(PathAction pathAction);

    void resetRecognize(List<RecognizePath> list, PathAction pathAction, RecognizePath recognizePath);

    void selectorChange(List<RecognizePath> list, List<RecognizePath> list2);

    void showMenu(int i, int i2, RectF rectF);

    void undo(PathAction pathAction);
}
