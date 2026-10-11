package com.onyx.android.sdk.universal.editor.events.note;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0001¢\u0006\u0004\b\u0007\u0010\bR\u0017\u0010\u0006\u001a\u00020\u00018\u0006¢\u0006\f\n\u0004\b\u0002\u0010\u0003\u001a\u0004\b\u0004\u0010\u0005¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/PageThumbnailSizeChangedEvent;", "", "a", Constants.OBJECT_SIG, "getThumbnailSizeType", "()Ljava/lang/Object;", "thumbnailSizeType", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/Object;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PageThumbnailSizeChangedEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Object thumbnailSizeType;

    public PageThumbnailSizeChangedEvent(@NotNull Object thumbnailSizeType) {
        Intrinsics.checkNotNullParameter(thumbnailSizeType, "thumbnailSizeType");
        this.thumbnailSizeType = thumbnailSizeType;
    }

    @NotNull
    public final Object getThumbnailSizeType() {
        return this.thumbnailSizeType;
    }
}
