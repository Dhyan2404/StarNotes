package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B-\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u0016\u001a\u00020\b¢\u0006\u0004\b\u0017\u0010\u0018R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0016\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0014\u0010\n\u001a\u0004\b\u0015\u0010\f¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/StartTextInputHandlerEvent;", "", "", "a", Constants.STRING_SIG, "getInputText", "()Ljava/lang/String;", "inputText", "", "b", Constants.HASIDCALL_INDEX_SIG, "getUserProvider", Constants.BOOLEAN_VALUE_SIG, "userProvider", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "c", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getInsertPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "insertPoint", "d", "getEditForAll", "editForAll", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;ZLcom/onyx/android/sdk/base/data/TouchPoint;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StartTextInputHandlerEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String inputText;

    /* renamed from: b, reason: from kotlin metadata */
    public final boolean userProvider;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public final TouchPoint insertPoint;

    /* renamed from: d, reason: from kotlin metadata */
    public final boolean editForAll;

    public StartTextInputHandlerEvent(@NotNull String inputText, boolean z, @Nullable TouchPoint touchPoint, boolean z2) {
        Intrinsics.checkNotNullParameter(inputText, "inputText");
        this.inputText = inputText;
        this.userProvider = z;
        this.insertPoint = touchPoint;
        this.editForAll = z2;
    }

    public final boolean getEditForAll() {
        return this.editForAll;
    }

    @NotNull
    public final String getInputText() {
        return this.inputText;
    }

    @Nullable
    public final TouchPoint getInsertPoint() {
        return this.insertPoint;
    }

    public final boolean getUserProvider() {
        return this.userProvider;
    }

    public /* synthetic */ StartTextInputHandlerEvent(String str, boolean z, TouchPoint touchPoint, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, z, (i & 4) != 0 ? null : touchPoint, z2);
    }
}
