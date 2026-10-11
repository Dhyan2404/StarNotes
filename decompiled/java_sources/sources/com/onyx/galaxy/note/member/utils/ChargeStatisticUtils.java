package com.onyx.galaxy.note.member.utils;

import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.member.data.FeatureChargeArgs;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\r"}, m61528d2 = {"Lcom/onyx/galaxy/note/member/utils/ChargeStatisticUtils;", "", "()V", "reportChargeDialogClose", "", "args", "Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;", "duration", "", "reportChargeDialogOpen", "featureTab", "", "reportChargeDialogView", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class ChargeStatisticUtils {

    @NotNull
    public static final ChargeStatisticUtils INSTANCE = new ChargeStatisticUtils();

    public final void reportChargeDialogClose(@NotNull FeatureChargeArgs args, long duration) {
        Intrinsics.checkNotNullParameter(args, "args");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(OnyxStatisticConstant.KEY_FUNCTION_FROM, args.getFunctionFrom());
        linkedHashMap.put(OnyxStatisticConstant.KEY_OPERATION_CODE, args.getOperationCode());
        linkedHashMap.put(OnyxStatisticConstant.KEY_STAY_DURATION, Long.valueOf(duration));
        linkedHashMap.put(OnyxStatisticConstant.KEY_DEVICE_SYSTEM, OnyxStatisticConstant.INSTANCE.getTriggerSystem());
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(OnyxStatisticConstant.ID_CLICK_PAID_GUIDE_POPUPS_CLOSE, linkedHashMap));
    }

    public final void reportChargeDialogOpen(@NotNull FeatureChargeArgs args, @NotNull String featureTab, long duration) {
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(featureTab, "featureTab");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(OnyxStatisticConstant.KEY_FUNCTION_FROM, args.getFunctionFrom());
        linkedHashMap.put(OnyxStatisticConstant.KEY_OPERATION_CODE, args.getOperationCode());
        linkedHashMap.put(OnyxStatisticConstant.KEY_STAY_TAB, featureTab);
        linkedHashMap.put(OnyxStatisticConstant.KEY_STAY_DURATION, Long.valueOf(duration));
        linkedHashMap.put(OnyxStatisticConstant.KEY_DEVICE_SYSTEM, OnyxStatisticConstant.INSTANCE.getTriggerSystem());
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(OnyxStatisticConstant.ID_CLICK_PAID_GUIDE_POPUPS_OPEN, linkedHashMap));
    }

    public final void reportChargeDialogView(@NotNull FeatureChargeArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(OnyxStatisticConstant.KEY_FUNCTION_FROM, args.getFunctionFrom());
        linkedHashMap.put(OnyxStatisticConstant.KEY_OPERATION_CODE, args.getOperationCode());
        linkedHashMap.put(OnyxStatisticConstant.KEY_DEVICE_SYSTEM, OnyxStatisticConstant.INSTANCE.getTriggerSystem());
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(OnyxStatisticConstant.ID_VIEW_PAID_GUIDE_POPUPS, linkedHashMap));
    }
}
