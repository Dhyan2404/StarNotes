package com.onyx.android.sdk.note.common.utils;

import android.os.Build;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.utils.ConfigLoader;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.device.DeviceFactory;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.note.common.pen.data.PenDefaultConfig;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.replicator.note.data.pen.PenAttrs;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u0012\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0017\u001a\u00020\u00138\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0015R\u001b\u0010\u001c\u001a\u00020\u00188BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u0010\u0010\u001b¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/PenUtils;", "", "", "penType", "", "getMaxStrokeWidth", "getMinStrokeWidth", "getDefaultStrokeWidth", "getMaxStrokeNib", "getMinStrokeNib", "getMaxStrokePressure", "getMinStrokePressure", "getMinSmoothLevel", "getMaxSmoothLevel", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "defaultPenArgs", "a", "F", "PHYSICS_SIZE_TO_SCREEN_RATIO", "", "b", Constants.STRING_SIG, "PEN_CONFIG_RAW_NAME_SUFFIX", "DEFAULT_PEN_CONFIG_RAW_NAME", "Lcom/onyx/android/sdk/note/common/pen/data/PenDefaultConfig;", "c", "Lkotlin/Lazy;", "()Lcom/onyx/android/sdk/note/common/pen/data/PenDefaultConfig;", "defaultPenConfig", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PenUtils {

    @NotNull
    public static final String DEFAULT_PEN_CONFIG_RAW_NAME = "default_pen_config";

    @NotNull
    public static final PenUtils INSTANCE = new PenUtils();

    /* renamed from: a, reason: from kotlin metadata */
    public static final float PHYSICS_SIZE_TO_SCREEN_RATIO = 1.5f;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final String PEN_CONFIG_RAW_NAME_SUFFIX = "_pen_config";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final Lazy defaultPenConfig;

    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PenDefaultConfig>() { // from class: com.onyx.android.sdk.note.common.utils.PenUtils$defaultPenConfig$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PenDefaultConfig invoke() {
                PenDefaultConfig penDefaultConfig = (PenDefaultConfig) ConfigLoader.INSTANCE.load(PenDefaultConfig.class, PenUtils.DEFAULT_PEN_CONFIG_RAW_NAME, Build.BRAND + PenUtils.PEN_CONFIG_RAW_NAME_SUFFIX, Build.MODEL + PenUtils.PEN_CONFIG_RAW_NAME_SUFFIX);
                return penDefaultConfig == null ? new PenDefaultConfig() : penDefaultConfig;
            }
        });
        defaultPenConfig = lazy;
    }

    /* renamed from: a */
    public final PenDefaultConfig m34033a() {
        return (PenDefaultConfig) defaultPenConfig.getValue();
    }

    @NotNull
    public final PenArgs defaultPenArgs(int penType) {
        PenArgs penArgs = new PenArgs(UUIDUtils.INSTANCE.shortUUID(), penType, getDefaultStrokeWidth(penType), -16777216, null, 16, null);
        if (penType == 5) {
            penArgs.setNib(ResManager.INSTANCE.getFloat(C7485R.dimen.shape_percent_80));
            penArgs.setPressureSensitivity(DeviceFactory.INSTANCE.getCurrentDevice().getDefaultPressureSensitivity(0.375f));
        } else if (penType == 15) {
            penArgs.setRoundCorner(false);
        } else if (penType == 22) {
            penArgs.setAttrs(new PenAttrs(1));
        } else if (penType == 39) {
            penArgs.setSubShapeType(7);
        }
        return penArgs;
    }

    public final float getDefaultStrokeWidth(int penType) {
        return m34033a().getDefaultStrokeWidth(penType);
    }

    public final float getMaxSmoothLevel(int penType) {
        return m34033a().getMaxSmoothLevel(penType);
    }

    public final float getMaxStrokeNib(int penType) {
        return m34033a().getMaxStrokeNib(penType);
    }

    public final float getMaxStrokePressure(int penType) {
        return m34033a().getMaxStrokePressure(penType);
    }

    public final float getMaxStrokeWidth(int penType) {
        return m34033a().getMaxStrokeWidth(penType);
    }

    public final float getMinSmoothLevel(int penType) {
        return m34033a().getMinSmoothLevel(penType);
    }

    public final float getMinStrokeNib(int penType) {
        return m34033a().getMinStrokeNib(penType);
    }

    public final float getMinStrokePressure(int penType) {
        return m34033a().getMinStrokePressure(penType);
    }

    public final float getMinStrokeWidth(int penType) {
        return m34033a().getMinStrokeWidth(penType);
    }
}
