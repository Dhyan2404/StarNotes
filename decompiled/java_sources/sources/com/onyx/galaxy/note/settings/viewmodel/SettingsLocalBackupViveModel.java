package com.onyx.galaxy.note.settings.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.onyx.android.sdk.data.common.sync.MMKVBackup;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0002R%\u0010\u000b\u001a\u0010\u0012\f\u0012\n \b*\u0004\u0018\u00010\u00020\u00020\u00078\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/viewmodel/SettingsLocalBackupViveModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "", "enable", "", "configureAutoBackup", "isEnableAutoBackup", "Landroidx/lifecycle/MutableLiveData;", "kotlin.jvm.PlatformType", "i", "Landroidx/lifecycle/MutableLiveData;", "isAutoBackup", "()Landroidx/lifecycle/MutableLiveData;", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "j", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "autoBackupOp", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SettingsLocalBackupViveModel extends BaseViewModel {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Boolean> isAutoBackup = new MutableLiveData<>(Boolean.FALSE);

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final BooleanOption autoBackupOp = MMKVBackup.INSTANCE.getLocalBackupAutoOption();

    public final void configureAutoBackup(boolean enable) {
        this.isAutoBackup.setValue(Boolean.valueOf(enable));
        this.autoBackupOp.put(enable);
    }

    @NotNull
    public final MutableLiveData<Boolean> isAutoBackup() {
        return this.isAutoBackup;
    }

    public final boolean isEnableAutoBackup() {
        return this.autoBackupOp.get();
    }
}
