package com.onyx.galaxy.note.settings.data;

import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.StringRes;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.settings.p047ui.SettingsActivity;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0015\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B/\b\u0002\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\tj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;", "", SettingsActivity.SETTING_MENU_NAME, "", "imageResource", "navigationAction", "newFeatureImageResource", "(Ljava/lang/String;IIIII)V", "getImageResource", "()I", "getMenuName", "getNavigationAction", "getNewFeatureImageResource", "CLOUD_SYNC", "LOCAL_BACKUP", "CLOUD_BACKUP", "THEME_SETTING", "DOC", "TOOLS", "STYLUS", "GESTURE", "AI_LAB", "PRIVACY", "MORE", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class SettingsMenuType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SettingsMenuType[] $VALUES;
    public static final SettingsMenuType CLOUD_BACKUP;
    public static final SettingsMenuType DOC;
    public static final SettingsMenuType GESTURE;
    public static final SettingsMenuType LOCAL_BACKUP;
    public static final SettingsMenuType STYLUS;
    public static final SettingsMenuType THEME_SETTING;
    public static final SettingsMenuType TOOLS;
    private final int imageResource;
    private final int menuName;
    private final int navigationAction;
    private final int newFeatureImageResource;
    public static final SettingsMenuType CLOUD_SYNC = new SettingsMenuType("CLOUD_SYNC", 0, C10651R.string.cloud_sync, C10651R.drawable.selector_settings_cloud, C10651R.id.action_go_to_cloud_sync, 0, 8, null);
    public static final SettingsMenuType AI_LAB = new SettingsMenuType("AI_LAB", 8, C10651R.string.ink_menu_ai_lab, C10651R.drawable.selector_settings_ai, C10651R.id.action_go_to_ai_lab, C10651R.drawable.ic_beta_ai_v2);
    public static final SettingsMenuType PRIVACY = new SettingsMenuType("PRIVACY", 9, C10651R.string.privacy_settings, C10651R.drawable.selector_settings_privacy, C10651R.id.action_go_to_privacy, 0, 8, null);
    public static final SettingsMenuType MORE = new SettingsMenuType("MORE", 10, C10651R.string.other_settings, C10651R.drawable.selector_settings_more, C10651R.id.action_go_to_more, 0, 8, null);

    private static final /* synthetic */ SettingsMenuType[] $values() {
        return new SettingsMenuType[]{CLOUD_SYNC, LOCAL_BACKUP, CLOUD_BACKUP, THEME_SETTING, DOC, TOOLS, STYLUS, GESTURE, AI_LAB, PRIVACY, MORE};
    }

    static {
        int i = 0;
        int i2 = 8;
        DefaultConstructorMarker defaultConstructorMarker = null;
        LOCAL_BACKUP = new SettingsMenuType("LOCAL_BACKUP", 1, C10651R.string.local_backup, C10651R.drawable.selector_settings_backup_local, C10651R.id.action_go_to_local_backup, i, i2, defaultConstructorMarker);
        int i3 = 0;
        int i4 = 8;
        DefaultConstructorMarker defaultConstructorMarker2 = null;
        CLOUD_BACKUP = new SettingsMenuType("CLOUD_BACKUP", 2, C10651R.string.network_disk_backup, C10651R.drawable.selector_settings_backup_cloud, C10651R.id.action_go_to_cloud_backup, i3, i4, defaultConstructorMarker2);
        THEME_SETTING = new SettingsMenuType("THEME_SETTING", 3, C10651R.string.theme_setting, C10651R.drawable.selector_settings_theme, C10651R.id.action_go_to_theme, i, i2, defaultConstructorMarker);
        DOC = new SettingsMenuType("DOC", 4, C10651R.string.doc_settings, C10651R.drawable.selector_settings_doc, C10651R.id.action_go_to_doc, i3, i4, defaultConstructorMarker2);
        TOOLS = new SettingsMenuType("TOOLS", 5, C10651R.string.tool_settings, C10651R.drawable.selector_settings_tools, C10651R.id.action_go_to_tools, i, i2, defaultConstructorMarker);
        STYLUS = new SettingsMenuType("STYLUS", 6, C10651R.string.stylus_settings, C10651R.drawable.selector_settings_stylus, C10651R.id.action_go_to_stylus, i3, i4, defaultConstructorMarker2);
        GESTURE = new SettingsMenuType("GESTURE", 7, C10651R.string.gesture_settings, C10651R.drawable.selector_settings_gesture, C10651R.id.action_go_to_gesture, i, i2, defaultConstructorMarker);
        SettingsMenuType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private SettingsMenuType(@StringRes String str, @DrawableRes int i, @IdRes int i2, @DrawableRes int i3, int i4, int i5) {
        this.menuName = i2;
        this.imageResource = i3;
        this.navigationAction = i4;
        this.newFeatureImageResource = i5;
    }

    @NotNull
    public static EnumEntries<SettingsMenuType> getEntries() {
        return $ENTRIES;
    }

    public static SettingsMenuType valueOf(String str) {
        return (SettingsMenuType) Enum.valueOf(SettingsMenuType.class, str);
    }

    public static SettingsMenuType[] values() {
        return (SettingsMenuType[]) $VALUES.clone();
    }

    public final int getImageResource() {
        return this.imageResource;
    }

    public final int getMenuName() {
        return this.menuName;
    }

    public final int getNavigationAction() {
        return this.navigationAction;
    }

    public final int getNewFeatureImageResource() {
        return this.newFeatureImageResource;
    }

    public /* synthetic */ SettingsMenuType(String str, int i, int i2, int i3, int i4, int i5, int i6, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, i2, i3, i4, (i6 & 8) != 0 ? 0 : i5);
    }
}
