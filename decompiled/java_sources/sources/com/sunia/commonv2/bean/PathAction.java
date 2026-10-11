package com.sunia.commonv2.bean;

import com.sunia.HTREnginev2.sdk.RecognizePath;
import com.sunia.commonv2.enum2.PathActionType;
import java.util.List;

/* loaded from: classes10.dex */
public abstract class PathAction<T> {
    public T action;
    public PathActionType actionType;
    protected boolean invert;

    public PathAction(PathActionType pathActionType, T t) {
        this.actionType = pathActionType;
        this.action = t;
    }

    public abstract void redo(List<RecognizePath> list);

    public abstract void undo(List<RecognizePath> list);
}
