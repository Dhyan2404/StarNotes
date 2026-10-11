package com.onyx.galaxy.note.editor.view.adapter;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.reader.data.LoadReaderPageThumbnailArgs;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.data.ReaderPageDataModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\b\u0016\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016R\"\u0010\u000f\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;", "Lcom/onyx/galaxy/note/editor/view/adapter/BasePageThumbnailListAdapter;", "Lcom/onyx/android/sdk/universal/editor/data/ReaderPageDataModel;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", FirebaseAnalytics.Param.INDEX, "createItemModel", "", "B", Constants.STRING_SIG, "getPath", "()Ljava/lang/String;", "setPath", "(Ljava/lang/String;)V", "path", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public class ReaderPageThumbnailListAdapter extends BasePageThumbnailListAdapter<ReaderPageDataModel> {

    /* renamed from: B, reason: from kotlin metadata */
    @NotNull
    public String path = "";

    @NotNull
    public final String getPath() {
        return this.path;
    }

    public final void setPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.path = str;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.galaxy.note.editor.view.adapter.BasePageThumbnailListAdapter
    @NotNull
    public ReaderPageDataModel createItemModel(@NotNull EditorBundle editorBundle, int index) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        return new ReaderPageDataModel(editorBundle, new LoadReaderPageThumbnailArgs(this.path, index, AppConfig.INSTANCE.getDEFAULT_PAGE_THUMBNAIL_SIZE(), null, false, 24, null));
    }
}
