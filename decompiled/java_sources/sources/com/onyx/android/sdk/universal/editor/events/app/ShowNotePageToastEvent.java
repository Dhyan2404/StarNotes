package com.onyx.android.sdk.universal.editor.events.app;

import com.onyx.android.sdk.universal.editor.bean.CopyState;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/ShowNotePageToastEvent;", "", "Lcom/onyx/android/sdk/universal/editor/bean/CopyState;", "a", "Lcom/onyx/android/sdk/universal/editor/bean/CopyState;", "getState", "()Lcom/onyx/android/sdk/universal/editor/bean/CopyState;", "state", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/bean/CopyState;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ShowNotePageToastEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final CopyState state;

    public ShowNotePageToastEvent(@NotNull CopyState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        this.state = state;
    }

    @NotNull
    public final CopyState getState() {
        return this.state;
    }
}
