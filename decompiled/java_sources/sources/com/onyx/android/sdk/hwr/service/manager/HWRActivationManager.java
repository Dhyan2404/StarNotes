package com.onyx.android.sdk.hwr.service.manager;

import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.HWRActivationConfig;
import com.onyx.android.sdk.data.account.model.HWRActivationModel;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.OnyxEncryptUtils;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerType;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerTypeKt;
import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\f\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\bJ\u000e\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;", "", "()V", "getHWRActivationConfig", "Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;", "engine", "", "getHWREngineActivationState", "Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;", "isActivationRequired", "", "isEngineActivated", "isEngineExceedDeviceLimit", "isModelActivated", "model", "isRecognizerActivated", "recognizer", "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;", "isTrialPeriod", "showProMenu", "showTrialMenu", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nHWRActivationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRActivationManager.kt\ncom/onyx/android/sdk/hwr/service/manager/HWRActivationManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 JSONUtils.kt\ncom/onyx/android/sdk/data/utils/JSONUtils\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,89:1\n288#2,2:90\n46#3:92\n1#4:93\n*S KotlinDebug\n*F\n+ 1 HWRActivationManager.kt\ncom/onyx/android/sdk/hwr/service/manager/HWRActivationManager\n*L\n23#1:90,2\n33#1:92\n*E\n"})
/* loaded from: classes7.dex */
public final class HWRActivationManager {

    @NotNull
    public static final HWRActivationManager INSTANCE = new HWRActivationManager();

    @NotNull
    public final HWRActivationConfig getHWRActivationConfig(@NotNull String engine) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        HWRActivationModel hWREngineActivationState = getHWREngineActivationState(engine);
        if (hWREngineActivationState.getEncryptedContent().length() == 0) {
            return new HWRActivationConfig();
        }
        HWRActivationConfig hWRActivationConfig = (HWRActivationConfig) JSONUtils.INSTANCE.parseObject(OnyxEncryptUtils.INSTANCE.decryptConfigJson(hWREngineActivationState.getEncryptedContent()), HWRActivationConfig.class);
        return hWRActivationConfig == null ? new HWRActivationConfig() : hWRActivationConfig;
    }

    @NotNull
    public final HWRActivationModel getHWREngineActivationState(@NotNull String engine) {
        Object obj;
        Intrinsics.checkNotNullParameter(engine, "engine");
        Iterator<T> it2 = AccountDataBundle.INSTANCE.getHwrActivationStates().iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(((HWRActivationModel) obj).getEngine(), engine)) {
                break;
            }
        }
        HWRActivationModel hWRActivationModel = (HWRActivationModel) obj;
        return hWRActivationModel == null ? new HWRActivationModel() : hWRActivationModel;
    }

    public final boolean isActivationRequired(@NotNull String engine) {
        List listOf;
        Intrinsics.checkNotNullParameter(engine, "engine");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(HWRValues.ENGINE_SUNIA);
        return listOf.contains(engine);
    }

    public final boolean isEngineActivated(@NotNull String engine) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        if ((INSTANCE.isActivationRequired(engine) ? engine : null) == null) {
            return true;
        }
        return isModelActivated(getHWREngineActivationState(engine));
    }

    public final boolean isEngineExceedDeviceLimit(@NotNull String engine) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        return getHWREngineActivationState(engine).getExceedDeviceLimit();
    }

    public final boolean isModelActivated(@NotNull HWRActivationModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        if (model.isEmpty()) {
            return false;
        }
        int state = model.getState();
        if (state == 3 || state == 4) {
            return model.getDeviceActivated();
        }
        return false;
    }

    public final boolean isRecognizerActivated(@NotNull HWRRecognizerType recognizer) {
        Intrinsics.checkNotNullParameter(recognizer, "recognizer");
        return isEngineActivated(HWRRecognizerTypeKt.getEngineType(recognizer));
    }

    public final boolean isTrialPeriod(@NotNull String engine) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        return getHWREngineActivationState(engine).getState() == 3;
    }

    public final boolean showProMenu(@NotNull String engine) {
        List listOf;
        Intrinsics.checkNotNullParameter(engine, "engine");
        HWRActivationModel hWREngineActivationState = getHWREngineActivationState(engine);
        if (HWRActivationModel.INSTANCE.isTimeExpired(hWREngineActivationState)) {
            return true;
        }
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{5, 6});
        return listOf.contains(Integer.valueOf(hWREngineActivationState.getState()));
    }

    public final boolean showTrialMenu(@NotNull String engine) {
        List listOf;
        Intrinsics.checkNotNullParameter(engine, "engine");
        HWRActivationModel hWREngineActivationState = getHWREngineActivationState(engine);
        if (HWRActivationModel.INSTANCE.isTimeExpired(hWREngineActivationState)) {
            return false;
        }
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{0, 1, 3});
        return listOf.contains(Integer.valueOf(hWREngineActivationState.getState()));
    }
}
