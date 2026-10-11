package com.onyx.android.sdk.universal.editor.helper;

import android.app.Activity;
import androidx.appcompat.widget.ActivityChooserModel;
import com.onyx.android.sdk.base.utils.Debug;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u000f\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0004R\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u0012\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;", "", "Landroid/app/Activity;", ActivityChooserModel.f1429r, "", "attachActivity", "detachActivity", "", "a", Constants.STRING_SIG, "getActivityName", "()Ljava/lang/String;", "setActivityName", "(Ljava/lang/String;)V", "activityName", "", "b", Constants.HASIDCALL_INDEX_SIG, "isActivityVisible", Constants.BOOLEAN_VALUE_SIG, "setActivityVisible", "(Z)V", "c", "Landroid/app/Activity;", "getActivity", "()Landroid/app/Activity;", "setActivity", "(Landroid/app/Activity;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ActivityHelper {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String activityName = "";

    /* renamed from: b, reason: from kotlin metadata */
    public boolean isActivityVisible;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public Activity activity;

    public final void attachActivity(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.activity = activity;
        String name = activity.getClass().getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        this.activityName = name;
        Debug.INSTANCE.m32035d(ActivityHelper.class, "attachActivity", new Object[0]);
    }

    public final void detachActivity() {
        this.activity = null;
        Debug.INSTANCE.m32035d(ActivityHelper.class, "detachActivity", new Object[0]);
    }

    @Nullable
    public final Activity getActivity() {
        return this.activity;
    }

    @NotNull
    public final String getActivityName() {
        return this.activityName;
    }

    /* renamed from: isActivityVisible, reason: from getter */
    public final boolean getIsActivityVisible() {
        return this.isActivityVisible;
    }

    public final void setActivity(@Nullable Activity activity) {
        this.activity = activity;
    }

    public final void setActivityName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.activityName = str;
    }

    public final void setActivityVisible(boolean z) {
        this.isActivityVisible = z;
    }
}
