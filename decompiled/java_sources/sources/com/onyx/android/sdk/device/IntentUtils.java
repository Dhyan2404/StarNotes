package com.onyx.android.sdk.device;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/device/IntentUtils;", "", "", "text", "Landroid/content/Intent;", "createProcessTextIntent", "Landroid/content/pm/ResolveInfo;", PrivilegedApp.f6532i, "createProcessTextIntentFromResolveInfo", "a", Constants.STRING_SIG, "TEXT_PREFIX", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-device_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class IntentUtils {

    @NotNull
    public static final IntentUtils INSTANCE = new IntentUtils();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String TEXT_PREFIX = "text/plain";

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
}
