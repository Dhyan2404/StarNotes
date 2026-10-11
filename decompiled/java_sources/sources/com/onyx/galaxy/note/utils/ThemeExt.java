package com.onyx.galaxy.note.utils;

import android.app.Activity;
import android.content.res.Configuration;
import android.view.View;
import com.blankj.utilcode.util.ActivityUtils;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.theme.utils.SkinType;
import com.onyx.android.sdk.theme.utils.ThemeConst;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.galaxy.note.editor.action.theme.IThemeRecreate;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u001a\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f¨\u0006\r"}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/ThemeExt;", "", "()V", "isAutoChangeTheme", "", "configuration", "Landroid/content/res/Configuration;", "resetTheme", "", "themeType", "", "view", "Landroid/view/View;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nThemeExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThemeExt.kt\ncom/onyx/galaxy/note/utils/ThemeExt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,31:1\n1855#2,2:32\n*S KotlinDebug\n*F\n+ 1 ThemeExt.kt\ncom/onyx/galaxy/note/utils/ThemeExt\n*L\n14#1:32,2\n*E\n"})
/* loaded from: classes9.dex */
public final class ThemeExt {

    @NotNull
    public static final ThemeExt INSTANCE = new ThemeExt();

    public static /* synthetic */ void resetTheme$default(ThemeExt themeExt, int i, View view, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            view = null;
        }
        themeExt.resetTheme(i, view);
    }

    public final boolean isAutoChangeTheme(@NotNull Configuration configuration) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        return ThemeUtils.getTheme() == SkinType.AUTO_SYSTEM && MMKVUtils.INSTANCE.intOption(ThemeConst.KEY_IS_SYSTEM_THEME_NIGHT, -1).get() != configuration.uiMode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void resetTheme(int themeType, @Nullable View view) {
        List<Activity> activityList = ActivityUtils.getActivityList();
        Intrinsics.checkNotNullExpressionValue(activityList, "getActivityList(...)");
        for (Activity activity : activityList) {
            ThemeUtils.setTheme(activity, themeType);
            if (activity instanceof IThemeRecreate) {
                ((IThemeRecreate) activity).themeRecreate();
            } else {
                ThemeUtils.setTheme(activity, themeType);
            }
        }
        if (view != null) {
            ThemeUtils.refreshView(view);
        }
    }
}
