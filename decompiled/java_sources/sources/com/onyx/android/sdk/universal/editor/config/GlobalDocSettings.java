package com.onyx.android.sdk.universal.editor.config;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0012\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001,B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0011\u001a\u00020\rJ\u0006\u0010\u0012\u001a\u00020\rJ\u0006\u0010\u0013\u001a\u00020\rJ\u0006\u0010\u0014\u001a\u00020\rJ\u0006\u0010\u0015\u001a\u00020\rJ\u0006\u0010\u0016\u001a\u00020\u0017J\u0006\u0010\u0018\u001a\u00020\u0017J\u0006\u0010\u0019\u001a\u00020\u0017J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0017J\u000e\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u0017J\u000e\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u0017J\u0016\u0010!\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\r2\u0006\u0010#\u001a\u00020\u0017J\u000e\u0010$\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020\rJ\u000e\u0010&\u001a\u00020\u001b2\u0006\u0010'\u001a\u00020\rJ\u000e\u0010(\u001a\u00020\u001b2\u0006\u0010)\u001a\u00020\rJ\u000e\u0010*\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\rJ\u000e\u0010+\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\rX\u0086T¢\u0006\u0002\n\u0000¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;", "", "()V", "KEY_ENABLE_ADAPTIVE_STROKE_WIDTH", "", "KEY_ENABLE_CONTINUOUS_PAGE", "KEY_ENABLE_FREE_MOVE_PAPER", "KEY_LAYOUT_TYPE", "KEY_PAGE_COLUMN_COUNT", "KEY_PAGE_ORIENTATION", "KEY_SCROLLER_HORIZON_GRAVITY", "KEY_SCROLLER_VERTICAL_GRAVITY", "LAYOUT_TYPE_HORIZONTAL", "", "LAYOUT_TYPE_VERTICAL", "PAGE_ORIENTATION_HORIZONTAL", "PAGE_ORIENTATION_VERTICAL", "getLayoutType", "getPageColumnCount", "getPageOrientation", "getScrollerHorizontalGravity", "getScrollerVerticalGravity", "isEnabledAdaptiveStrokeWidth", "", "isEnabledContinuousPage", "isEnabledFreeMovePaper", "setEnabledAdaptiveStrokeWidth", "", "adaptiveStrokeWidth", "setEnabledContinuousPage", "continuousPage", "setEnabledFreeMovePaper", "freeMovePaper", "setGlobalDocScrollerGravity", NotificationCompat.WearableExtender.f5060z, "isHorizontal", "setLayoutType", "layoutType", "setPageColumnCount", "count", "setPageOrientation", "orientation", "setScrollerHorizontalGravity", "setScrollerVerticalGravity", "PageColumn", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class GlobalDocSettings {

    @NotNull
    public static final GlobalDocSettings INSTANCE = new GlobalDocSettings();

    @NotNull
    public static final String KEY_ENABLE_ADAPTIVE_STROKE_WIDTH = "key_enable_adaptive_stroke_width";

    @NotNull
    public static final String KEY_ENABLE_CONTINUOUS_PAGE = "key_enable_continuous_page";

    @NotNull
    public static final String KEY_ENABLE_FREE_MOVE_PAPER = "enable_free_move_paper";

    @NotNull
    public static final String KEY_LAYOUT_TYPE = "layout_type";

    @NotNull
    public static final String KEY_PAGE_COLUMN_COUNT = "page_column_count";

    @NotNull
    public static final String KEY_PAGE_ORIENTATION = "page_orientation";

    @NotNull
    public static final String KEY_SCROLLER_HORIZON_GRAVITY = "page_num_display_gravity";

    @NotNull
    public static final String KEY_SCROLLER_VERTICAL_GRAVITY = "page_num_display_gravity_vertical";
    public static final int LAYOUT_TYPE_HORIZONTAL = 0;
    public static final int LAYOUT_TYPE_VERTICAL = 1;
    public static final int PAGE_ORIENTATION_HORIZONTAL = 0;
    public static final int PAGE_ORIENTATION_VERTICAL = 1;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;", "", "count", "", "(Ljava/lang/String;II)V", "getCount", "()I", "SINGLE", "DOUBLE", "FOUR", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class PageColumn {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ PageColumn[] $VALUES;
        private final int count;
        public static final PageColumn SINGLE = new PageColumn("SINGLE", 0, 1);
        public static final PageColumn DOUBLE = new PageColumn("DOUBLE", 1, 2);
        public static final PageColumn FOUR = new PageColumn("FOUR", 2, 4);

        private static final /* synthetic */ PageColumn[] $values() {
            return new PageColumn[]{SINGLE, DOUBLE, FOUR};
        }

        static {
            PageColumn[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private PageColumn(String str, int i, int i2) {
            this.count = i2;
        }

        @NotNull
        public static EnumEntries<PageColumn> getEntries() {
            return $ENTRIES;
        }

        public static PageColumn valueOf(String str) {
            return (PageColumn) Enum.valueOf(PageColumn.class, str);
        }

        public static PageColumn[] values() {
            return (PageColumn[]) $VALUES.clone();
        }

        public final int getCount() {
            return this.count;
        }
    }

    public final int getLayoutType() {
        return MMKVUtils.INSTANCE.getInt("layout_type", getPageOrientation());
    }

    public final int getPageColumnCount() {
        return MMKVUtils.INSTANCE.getInt("page_column_count", PageColumn.SINGLE.getCount());
    }

    public final int getPageOrientation() {
        return MMKVUtils.INSTANCE.getInt(KEY_PAGE_ORIENTATION, 1);
    }

    public final int getScrollerHorizontalGravity() {
        return MMKVUtils.INSTANCE.getInt(KEY_SCROLLER_HORIZON_GRAVITY, 8388613);
    }

    public final int getScrollerVerticalGravity() {
        return MMKVUtils.INSTANCE.getInt(KEY_SCROLLER_VERTICAL_GRAVITY, 48);
    }

    public final boolean isEnabledAdaptiveStrokeWidth() {
        return MMKVUtils.INSTANCE.getBoolean(KEY_ENABLE_ADAPTIVE_STROKE_WIDTH, true);
    }

    public final boolean isEnabledContinuousPage() {
        return MMKVUtils.INSTANCE.getBoolean(KEY_ENABLE_CONTINUOUS_PAGE, true);
    }

    public final boolean isEnabledFreeMovePaper() {
        return MMKVUtils.INSTANCE.getBoolean("enable_free_move_paper", false);
    }

    public final void setEnabledAdaptiveStrokeWidth(boolean adaptiveStrokeWidth) {
        MMKVUtils.INSTANCE.putBoolean(KEY_ENABLE_ADAPTIVE_STROKE_WIDTH, adaptiveStrokeWidth);
    }

    public final void setEnabledContinuousPage(boolean continuousPage) {
        MMKVUtils.INSTANCE.putBoolean(KEY_ENABLE_CONTINUOUS_PAGE, continuousPage);
    }

    public final void setEnabledFreeMovePaper(boolean freeMovePaper) {
        MMKVUtils.INSTANCE.putBoolean("enable_free_move_paper", freeMovePaper);
    }

    public final void setGlobalDocScrollerGravity(int gravity, boolean isHorizontal) {
        if (isHorizontal) {
            setScrollerHorizontalGravity(gravity);
        } else {
            setScrollerVerticalGravity(gravity);
        }
    }

    public final void setLayoutType(int layoutType) {
        MMKVUtils.INSTANCE.putInt("layout_type", layoutType);
    }

    public final void setPageColumnCount(int count) {
        MMKVUtils.INSTANCE.putInt("page_column_count", count);
    }

    public final void setPageOrientation(int orientation) {
        MMKVUtils.INSTANCE.putInt(KEY_PAGE_ORIENTATION, orientation);
    }

    public final void setScrollerHorizontalGravity(int gravity) {
        MMKVUtils.INSTANCE.putInt(KEY_SCROLLER_HORIZON_GRAVITY, gravity);
    }

    public final void setScrollerVerticalGravity(int gravity) {
        MMKVUtils.INSTANCE.putInt(KEY_SCROLLER_VERTICAL_GRAVITY, gravity);
    }
}
