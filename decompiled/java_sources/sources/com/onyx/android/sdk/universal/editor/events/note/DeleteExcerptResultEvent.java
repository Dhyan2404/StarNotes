package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.note.common.data.excerpt.DeleteExcerptResult;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/DeleteExcerptResultEvent;", "", "Lcom/onyx/android/sdk/note/common/data/excerpt/DeleteExcerptResult;", "a", "Lcom/onyx/android/sdk/note/common/data/excerpt/DeleteExcerptResult;", "getResult", "()Lcom/onyx/android/sdk/note/common/data/excerpt/DeleteExcerptResult;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/common/data/excerpt/DeleteExcerptResult;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DeleteExcerptResultEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final DeleteExcerptResult result;

    public DeleteExcerptResultEvent(@NotNull DeleteExcerptResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        this.result = result;
    }

    @NotNull
    public final DeleteExcerptResult getResult() {
        return this.result;
    }
}
