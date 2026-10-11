package com.onyx.galaxy.note.common.view;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.universal.editor.events.app.UserNoteListImportedEvent;
import com.onyx.android.sdk.universal.editor.events.app.UserNoteListImportingEvent;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0014J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\fH\u0007J\b\u0010\r\u001a\u00020\u0006H\u0016¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/view/LoginLoadingDialog;", "Lcom/onyx/galaxy/note/common/view/LoadingDialog;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "dismiss", "", "initView", "onUserNoteListImportedEvent", NotificationCompat.CATEGORY_EVENT, "Lcom/onyx/android/sdk/universal/editor/events/app/UserNoteListImportedEvent;", "onUserNoteListImportingEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/UserNoteListImportingEvent;", "show", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class LoginLoadingDialog extends LoadingDialog {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoginLoadingDialog(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        DocCollectionBundle.INSTANCE.ensureUnRegister(this);
    }

    @Override // com.onyx.galaxy.note.common.view.LoadingDialog
    public void initView() {
        super.initView();
        getBinding().f56420tv.setText(C10651R.string.logging);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUserNoteListImportedEvent(@NotNull UserNoteListImportedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        String string = getContext().getString(C10651R.string.migrate_note_data_done);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        updateTitle(string);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUserNoteListImportingEvent(@NotNull UserNoteListImportingEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        String string = StringKt.isEmpty(event.getNoteName()) ? getContext().getString(C10651R.string.start_migrate_note_data) : getContext().getString(C10651R.string.migrating_note_data, event.getNoteName());
        Intrinsics.checkNotNull(string);
        updateTitle(string);
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        DocCollectionBundle.INSTANCE.ensureRegister(this);
    }
}
