package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.note.common.data.excerpt.SaveExcerptCollectionArgs;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/SaveExcerptCollectionEvent;", "", "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;", "a", "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;", "getArgs", "()Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;", "setArgs", "(Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;)V", "args", Constants.CONSTRUCTOR_NAME, "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SaveExcerptCollectionEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public SaveExcerptCollectionArgs args;

    public SaveExcerptCollectionEvent(@NotNull SaveExcerptCollectionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
    }

    @NotNull
    public final SaveExcerptCollectionArgs getArgs() {
        return this.args;
    }

    public final void setArgs(@NotNull SaveExcerptCollectionArgs saveExcerptCollectionArgs) {
        Intrinsics.checkNotNullParameter(saveExcerptCollectionArgs, "<set-?>");
        this.args = saveExcerptCollectionArgs;
    }
}
