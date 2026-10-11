package com.onyx.galaxy.note.editor.view.popup;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.couchbase.bean.StartReplicatorBean;
import com.onyx.android.sdk.hwr.C7404R;
import com.onyx.android.sdk.replicator.note.action.StartNoteDocSyncAction;
import com.onyx.android.sdk.replicator.note.bean.NoteCloudSyncCheckArgs;
import com.onyx.android.sdk.replicator.progress.bean.SyncDocProgress;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupSyncErrorBinding;
import com.onyx.galaxy.note.editor.data.SyncErrorInfo;
import com.onyx.galaxy.note.editor.view.popup.SyncErrorPopup;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u001a\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0007J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/SyncErrorPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "initContentView", "", "documentId", "Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;", "docProgress", "updateErrorMsg", "Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;", "syncErrorInfo", GoogleApiAvailabilityLight.f29016b, "m", "Lcom/onyx/galaxy/note/databinding/PopupSyncErrorBinding;", "q", "Lcom/onyx/galaxy/note/databinding/PopupSyncErrorBinding;", "binding", "Landroid/content/Context;", "activityContext", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SyncErrorPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    public PopupSyncErrorBinding binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SyncErrorPopup(@NotNull Context activityContext) {
        super(activityContext, null, 2, null);
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
    }

    /* renamed from: o */
    public static final void m49601o(SyncErrorPopup this$0, String documentId, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(documentId, "$documentId");
        this$0.m49603m(documentId);
    }

    /* renamed from: p */
    public static final void m49602p(SyncErrorPopup this$0, SyncErrorInfo syncErrorInfo, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(syncErrorInfo, "$syncErrorInfo");
        this$0.m49604n(syncErrorInfo);
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void initContentView() {
        setFocusable(true);
        setOutsideTouchable(true);
        PopupSyncErrorBinding inflate = PopupSyncErrorBinding.inflate(LayoutInflater.from(getContext()));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
    }

    /* renamed from: m */
    public final void m49603m(String documentId) {
        List<String> mutableListOf;
        NoteCloudSyncCheckArgs noteCloudSyncCheckArgs = new NoteCloudSyncCheckArgs();
        noteCloudSyncCheckArgs.setCheckPermission(false);
        noteCloudSyncCheckArgs.setCheckConfig(false);
        StartReplicatorBean startReplicatorBean = new StartReplicatorBean(0, false, false, false, null, null, false, 127, null);
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(documentId);
        startReplicatorBean.setSyncDocIdList(mutableListOf);
        OnyxErrorHandler.subscribeWithErrorHandler$default(OnyxErrorHandler.INSTANCE, new StartNoteDocSyncAction(startReplicatorBean, noteCloudSyncCheckArgs).build(), null, null, 3, null);
        dismiss();
    }

    /* renamed from: n */
    public final void m49604n(SyncErrorInfo syncErrorInfo) {
        String errorCodeMsg = SyncErrorInfo.INSTANCE.getErrorCodeMsg(syncErrorInfo);
        if (errorCodeMsg == null) {
            return;
        }
        ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) errorCodeMsg, false, 2, (Object) null);
    }

    @SuppressLint({"SetTextI18n"})
    public final void updateErrorMsg(@NotNull final String documentId, @Nullable SyncDocProgress docProgress) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        SyncErrorInfo.Companion companion = SyncErrorInfo.INSTANCE;
        final SyncErrorInfo createSyncErrorInfo = companion.createSyncErrorInfo(docProgress);
        int type = createSyncErrorInfo.getType();
        String string = type != 0 ? type != 1 ? type != 2 ? type != 3 ? type != 4 ? ResManager.INSTANCE.getString(C10651R.string.network_error_hint) : ResManager.INSTANCE.getString(C7404R.string.unknown_error) : ResManager.INSTANCE.getString(C10651R.string.sync_error_with_service_hint) : ResManager.INSTANCE.getString(C10651R.string.network_error_hint) : ResManager.INSTANCE.getString(C10651R.string.sync_error_with_retry_hint) : ResManager.INSTANCE.getString(C10651R.string.network_error_with_retry_hint);
        PopupSyncErrorBinding popupSyncErrorBinding = this.binding;
        PopupSyncErrorBinding popupSyncErrorBinding2 = null;
        if (popupSyncErrorBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupSyncErrorBinding = null;
        }
        ViewKt.setViewVisibleOrGone(popupSyncErrorBinding.tvRetry, companion.canRetry(createSyncErrorInfo.getType()));
        PopupSyncErrorBinding popupSyncErrorBinding3 = this.binding;
        if (popupSyncErrorBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupSyncErrorBinding3 = null;
        }
        ViewKt.setViewVisibleOrGone(popupSyncErrorBinding3.tvErrorCode, createSyncErrorInfo.getCode() != 0);
        PopupSyncErrorBinding popupSyncErrorBinding4 = this.binding;
        if (popupSyncErrorBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupSyncErrorBinding4 = null;
        }
        popupSyncErrorBinding4.tvErrorCode.setText(ResManager.INSTANCE.getString(C10651R.string.error_code) + ' ' + createSyncErrorInfo.getCode());
        PopupSyncErrorBinding popupSyncErrorBinding5 = this.binding;
        if (popupSyncErrorBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupSyncErrorBinding5 = null;
        }
        popupSyncErrorBinding5.content.setText(string);
        PopupSyncErrorBinding popupSyncErrorBinding6 = this.binding;
        if (popupSyncErrorBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupSyncErrorBinding6 = null;
        }
        popupSyncErrorBinding6.tvRetry.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.i6n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SyncErrorPopup.m49601o(SyncErrorPopup.this, documentId, view);
            }
        });
        PopupSyncErrorBinding popupSyncErrorBinding7 = this.binding;
        if (popupSyncErrorBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            popupSyncErrorBinding2 = popupSyncErrorBinding7;
        }
        popupSyncErrorBinding2.tvErrorCode.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.j6n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SyncErrorPopup.m49602p(SyncErrorPopup.this, createSyncErrorInfo, view);
            }
        });
        getContentView().measure(0, 0);
    }
}
