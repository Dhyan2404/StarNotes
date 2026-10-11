package com.onyx.galaxy.note.settings.p047ui;

import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.base.BaseNavigationActivity;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/SettingsActivity;", "Lcom/onyx/galaxy/note/common/base/BaseNavigationActivity;", "()V", "getNavigationResId", "", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class SettingsActivity extends BaseNavigationActivity {
    public static final int SETTINGS_INDEX_CLOUD_BACK = 2;
    public static final int SETTINGS_INDEX_DOC = 1;
    public static final int SETTINGS_INDEX_STYLUS = 3;

    @NotNull
    public static final String SETTING_MENU_NAME = "menuName";

    @Override // com.onyx.galaxy.note.common.base.BaseNavigationActivity
    public int getNavigationResId() {
        return C10651R.navigation.settings_navigation;
    }
}
