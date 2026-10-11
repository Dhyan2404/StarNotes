package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.geometry.data.TouchData;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\r\u0010\u000eR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\f\u001a\u0004\u0018\u00010\u00018\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/StartErasingArgs;", "", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "a", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "getTouchData", "()Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "b", Constants.OBJECT_SIG, "getQuitEvent", "()Ljava/lang/Object;", "quitEvent", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/geometry/data/TouchData;Ljava/lang/Object;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StartErasingArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final TouchData touchData;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public final Object quitEvent;

    public StartErasingArgs(@NotNull TouchData touchData, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        this.touchData = touchData;
        this.quitEvent = obj;
    }

    @Nullable
    public final Object getQuitEvent() {
        return this.quitEvent;
    }

    @NotNull
    public final TouchData getTouchData() {
        return this.touchData;
    }
}
