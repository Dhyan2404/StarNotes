package com.onyx.galaxy.note.receiver;

import android.app.Activity;
import android.content.res.Configuration;
import androidx.appcompat.widget.ActivityChooserModel;
import com.blankj.utilcode.util.ActivityUtils;
import com.blankj.utilcode.util.Utils;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.theme.config.IUnSupportThemeRecreateActivity;
import com.onyx.android.sdk.theme.utils.SystemThemeChangedEvent;
import com.onyx.android.sdk.theme.utils.ThemeBundle;
import com.onyx.android.sdk.theme.utils.ThemeConst;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.galaxy.note.utils.ThemeExt;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\b\u0010\tJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0006\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0002¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/receiver/AppStatusChangeListener;", "Lcom/blankj/utilcode/util/Utils$OnAppStatusChangedListener;", "Landroid/app/Activity;", ActivityChooserModel.f1429r, "", "onForeground", "onBackground", "a", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAppStatusChangeListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppStatusChangeListener.kt\ncom/onyx/galaxy/note/receiver/AppStatusChangeListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,39:1\n1855#2,2:40\n*S KotlinDebug\n*F\n+ 1 AppStatusChangeListener.kt\ncom/onyx/galaxy/note/receiver/AppStatusChangeListener\n*L\n27#1:40,2\n*E\n"})
/* loaded from: classes9.dex */
public final class AppStatusChangeListener implements Utils.OnAppStatusChangedListener {
    /* renamed from: a */
    public final void m50629a() {
        ThemeExt themeExt = ThemeExt.INSTANCE;
        Configuration configuration = Utils.getApp().getResources().getConfiguration();
        Intrinsics.checkNotNullExpressionValue(configuration, "getConfiguration(...)");
        if (themeExt.isAutoChangeTheme(configuration)) {
            int i = Utils.getApp().getResources().getConfiguration().uiMode;
            MMKVUtils.INSTANCE.intOption(ThemeConst.KEY_IS_SYSTEM_THEME_NIGHT, -1).put(i);
            ThemeUtils.reloadResource(ResManager.INSTANCE.getAppContext());
            List<Activity> activityList = ActivityUtils.getActivityList();
            Intrinsics.checkNotNullExpressionValue(activityList, "getActivityList(...)");
            for (Activity activity : activityList) {
                if (activity instanceof IUnSupportThemeRecreateActivity) {
                    ThemeBundle.INSTANCE.postEvent(new SystemThemeChangedEvent(i));
                } else {
                    activity.recreate();
                }
            }
        }
    }

    @Override // com.blankj.utilcode.util.Utils.OnAppStatusChangedListener
    public void onBackground(@Nullable Activity activity) {
        Debug.INSTANCE.m32037d("app onBackground!!!");
    }

    @Override // com.blankj.utilcode.util.Utils.OnAppStatusChangedListener
    public void onForeground(@Nullable Activity activity) {
        Debug.INSTANCE.m32037d("app onForeground!!!");
        m50629a();
    }
}
