package com.onyx.android.sdk.universal.editor.data;

import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.android.sdk.data.utils.FloatOption;
import com.onyx.android.sdk.data.utils.IntOption;
import com.onyx.android.sdk.data.utils.JSONListOption;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\fJ\u0006\u0010\r\u001a\u00020\fJ\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u0004J\u0006\u0010\u0011\u001a\u00020\u0004¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;", "", "()V", "getEraserAllContainsSwitchOption", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "getEraserAutoCancelSwitchOption", "getEraserElementsOnlyOption", "Lcom/onyx/android/sdk/data/utils/JSONListOption;", "", "getEraserTypeOption", "Lcom/onyx/android/sdk/data/utils/IntOption;", "getEraserWidth", "Lcom/onyx/android/sdk/data/utils/FloatOption;", "getPressure", "getPressurePercentage", "", "getPressureSwitchOption", "getScribbleEraseSwitchOption", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class EraserPropertyOption {

    @NotNull
    public static final EraserPropertyOption INSTANCE = new EraserPropertyOption();

    private EraserPropertyOption() {
    }

    @NotNull
    public final BooleanOption getEraserAllContainsSwitchOption() {
        return new BooleanOption(MMKVUtils.INSTANCE.get(), MMKVNote.ONYX_NOTE_EDIT_ERASER_ALL_CONTAINS, false);
    }

    @NotNull
    public final BooleanOption getEraserAutoCancelSwitchOption() {
        return new BooleanOption(MMKVUtils.INSTANCE.get(), MMKVNote.ONYX_NOTE_EDIT_ERASER_AUTO_CANCEL, false);
    }

    @NotNull
    public final JSONListOption<Integer> getEraserElementsOnlyOption() {
        return new JSONListOption<>(MMKVNote.INSTANCE.getMMKV(), MMKVNote.ONYX_NOTE_EDIT_ERASER_ELEMENT_ONLY, null, null, 12, null);
    }

    @NotNull
    public final IntOption getEraserTypeOption() {
        return new IntOption(MMKVUtils.INSTANCE.get(), MMKVNote.ONYX_NOTE_EDIT_ERASER_TYPE, 1);
    }

    @NotNull
    public final FloatOption getEraserWidth() {
        return new FloatOption(MMKVUtils.INSTANCE.get(), MMKVNote.ONYX_NOTE_EDIT_ERASER_WIDTH, 20.0f);
    }

    @NotNull
    public final FloatOption getPressure() {
        return new FloatOption(MMKVUtils.INSTANCE.get(), MMKVNote.ONYX_NOTE_EDIT_ERASER_PRESSURE, 20.0f);
    }

    public final float getPressurePercentage() {
        return getPressure().get() / 100;
    }

    @NotNull
    public final BooleanOption getPressureSwitchOption() {
        return new BooleanOption(MMKVUtils.INSTANCE.get(), MMKVNote.ONYX_NOTE_EDIT_ERASER_PRESSURE_SWITCH, false);
    }

    @NotNull
    public final BooleanOption getScribbleEraseSwitchOption() {
        return new BooleanOption(MMKVUtils.INSTANCE.get(), MMKVNote.ONYX_NOTE_EDIT_ERASER_SCRATCH_ERASE, false);
    }
}
