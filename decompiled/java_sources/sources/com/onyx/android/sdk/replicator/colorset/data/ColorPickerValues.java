package com.onyx.android.sdk.replicator.colorset.data;

import androidx.annotation.ColorInt;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.IntList;
import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.utils.IntListOption;
import com.onyx.android.sdk.data.utils.IntOption;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.replicator.C7594R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b0\u00101R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\n\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u000bR\u0014\u0010\r\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u0004R\u001a\u0010\u0011\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0017\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0017\u0010\u001d\u001a\u00020\u00188\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0017\u0010#\u001a\u00020\u001e8\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u0017\u0010)\u001a\u00020$8\u0006¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R\u0017\u0010/\u001a\u00020*8\u0006¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.¨\u00062"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/colorset/data/ColorPickerValues;", "", "", "ACTION_MODE_NONE", "I", "ACTION_MODE_PICK_COLOR", "ACTION_MODE_PICK_SCREEN_PIXEL", "ACTION_MODE_MOVE_HUE", "ACTION_MODE_MOVE_ALPHA", "", "KEY_RECENT_COLOR", Constants.STRING_SIG, "KEY_FAVORITE_COLORS", "CELL_COLOR_DEFAULT", "a", "getPICKER_COLOR_DEFAULT", "()I", "PICKER_COLOR_DEFAULT", "Lcom/onyx/android/sdk/base/extension/IntList;", "b", "Lcom/onyx/android/sdk/base/extension/IntList;", "getDEFAULT_COLORS", "()Lcom/onyx/android/sdk/base/extension/IntList;", "DEFAULT_COLORS", "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetList;", "c", "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetList;", "getDEFAULT_COLOR_SETS", "()Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetList;", "DEFAULT_COLOR_SETS", "Lcom/onyx/android/sdk/data/utils/IntListOption;", "d", "Lcom/onyx/android/sdk/data/utils/IntListOption;", "getFavoriteColorOption", "()Lcom/onyx/android/sdk/data/utils/IntListOption;", "favoriteColorOption", "Lcom/onyx/android/sdk/data/utils/IntOption;", "e", "Lcom/onyx/android/sdk/data/utils/IntOption;", "getRecentColorOption", "()Lcom/onyx/android/sdk/data/utils/IntOption;", "recentColorOption", "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", C6997f.f39671c, "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "getScheduler", "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "scheduler", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ColorPickerValues {
    public static final int ACTION_MODE_MOVE_ALPHA = 4;
    public static final int ACTION_MODE_MOVE_HUE = 3;
    public static final int ACTION_MODE_NONE = 0;
    public static final int ACTION_MODE_PICK_COLOR = 1;
    public static final int ACTION_MODE_PICK_SCREEN_PIXEL = 2;
    public static final int CELL_COLOR_DEFAULT = 0;

    @NotNull
    public static final ColorPickerValues INSTANCE = new ColorPickerValues();

    @NotNull
    public static final String KEY_FAVORITE_COLORS = "FavoriteColors";

    @NotNull
    public static final String KEY_RECENT_COLOR = "RecentColor";

    /* renamed from: a, reason: from kotlin metadata */
    @ColorInt
    public static final int PICKER_COLOR_DEFAULT;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final IntList DEFAULT_COLORS;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final ColorSetList DEFAULT_COLOR_SETS;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final IntListOption favoriteColorOption;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static final IntOption recentColorOption;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public static final RxScheduler scheduler;

    static {
        int color = ResManager.INSTANCE.getColor(C7594R.color.color_pick_default_color);
        PICKER_COLOR_DEFAULT = color;
        IntList loadDefaultColors = ColorSetModelKt.loadDefaultColors();
        DEFAULT_COLORS = loadDefaultColors;
        DEFAULT_COLOR_SETS = ColorSetModelKt.loadDefaultColorSets();
        MMKVUtils mMKVUtils = MMKVUtils.INSTANCE;
        favoriteColorOption = new IntListOption(mMKVUtils.get(), KEY_FAVORITE_COLORS, loadDefaultColors);
        recentColorOption = new IntOption(mMKVUtils.get(), KEY_RECENT_COLOR, color);
        scheduler = RxScheduler.Companion.newSingleThreadManager$default(RxScheduler.INSTANCE, "Thread-ColorSet", 0L, 2, null);
    }

    @NotNull
    public final IntList getDEFAULT_COLORS() {
        return DEFAULT_COLORS;
    }

    @NotNull
    public final ColorSetList getDEFAULT_COLOR_SETS() {
        return DEFAULT_COLOR_SETS;
    }

    @NotNull
    public final IntListOption getFavoriteColorOption() {
        return favoriteColorOption;
    }

    public final int getPICKER_COLOR_DEFAULT() {
        return PICKER_COLOR_DEFAULT;
    }

    @NotNull
    public final IntOption getRecentColorOption() {
        return recentColorOption;
    }

    @NotNull
    public final RxScheduler getScheduler() {
        return scheduler;
    }
}
