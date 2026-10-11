package com.onyx.android.sdk.base.utils;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.credentials.provider.utils.PrivilegedApp;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0004J\u0016\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0004J5\u0010\u000b\u001a\u0004\u0018\u0001H\f\"\b\b\u0000\u0010\f*\u00020\r*\u0004\u0018\u00010\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\u00042\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\f0\u0010¢\u0006\u0002\u0010\u0011J5\u0010\u0012\u001a\u0004\u0018\u0001H\f\"\b\b\u0000\u0010\f*\u00020\u0013*\u0004\u0018\u00010\u00142\b\u0010\u000e\u001a\u0004\u0018\u00010\u00042\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\f0\u0010¢\u0006\u0002\u0010\u0015R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/IntentUtils;", "", "()V", "ACTION_IMPORT", "", "createProcessTextIntent", "Landroid/content/Intent;", "text", "createProcessTextIntentFromResolveInfo", PrivilegedApp.f6532i, "Landroid/content/pm/ResolveInfo;", "getParcelableExtraCompat", "T", "Landroid/os/Parcelable;", "name", "clazz", "Ljava/lang/Class;", "(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Landroid/os/Parcelable;", "getSerializableCompat", "Ljava/io/Serializable;", "Landroid/os/Bundle;", "(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class IntentUtils {

    @NotNull
    public static final String ACTION_IMPORT = "onyx.intent.action.IMPORT";

    @NotNull
    public static final IntentUtils INSTANCE = new IntentUtils();

    public static /* synthetic */ Intent createProcessTextIntent$default(IntentUtils intentUtils, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        return intentUtils.createProcessTextIntent(str);
    }

    @NotNull
    public final Intent createProcessTextIntent(@NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intent putExtra = new Intent("android.intent.action.PROCESS_TEXT").setType("text/plain").putExtra("android.intent.extra.PROCESS_TEXT", text);
        Intrinsics.checkNotNullExpressionValue(putExtra, "putExtra(...)");
        return putExtra;
    }

    @NotNull
    public final Intent createProcessTextIntentFromResolveInfo(@NotNull ResolveInfo info, @NotNull String text) {
        Intrinsics.checkNotNullParameter(info, "info");
        Intrinsics.checkNotNullParameter(text, "text");
        Intent putExtra = createProcessTextIntent$default(this, null, 1, null).putExtra("android.intent.extra.PROCESS_TEXT_READONLY", true).putExtra("android.intent.extra.PROCESS_TEXT", text);
        ActivityInfo activityInfo = info.activityInfo;
        Intent className = putExtra.setClassName(activityInfo.packageName, activityInfo.name);
        Intrinsics.checkNotNullExpressionValue(className, "setClassName(...)");
        return className;
    }

    @Nullable
    public final <T extends Parcelable> T getParcelableExtraCompat(@Nullable Intent intent, @Nullable String str, @NotNull Class<T> clazz) {
        Object parcelableExtra;
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        if (Build.VERSION.SDK_INT < 33) {
            if (intent != null) {
                return (T) intent.getParcelableExtra(str);
            }
            return null;
        }
        if (intent == null) {
            return null;
        }
        parcelableExtra = intent.getParcelableExtra(str, clazz);
        return (T) parcelableExtra;
    }

    @Nullable
    public final <T extends Serializable> T getSerializableCompat(@Nullable Bundle bundle, @Nullable String str, @NotNull Class<T> clazz) {
        Serializable serializable;
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        if (Build.VERSION.SDK_INT >= 33) {
            if (bundle == null) {
                return null;
            }
            serializable = bundle.getSerializable(str, clazz);
            return (T) serializable;
        }
        Serializable serializable2 = bundle != null ? bundle.getSerializable(str) : null;
        if (serializable2 instanceof Serializable) {
            return (T) serializable2;
        }
        return null;
    }
}
