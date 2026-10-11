package com.onyx.galaxy.note.utils;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.IntentUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.replicator.counter.data.CounterType;
import com.onyx.android.sdk.replicator.counter.model.CounterTaskModel;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0010\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b \u0010!J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bJ\u0010\u0010\u000b\u001a\u00020\b2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fJ\u000e\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002J\u001c\u0010\u0015\u001a\u00020\u000e2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0014\u001a\u00020\bR\u0014\u0010\u0016\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0017R\u0014\u0010\u0019\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0019\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u000e8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\u000e8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001d\u0010\u001bR\u0014\u0010\u001f\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001f\u0010\u0017¨\u0006\""}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/CounterUtils;", "", "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;", "taskModel", "Landroid/os/Bundle;", "withTaskModelBundle", "bundle", "parseTaskModelBundle", "", "targetPage", "withPageBundle", "parseTargetPage", "", "duration", "", "formatReadableDuration", "getFormatedTaskName", "", "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;", "list", FirebaseAnalytics.Param.INDEX, "getFormatedSegmentName", "PAGE_NONE", "I", "PAGE_SETTING_COUNT_DOWN", "PAGE_SETTING_COUNT_UP", "a", Constants.STRING_SIG, "BUNDLE_KEY_TASK_DATA", "b", "BUNDLE_TARGET_PAGE", MMKVNote.COUNTER_INIT_DATA_VERSION, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CounterUtils {
    public static final int COUNTER_INIT_DATA_VERSION = 1;

    @NotNull
    public static final CounterUtils INSTANCE = new CounterUtils();
    public static final int PAGE_NONE = -1;
    public static final int PAGE_SETTING_COUNT_DOWN = 0;
    public static final int PAGE_SETTING_COUNT_UP = 1;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String BUNDLE_KEY_TASK_DATA = "task_data";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final String BUNDLE_TARGET_PAGE = "target_page";

    @NotNull
    public final String formatReadableDuration(long duration) {
        DateTimeUtil dateTimeUtil = DateTimeUtil.INSTANCE;
        ResManager resManager = ResManager.INSTANCE;
        return dateTimeUtil.formatDurationSecondExact(duration, false, resManager.getStringSafely(C10651R.string.counter_duration_readable_format), resManager.getStringSafely(C10651R.string.counter_duration_readable_format_short));
    }

    @NotNull
    public final String getFormatedSegmentName(@NotNull List<CounterTaskModel.CountTimeSetting> list, int index) {
        Object orNull;
        boolean isBlank;
        Intrinsics.checkNotNullParameter(list, "list");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        boolean z = true;
        String format = String.format(Locale.getDefault(), ResManager.INSTANCE.getStringSafely(C10651R.string.counter_count_down_multiple_time_default_name), Arrays.copyOf(new Object[]{Integer.valueOf(index + 1)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        orNull = CollectionsKt___CollectionsKt.getOrNull(list, index);
        CounterTaskModel.CountTimeSetting countTimeSetting = (CounterTaskModel.CountTimeSetting) orNull;
        String title = countTimeSetting != null ? countTimeSetting.getTitle() : null;
        if (title != null) {
            isBlank = StringsKt__StringsJVMKt.isBlank(title);
            if (!isBlank) {
                z = false;
            }
        }
        return z ? format : title;
    }

    @NotNull
    public final String getFormatedTaskName(@NotNull CounterTaskModel taskModel) {
        boolean isBlank;
        Intrinsics.checkNotNullParameter(taskModel, "taskModel");
        if (!(taskModel.getTitle().length() == 0)) {
            isBlank = StringsKt__StringsJVMKt.isBlank(taskModel.getTitle());
            if (!isBlank) {
                return taskModel.getTitle();
            }
        }
        if (taskModel.getType() != CounterType.COUNT_UP.ordinal()) {
            return formatReadableDuration(taskModel.getDuration());
        }
        String string = ResManager.INSTANCE.getString(C10651R.string.counter_count_up);
        return string == null ? "" : string;
    }

    public final int parseTargetPage(@Nullable Bundle bundle) {
        if (bundle != null) {
            return bundle.getInt(BUNDLE_TARGET_PAGE, -1);
        }
        return -1;
    }

    @Nullable
    public final CounterTaskModel parseTaskModelBundle(@Nullable Bundle bundle) {
        if (bundle != null) {
            return (CounterTaskModel) IntentUtils.INSTANCE.getSerializableCompat(bundle, BUNDLE_KEY_TASK_DATA, CounterTaskModel.class);
        }
        return null;
    }

    @NotNull
    public final Bundle withPageBundle(int targetPage) {
        return BundleKt.bundleOf(TuplesKt.m61535to(BUNDLE_TARGET_PAGE, Integer.valueOf(targetPage)));
    }

    @NotNull
    public final Bundle withTaskModelBundle(@NotNull CounterTaskModel taskModel) {
        Intrinsics.checkNotNullParameter(taskModel, "taskModel");
        return BundleKt.bundleOf(TuplesKt.m61535to(BUNDLE_KEY_TASK_DATA, taskModel));
    }
}
