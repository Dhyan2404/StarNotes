package com.onyx.galaxy.note.settings.data;

import com.alibaba.fastjson2.TypeReference;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.android.sdk.data.utils.FloatOption;
import com.onyx.android.sdk.data.utils.IntOption;
import com.onyx.android.sdk.data.utils.JSONObjectOption;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.data.CounterWindowLocationModel;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\u0003\u001a\u00020\u0002J\u0018\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u000f\u001a\u00020\u000b2\b\b\u0002\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0010\u001a\u00020\u000b2\b\b\u0002\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0012\u001a\u00020\u0011R\u0014\u0010\u0014\u001a\u00020\u00138\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/data/CounterPreference;", "", "", Constant.TAG_USER_ID, "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel;", "getCounterWindowLocationOption", "Lcom/onyx/android/sdk/data/utils/IntOption;", "getCounterLastUsedPageOption", "", "isCountDown", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "getHasCounterNewRecordOption", "Lcom/onyx/android/sdk/data/utils/FloatOption;", "getAlarmVolumeOption", "getAlarmNormalCountDownOption", "getAlarmMultipleCountDownOption", "", "getAlarmRes", "", "DEFAULT_VOLUME", "F", "a", "()Ljava/lang/String;", "defaultUserId", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CounterPreference {
    public static final float DEFAULT_VOLUME = 0.5f;

    @NotNull
    public static final CounterPreference INSTANCE = new CounterPreference();

    public static /* synthetic */ BooleanOption getAlarmMultipleCountDownOption$default(CounterPreference counterPreference, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = counterPreference.m50738a();
        }
        return counterPreference.getAlarmMultipleCountDownOption(str);
    }

    public static /* synthetic */ BooleanOption getAlarmNormalCountDownOption$default(CounterPreference counterPreference, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = counterPreference.m50738a();
        }
        return counterPreference.getAlarmNormalCountDownOption(str);
    }

    public static /* synthetic */ FloatOption getAlarmVolumeOption$default(CounterPreference counterPreference, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = counterPreference.m50738a();
        }
        return counterPreference.getAlarmVolumeOption(str);
    }

    public static /* synthetic */ IntOption getCounterLastUsedPageOption$default(CounterPreference counterPreference, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = counterPreference.m50738a();
        }
        return counterPreference.getCounterLastUsedPageOption(str);
    }

    public static /* synthetic */ JSONObjectOption getCounterWindowLocationOption$default(CounterPreference counterPreference, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = counterPreference.m50738a();
        }
        return counterPreference.getCounterWindowLocationOption(str);
    }

    public static /* synthetic */ BooleanOption getHasCounterNewRecordOption$default(CounterPreference counterPreference, boolean z, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = counterPreference.m50738a();
        }
        return counterPreference.getHasCounterNewRecordOption(z, str);
    }

    /* renamed from: a */
    public final String m50738a() {
        return AccountDataBundle.INSTANCE.getSyncUserId();
    }

    @NotNull
    public final BooleanOption getAlarmMultipleCountDownOption(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return new BooleanOption(MMKVUtils.INSTANCE.get(), "settings_counter_alarm_after_count_down_all_" + userId, false);
    }

    @NotNull
    public final BooleanOption getAlarmNormalCountDownOption(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return new BooleanOption(MMKVUtils.INSTANCE.get(), "settings_counter_alarm_after_count_down_one_" + userId, false);
    }

    public final int getAlarmRes() {
        return C10651R.raw.counter_alarm;
    }

    @NotNull
    public final FloatOption getAlarmVolumeOption(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return new FloatOption(MMKVUtils.INSTANCE.get(), "settings_counter_alarm_volume_" + userId, 0.5f);
    }

    @NotNull
    public final IntOption getCounterLastUsedPageOption(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return new IntOption(MMKVUtils.INSTANCE.get(), "settings_counter_last_used_page_" + userId, 0);
    }

    @NotNull
    public final JSONObjectOption<CounterWindowLocationModel> getCounterWindowLocationOption(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return new JSONObjectOption<>(MMKVUtils.INSTANCE.get(), "settings_counter_window_location_" + userId, new TypeReference<CounterWindowLocationModel>() { // from class: com.onyx.galaxy.note.settings.data.CounterPreference$getCounterWindowLocationOption$1
        }, new Function0<CounterWindowLocationModel>() { // from class: com.onyx.galaxy.note.settings.data.CounterPreference$getCounterWindowLocationOption$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CounterWindowLocationModel invoke() {
                return CounterWindowLocationModel.INSTANCE.defaultValue();
            }
        });
    }

    @NotNull
    public final BooleanOption getHasCounterNewRecordOption(boolean isCountDown, @NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        String str = isCountDown ? SettingsConfigConst.SETTINGS_COUNTER_HAS_COUNT_DOWN_RECORD : SettingsConfigConst.SETTINGS_COUNTER_HAS_COUNT_UP_RECORD;
        return new BooleanOption(MMKVUtils.INSTANCE.get(), str + NameUtil.USCORE + userId, false);
    }
}
