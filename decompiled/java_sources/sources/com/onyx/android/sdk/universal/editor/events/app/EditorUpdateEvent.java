package com.onyx.android.sdk.universal.editor.events.app;

import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/EditorUpdateEvent;", "", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "a", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getOldBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "oldBundle", "b", "getNewBundle", "newBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class EditorUpdateEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle oldBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle newBundle;

    public EditorUpdateEvent(@NotNull EditorBundle oldBundle, @NotNull EditorBundle newBundle) {
        Intrinsics.checkNotNullParameter(oldBundle, "oldBundle");
        Intrinsics.checkNotNullParameter(newBundle, "newBundle");
        this.oldBundle = oldBundle;
        this.newBundle = newBundle;
    }

    @NotNull
    public final EditorBundle getNewBundle() {
        return this.newBundle;
    }

    @NotNull
    public final EditorBundle getOldBundle() {
        return this.oldBundle;
    }
}
