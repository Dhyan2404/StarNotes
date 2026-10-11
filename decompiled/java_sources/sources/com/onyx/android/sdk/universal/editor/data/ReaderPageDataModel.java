package com.onyx.android.sdk.universal.editor.data;

import com.onyx.android.sdk.reader.data.LoadReaderPageThumbnailArgs;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/ReaderPageDataModel;", "", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "args", "Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;)V", "getArgs", "()Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ReaderPageDataModel {

    @NotNull
    private final LoadReaderPageThumbnailArgs args;

    @NotNull
    private final EditorBundle editorBundle;

    public ReaderPageDataModel(@NotNull EditorBundle editorBundle, @NotNull LoadReaderPageThumbnailArgs args) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.editorBundle = editorBundle;
        this.args = args;
    }

    @NotNull
    public final LoadReaderPageThumbnailArgs getArgs() {
        return this.args;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }
}
