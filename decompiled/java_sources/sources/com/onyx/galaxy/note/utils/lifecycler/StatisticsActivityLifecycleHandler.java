package com.onyx.galaxy.note.utils.lifecycler;

import android.app.Activity;
import androidx.appcompat.widget.ActivityChooserModel;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/lifecycler/StatisticsActivityLifecycleHandler;", "Lcom/onyx/galaxy/note/utils/lifecycler/ActivityLifecycleHandler;", "()V", "onActivityResumed", "", ActivityChooserModel.f1429r, "Landroid/app/Activity;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class StatisticsActivityLifecycleHandler extends ActivityLifecycleHandler {
    @Override // com.onyx.galaxy.note.utils.lifecycler.ActivityLifecycleHandler, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        StatisticsBundle.INSTANCE.checkReportUserDailyActive();
    }
}
