package com.onyx.android.sdk.universal.editor.data;

import androidx.databinding.ObservableBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\u0012J\u0006\u0010\u0018\u001a\u00020\u0012J\u0006\u0010\u0019\u001a\u00020\u0012J\u0006\u0010\u001a\u001a\u00020\u0012J\u000e\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u0012J\u000e\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u0012J\u0016\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010J\b\u0010\u001f\u001a\u00020\u0016H\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;", "", "()V", "canRedo", "Landroidx/databinding/ObservableBoolean;", "getCanRedo", "()Landroidx/databinding/ObservableBoolean;", "setCanRedo", "(Landroidx/databinding/ObservableBoolean;)V", "canUndo", "getCanUndo", "setCanUndo", "enable", "getEnable", "setEnable", "redoCount", "", "redoing", "", "undoCount", "undoing", "destroy", "", "guardRedoing", "guardUndoing", "isRedoing", "isUndoing", "setRedoing", "value", "setUndoing", "updateCount", "updateStatus", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class CommandDataInfo {
    private int redoCount;
    private boolean redoing;
    private int undoCount;
    private boolean undoing;

    @NotNull
    private ObservableBoolean canUndo = new ObservableBoolean();

    @NotNull
    private ObservableBoolean canRedo = new ObservableBoolean();

    @NotNull
    private ObservableBoolean enable = new ObservableBoolean(true);

    private final void updateStatus() {
        this.canUndo.set(this.undoCount > 0 && !this.undoing);
        this.canRedo.set(this.redoCount > 0 && !this.redoing);
    }

    public final void destroy() {
        this.undoCount = 0;
        this.redoCount = 0;
        this.undoing = false;
        this.redoing = false;
    }

    @NotNull
    public final ObservableBoolean getCanRedo() {
        return this.canRedo;
    }

    @NotNull
    public final ObservableBoolean getCanUndo() {
        return this.canUndo;
    }

    @NotNull
    public final ObservableBoolean getEnable() {
        return this.enable;
    }

    public final boolean guardRedoing() {
        if (getRedoing()) {
            return true;
        }
        setRedoing(true);
        return false;
    }

    public final boolean guardUndoing() {
        if (getUndoing()) {
            return true;
        }
        setUndoing(true);
        return false;
    }

    /* renamed from: isRedoing, reason: from getter */
    public final boolean getRedoing() {
        return this.redoing;
    }

    /* renamed from: isUndoing, reason: from getter */
    public final boolean getUndoing() {
        return this.undoing;
    }

    public final void setCanRedo(@NotNull ObservableBoolean observableBoolean) {
        Intrinsics.checkNotNullParameter(observableBoolean, "<set-?>");
        this.canRedo = observableBoolean;
    }

    public final void setCanUndo(@NotNull ObservableBoolean observableBoolean) {
        Intrinsics.checkNotNullParameter(observableBoolean, "<set-?>");
        this.canUndo = observableBoolean;
    }

    public final void setEnable(@NotNull ObservableBoolean observableBoolean) {
        Intrinsics.checkNotNullParameter(observableBoolean, "<set-?>");
        this.enable = observableBoolean;
    }

    public final void setRedoing(boolean value) {
        this.redoing = value;
        updateStatus();
    }

    public final void setUndoing(boolean value) {
        this.undoing = value;
        updateStatus();
    }

    public final void updateCount(int undoCount, int redoCount) {
        this.undoCount = undoCount;
        this.redoCount = redoCount;
        updateStatus();
    }
}
