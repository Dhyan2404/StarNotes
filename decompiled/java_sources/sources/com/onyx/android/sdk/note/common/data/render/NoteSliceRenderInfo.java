package com.onyx.android.sdk.note.common.data.render;

import com.onyx.android.sdk.geometry.data.SliceInfo;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;", "", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "a", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "getNoteRenderSlice", "()Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "noteRenderSlice", "b", "getContentCacheSlice", "contentCacheSlice", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NoteSliceRenderInfo {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final SliceInfo noteRenderSlice;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public final SliceInfo contentCacheSlice;

    public NoteSliceRenderInfo(@NotNull SliceInfo noteRenderSlice, @Nullable SliceInfo sliceInfo) {
        Intrinsics.checkNotNullParameter(noteRenderSlice, "noteRenderSlice");
        this.noteRenderSlice = noteRenderSlice;
        this.contentCacheSlice = sliceInfo;
    }

    @Nullable
    public final SliceInfo getContentCacheSlice() {
        return this.contentCacheSlice;
    }

    @NotNull
    public final SliceInfo getNoteRenderSlice() {
        return this.noteRenderSlice;
    }
}
