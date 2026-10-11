package com.onyx.galaxy.note.settings.viewmodel;

import android.annotation.SuppressLint;
import androidx.lifecycle.MutableLiveData;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.data.common.data.CloudStorageStatusBean;
import com.onyx.android.sdk.data.common.sync.MMKVBackup;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.settings.action.GetCloudStorageStatusAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0007R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\r\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\nR%\u0010\u0012\u001a\u0010\u0012\f\u0012\n \u000f*\u0004\u0018\u00010\u00020\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R%\u0010\u0015\u001a\u0010\u0012\f\u0012\n \u000f*\u0004\u0018\u00010\u00020\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0011\u001a\u0004\b\u0015\u0010\u0013R\u001f\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u000e8\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0011\u001a\u0004\b\u0018\u0010\u0013¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "", "enable", "", "configureWifiOnly", "configureAutoSync", "getCloudStorageStatus", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "i", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "autoSyncOp", "j", "wifiOnlyOp", "Landroidx/lifecycle/MutableLiveData;", "kotlin.jvm.PlatformType", C4921e.f26537n, "Landroidx/lifecycle/MutableLiveData;", "isAutoSync", "()Landroidx/lifecycle/MutableLiveData;", "l", "isWifiOnly", "Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;", "m", "getCloudStorageStatusBean", "cloudStorageStatusBean", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SettingsCloudSyncViewModel extends BaseViewModel {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final BooleanOption autoSyncOp;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final BooleanOption wifiOnlyOp;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Boolean> isAutoSync;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Boolean> isWifiOnly;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<CloudStorageStatusBean> cloudStorageStatusBean;

    /* renamed from: com.onyx.galaxy.note.settings.viewmodel.SettingsCloudSyncViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C12766a<T> implements Consumer {
        public C12766a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CloudStorageStatusBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SettingsCloudSyncViewModel.this.getCloudStorageStatusBean().setValue(it2);
        }
    }

    public SettingsCloudSyncViewModel() {
        MMKVBackup mMKVBackup = MMKVBackup.INSTANCE;
        BooleanOption cloudAutoSyncOption = mMKVBackup.getCloudAutoSyncOption();
        this.autoSyncOp = cloudAutoSyncOption;
        BooleanOption cloudSyncWifiOnlyOption = mMKVBackup.getCloudSyncWifiOnlyOption();
        this.wifiOnlyOp = cloudSyncWifiOnlyOption;
        this.isAutoSync = new MutableLiveData<>(Boolean.valueOf(cloudAutoSyncOption.get()));
        this.isWifiOnly = new MutableLiveData<>(Boolean.valueOf(cloudSyncWifiOnlyOption.get()));
        this.cloudStorageStatusBean = new MutableLiveData<>(null);
    }

    public final void configureAutoSync(boolean enable) {
        this.autoSyncOp.put(enable);
        this.isAutoSync.setValue(Boolean.valueOf(enable));
    }

    public final void configureWifiOnly(boolean enable) {
        this.wifiOnlyOp.put(enable);
        this.isWifiOnly.setValue(Boolean.valueOf(enable));
    }

    @SuppressLint({"CheckResult"})
    public final void getCloudStorageStatus() {
        new GetCloudStorageStatusAction().build().subscribe(new C12766a());
    }

    @NotNull
    public final MutableLiveData<CloudStorageStatusBean> getCloudStorageStatusBean() {
        return this.cloudStorageStatusBean;
    }

    @NotNull
    public final MutableLiveData<Boolean> isAutoSync() {
        return this.isAutoSync;
    }

    @NotNull
    public final MutableLiveData<Boolean> isWifiOnly() {
        return this.isWifiOnly;
    }
}
