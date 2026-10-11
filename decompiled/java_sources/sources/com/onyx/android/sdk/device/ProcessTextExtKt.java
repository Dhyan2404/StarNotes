package com.onyx.android.sdk.device;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import com.blankj.utilcode.util.LogUtils;
import com.sunia.HTREnginev2.v6l;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a \u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u001a \u0010\b\u001a\u00020\t*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u001a\u0012\u0010\n\u001a\u00020\u000b*\u00020\u00022\u0006\u0010\f\u001a\u00020\u0001¨\u0006\r"}, m61528d2 = {"createTranslateProcessTextIntent", "Landroid/content/Intent;", "Landroid/content/Context;", "text", "", "list", "", "Landroid/content/pm/ResolveInfo;", "sendTranslateProcessTextIntent", "", "startActivitySafely", "", v6l.f87196g, "sdk-device_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ProcessTextExtKt {
    @NotNull
    public static final Intent createTranslateProcessTextIntent(@NotNull Context context, @NotNull String text, @NotNull List<? extends ResolveInfo> list) {
        Object first;
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(list, "list");
        if (list.isEmpty()) {
            return IntentUtils.INSTANCE.createProcessTextIntent(text);
        }
        ResolveInfo translateInfo = DeviceFactory.INSTANCE.getDevice().getTranslateInfo(list);
        IntentUtils intentUtils = IntentUtils.INSTANCE;
        if (translateInfo == null) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
            translateInfo = (ResolveInfo) first;
        }
        return intentUtils.createProcessTextIntentFromResolveInfo(translateInfo, text);
    }

    public static final void sendTranslateProcessTextIntent(@NotNull Context context, @NotNull String text, @NotNull List<? extends ResolveInfo> list) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(list, "list");
        startActivitySafely(context, createTranslateProcessTextIntent(context, text, list));
    }

    public static final boolean startActivitySafely(@NotNull Context context, @NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(intent, "intent");
        try {
            context.startActivity(intent);
            return true;
        } catch (Exception e) {
            LogUtils.m8144e(context.getClass(), "startActivitySafely fail:" + intent, e);
            return false;
        }
    }
}
