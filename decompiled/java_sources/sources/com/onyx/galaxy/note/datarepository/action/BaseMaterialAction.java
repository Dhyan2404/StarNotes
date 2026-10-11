package com.onyx.galaxy.note.datarepository.action;

import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.p042ui.data.Templates;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/action/BaseMaterialAction;", "T", "", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "loadResourceColor", "", "thumbnailRelativePath", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public abstract class BaseMaterialAction<T> extends RxBaseAppAction<T> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseMaterialAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    public final int loadResourceColor(@Nullable String thumbnailRelativePath) {
        return Templates.INSTANCE.loadResourceColor(thumbnailRelativePath);
    }
}
