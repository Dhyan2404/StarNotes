package com.onyx.galaxy.note.settings.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.replicator.note.action.CheckNoteSyncConditionAction;
import com.onyx.android.sdk.replicator.note.bean.NoteCloudSyncCheckArgs;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.settings.data.SettingsMenuType;
import com.onyx.galaxy.note.settings.viewmodel.SettingsViewModel;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Action;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u0006\u0010\u0003\u001a\u00020\u0002R(\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR%\u0010\u0011\u001a\u0010\u0012\f\u0012\n \u000e*\u0004\u0018\u00010\r0\r0\u00048\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0007\u001a\u0004\b\u0010\u0010\t¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "", "checkCloudSyncCondition", "Landroidx/lifecycle/MutableLiveData;", "Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;", "i", "Landroidx/lifecycle/MutableLiveData;", "getSelectMenuType", "()Landroidx/lifecycle/MutableLiveData;", "setSelectMenuType", "(Landroidx/lifecycle/MutableLiveData;)V", "selectMenuType", "", "kotlin.jvm.PlatformType", "j", "getAllowCloudSync", "allowCloudSync", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SettingsViewModel extends BaseViewModel {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<SettingsMenuType> selectMenuType = new MutableLiveData<>(null);

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Boolean> allowCloudSync = new MutableLiveData<>(Boolean.FALSE);

    /* renamed from: e */
    public static final void m51233e(SettingsViewModel this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.allowCloudSync.postValue(Boolean.valueOf(AccountDataBundle.INSTANCE.canSync()));
    }

    public final void checkCloudSyncCondition() {
        NoteCloudSyncCheckArgs noteCloudSyncCheckArgs = new NoteCloudSyncCheckArgs();
        noteCloudSyncCheckArgs.setCheckConfig(false);
        noteCloudSyncCheckArgs.setCheckSpace(false);
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<Unit> doFinally = new CheckNoteSyncConditionAction(noteCloudSyncCheckArgs).build().doFinally(new Action() { // from class: com.sunia.HTREnginev2.jlm
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                SettingsViewModel.m51233e(SettingsViewModel.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doFinally, null, null, 3, null);
    }

    @NotNull
    public final MutableLiveData<Boolean> getAllowCloudSync() {
        return this.allowCloudSync;
    }

    @NotNull
    public final MutableLiveData<SettingsMenuType> getSelectMenuType() {
        return this.selectMenuType;
    }

    public final void setSelectMenuType(@NotNull MutableLiveData<SettingsMenuType> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.selectMenuType = mutableLiveData;
    }
}
