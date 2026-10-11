package com.onyx.android.sdk.universal.editor.events.app;

import com.onyx.android.sdk.universal.editor.bean.CopyState;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0007¢\u0006\u0004\b\r\u0010\u000eR\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/ToggleNotePageLoadingEvent;", "", "", "a", Constants.HASIDCALL_INDEX_SIG, "isShow", Constants.BOOLEAN_VALUE_SIG, "Lcom/onyx/android/sdk/universal/editor/bean/CopyState;", "b", "Lcom/onyx/android/sdk/universal/editor/bean/CopyState;", "getState", "()Lcom/onyx/android/sdk/universal/editor/bean/CopyState;", "state", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ZLcom/onyx/android/sdk/universal/editor/bean/CopyState;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ToggleNotePageLoadingEvent {

    /* renamed from: a, reason: from kotlin metadata */
    public final boolean isShow;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CopyState state;

    public ToggleNotePageLoadingEvent(boolean z, @NotNull CopyState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        this.isShow = z;
        this.state = state;
    }

    @NotNull
    public final CopyState getState() {
        return this.state;
    }

    /* renamed from: isShow, reason: from getter */
    public final boolean getIsShow() {
        return this.isShow;
    }
}
