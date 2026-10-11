package com.onyx.galaxy.note.settings.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.android.sdk.data.utils.IntOption;
import com.onyx.android.sdk.data.utils.StringOption;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.category.action.UpdateAllLockedNotePasswordAction;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.utils.AutoReLockNoteManager;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b*\u0010+J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\u0004J\u0006\u0010\u000b\u001a\u00020\u0004J\u0006\u0010\f\u001a\u00020\u0004R\u001b\u0010\u0012\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001b\u0010\u0017\u001a\u00020\u00138BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0015\u0010\u0016R\u001b\u0010\u001c\u001a\u00020\u00188BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u000f\u001a\u0004\b\u001a\u0010\u001bR%\u0010#\u001a\u0010\u0012\f\u0012\n \u001e*\u0004\u0018\u00010\u00020\u00020\u001d8\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R%\u0010&\u001a\u0010\u0012\f\u0012\n \u001e*\u0004\u0018\u00010\u00020\u00020\u001d8\u0006¢\u0006\f\n\u0004\b$\u0010 \u001a\u0004\b%\u0010\"R%\u0010)\u001a\u0010\u0012\f\u0012\n \u001e*\u0004\u0018\u00010\u00070\u00070\u001d8\u0006¢\u0006\f\n\u0004\b'\u0010 \u001a\u0004\b(\u0010\"¨\u0006,"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "", "enable", "", "configureNoteFingerLock", "configureNoteEncryption", "", "interval", "configureNoteEncryptionInterval", "deleteNotePassword", "clearNoteLock", "onChangeNotePassword", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "i", "Lkotlin/Lazy;", "d", "()Lcom/onyx/android/sdk/data/utils/BooleanOption;", "noteFingerLockPasswordOption", "Lcom/onyx/android/sdk/data/utils/IntOption;", "j", "e", "()Lcom/onyx/android/sdk/data/utils/IntOption;", "noteIdleAutoLockIntervalOption", "Lcom/onyx/android/sdk/data/utils/StringOption;", C4921e.f26537n, C6997f.f39671c, "()Lcom/onyx/android/sdk/data/utils/StringOption;", "noteLockPasswordOption", "Landroidx/lifecycle/MutableLiveData;", "kotlin.jvm.PlatformType", "l", "Landroidx/lifecycle/MutableLiveData;", "getEnableNoteEncryption", "()Landroidx/lifecycle/MutableLiveData;", "enableNoteEncryption", "m", "getEnableNoteFingerLock", "enableNoteFingerLock", GoogleApiAvailabilityLight.f29016b, "getNoteIdleAutoLockInterval", "noteIdleAutoLockInterval", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SettingsPrivacyViewModel extends BaseViewModel {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Lazy noteFingerLockPasswordOption;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Lazy noteIdleAutoLockIntervalOption;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Lazy noteLockPasswordOption;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Boolean> enableNoteEncryption;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Boolean> enableNoteFingerLock;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Integer> noteIdleAutoLockInterval;

    public SettingsPrivacyViewModel() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        boolean z;
        boolean isBlank;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<BooleanOption>() { // from class: com.onyx.galaxy.note.settings.viewmodel.SettingsPrivacyViewModel$noteFingerLockPasswordOption$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final BooleanOption invoke() {
                return MMKVNote.INSTANCE.getNoteFingerLockPasswordOption();
            }
        });
        this.noteFingerLockPasswordOption = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<IntOption>() { // from class: com.onyx.galaxy.note.settings.viewmodel.SettingsPrivacyViewModel$noteIdleAutoLockIntervalOption$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final IntOption invoke() {
                return MMKVNote.INSTANCE.getNoteIdleAutoLockIntervalOption();
            }
        });
        this.noteIdleAutoLockIntervalOption = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<StringOption>() { // from class: com.onyx.galaxy.note.settings.viewmodel.SettingsPrivacyViewModel$noteLockPasswordOption$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final StringOption invoke() {
                return MMKVNote.INSTANCE.getNoteLockPasswordOption();
            }
        });
        this.noteLockPasswordOption = lazy3;
        String str = m51226f().get();
        if (str != null) {
            isBlank = StringsKt__StringsJVMKt.isBlank(str);
            z = !isBlank;
        } else {
            z = false;
        }
        this.enableNoteEncryption = new MutableLiveData<>(Boolean.valueOf(z));
        this.enableNoteFingerLock = new MutableLiveData<>(Boolean.valueOf(m51224d().get()));
        this.noteIdleAutoLockInterval = new MutableLiveData<>(Integer.valueOf(m51225e().get()));
    }

    public final void clearNoteLock() {
        RxBaseAction.execute$default(new UpdateAllLockedNotePasswordAction(null), null, null, null, 7, null);
    }

    public final void configureNoteEncryption(boolean enable) {
        this.enableNoteEncryption.setValue(Boolean.valueOf(enable));
        if (enable) {
            this.enableNoteFingerLock.setValue(Boolean.valueOf(m51224d().get()));
            return;
        }
        configureNoteEncryptionInterval(10);
        configureNoteFingerLock(false);
        deleteNotePassword();
        clearNoteLock();
    }

    public final void configureNoteEncryptionInterval(int interval) {
        m51225e().put(interval);
        this.noteIdleAutoLockInterval.setValue(Integer.valueOf(interval));
        AutoReLockNoteManager.INSTANCE.updateReLockTaskTime();
    }

    public final void configureNoteFingerLock(boolean enable) {
        m51224d().put(enable);
        this.enableNoteFingerLock.setValue(Boolean.valueOf(enable));
    }

    /* renamed from: d */
    public final BooleanOption m51224d() {
        return (BooleanOption) this.noteFingerLockPasswordOption.getValue();
    }

    public final void deleteNotePassword() {
        m51226f().put("");
    }

    /* renamed from: e */
    public final IntOption m51225e() {
        return (IntOption) this.noteIdleAutoLockIntervalOption.getValue();
    }

    /* renamed from: f */
    public final StringOption m51226f() {
        return (StringOption) this.noteLockPasswordOption.getValue();
    }

    @NotNull
    public final MutableLiveData<Boolean> getEnableNoteEncryption() {
        return this.enableNoteEncryption;
    }

    @NotNull
    public final MutableLiveData<Boolean> getEnableNoteFingerLock() {
        return this.enableNoteFingerLock;
    }

    @NotNull
    public final MutableLiveData<Integer> getNoteIdleAutoLockInterval() {
        return this.noteIdleAutoLockInterval;
    }

    public final void onChangeNotePassword() {
        this.enableNoteFingerLock.setValue(Boolean.valueOf(m51224d().get()));
    }
}
