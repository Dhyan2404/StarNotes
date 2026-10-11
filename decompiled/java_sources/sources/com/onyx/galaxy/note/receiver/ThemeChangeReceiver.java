package com.onyx.galaxy.note.receiver;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import com.blankj.utilcode.util.ActivityUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.extension.ActivityExtKt;
import com.onyx.android.sdk.theme.config.IUnSupportThemeRecreateActivity;
import com.onyx.android.sdk.theme.utils.SystemThemeChangedEvent;
import com.onyx.android.sdk.theme.utils.ThemeBundle;
import com.onyx.android.sdk.theme.utils.ThemeConst;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.utils.ThemeExt;
import com.sunia.HTREnginev2.v6l;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/receiver/ThemeChangeReceiver;", "Landroid/content/BroadcastReceiver;", "()V", "onReceive", "", "context", "Landroid/content/Context;", v6l.f87196g, "Landroid/content/Intent;", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class ThemeChangeReceiver extends BroadcastReceiver {
    public static final long THEME_CHANGE_TIME_DELAY = 500;

    @Override // android.content.BroadcastReceiver
    public void onReceive(@Nullable final Context context, @Nullable Intent intent) {
        if (intent == null || context == null || !Intrinsics.areEqual(intent.getAction(), "android.intent.action.CONFIGURATION_CHANGED")) {
            return;
        }
        RxTimerUtil.INSTANCE.timer(500L, TimeUnit.MILLISECONDS, new Function1<Long, Unit>() { // from class: com.onyx.galaxy.note.receiver.ThemeChangeReceiver$onReceive$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                invoke(l.longValue());
                return Unit.INSTANCE;
            }

            public final void invoke(long j) {
                ThemeExt themeExt = ThemeExt.INSTANCE;
                Configuration configuration = context.getResources().getConfiguration();
                Intrinsics.checkNotNullExpressionValue(configuration, "getConfiguration(...)");
                if (themeExt.isAutoChangeTheme(configuration)) {
                    int i = context.getResources().getConfiguration().uiMode;
                    ThemeUtils.reloadResource(ResManager.INSTANCE.getAppContext());
                    ThemeBundle.INSTANCE.postEvent(new SystemThemeChangedEvent(i));
                    List<Activity> activityList = ActivityUtils.getActivityList();
                    Intrinsics.checkNotNullExpressionValue(activityList, "getActivityList(...)");
                    for (Activity activity : activityList) {
                        if (!(activity instanceof IUnSupportThemeRecreateActivity)) {
                            activity.recreate();
                        }
                    }
                    MMKVUtils.INSTANCE.intOption(ThemeConst.KEY_IS_SYSTEM_THEME_NIGHT, -1).put(i);
                    ActivityExtKt.updateFullScreenStyle(NoteConfigManager.INSTANCE.getStatusBarHideOption().get());
                }
            }
        });
    }
}
