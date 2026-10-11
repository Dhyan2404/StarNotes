package com.onyx.galaxy.note.settings.p047ui.adapter;

import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.galaxy.note.C10651R;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/adapter/BackupErrorAdapter;", "Lcom/onyx/galaxy/note/settings/ui/adapter/ExportErrorAdapter;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class BackupErrorAdapter extends ExportErrorAdapter {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BackupErrorAdapter(@NotNull EditorBundle editorBundle) {
        super(editorBundle, C10651R.string.backup_error_title);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }
}
