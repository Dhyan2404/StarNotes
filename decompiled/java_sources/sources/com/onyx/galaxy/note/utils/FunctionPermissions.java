package com.onyx.galaxy.note.utils;

import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.model.HWRActivationModel;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.hwr.service.manager.HWRActivationManager;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.android.sdk.universal.util.HWREngineManager;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/FunctionPermissions;", "", "()V", "isAiSearchEnabled", "", "isRealtimeBeautifyEnabled", "isSmartHwrEnabled", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class FunctionPermissions {

    @NotNull
    public static final FunctionPermissions INSTANCE = new FunctionPermissions();

    public final boolean isAiSearchEnabled() {
        NoteConfigManager noteConfigManager = NoteConfigManager.INSTANCE;
        if (!noteConfigManager.isAiSearchFeatureEnabled()) {
            return false;
        }
        return AccountDataBundle.INSTANCE.isVipRole() && HWRActivationManager.INSTANCE.isEngineActivated(HWREngineManager.INSTANCE.getEngineByFunction(FunctionKey.HWR_SEARCH)) && noteConfigManager.getUserHwrSearchEnabledOption().get();
    }

    public final boolean isRealtimeBeautifyEnabled() {
        if (!MMKVNote.INSTANCE.getRealtimeBeautifyEnabledOption().get()) {
            return false;
        }
        String engineByFunction = HWREngineManager.INSTANCE.getEngineByFunction(FunctionKey.INK_BEAUTIFY);
        HWRActivationManager hWRActivationManager = HWRActivationManager.INSTANCE;
        return hWRActivationManager.isEngineActivated(engineByFunction) && !HWRActivationModel.INSTANCE.isTimeExpired(hWRActivationManager.getHWREngineActivationState(engineByFunction));
    }

    public final boolean isSmartHwrEnabled() {
        NoteConfigManager noteConfigManager = NoteConfigManager.INSTANCE;
        if (!noteConfigManager.isSmartHwrFeatureEnabled()) {
            return false;
        }
        return AccountDataBundle.INSTANCE.isVipRole() && HWRActivationManager.INSTANCE.isEngineActivated(HWREngineManager.INSTANCE.getEngineByFunction(FunctionKey.HWR_SMART)) && noteConfigManager.getUserSmartHwrEnabledOption().get();
    }
}
