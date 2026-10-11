package com.onyx.android.sdk.universal.editor.receiver;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.impl.utils.ForceStopRunnable;
import com.onyx.android.sdk.base.p018rx.RxFilter;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.v6l;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u0016\u0010\u0017J\u001a\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016R*\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0017\u0010\u0015\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/receiver/QuicklyFunBroadCastReceiver;", "Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;", "Landroid/content/Context;", "context", "Landroid/content/Intent;", v6l.f87196g, "", "onReceive", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "b", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "getClickFilter", "()Lcom/onyx/android/sdk/base/rx/RxFilter;", "setClickFilter", "(Lcom/onyx/android/sdk/base/rx/RxFilter;)V", "clickFilter", "Landroid/content/IntentFilter;", "c", "Landroid/content/IntentFilter;", "getIntentFilter", "()Landroid/content/IntentFilter;", "intentFilter", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SuppressLint({"RestrictedApi"})
/* loaded from: classes8.dex */
public final class QuicklyFunBroadCastReceiver extends ForceStopRunnable.BroadcastReceiver {

    @NotNull
    public static final String ACTION_ON_FINGER_CLICKED = "action_on_finger_clicked";

    @NotNull
    public static final String ACTION_ON_STYLUS_CLICK = "action_on_stylus_click";

    @NotNull
    public static final String ACTION_STYLUS_BROAD_CAST_DOUBLE_CLICK_HONOR = "com.hihonor.stylus.action.STYLUS_DOUBLE_CLICK";

    @NotNull
    public static final String ACTION_STYLUS_BROAD_CAST_DOUBLE_CLICK_OPPO = "com.oplus.ipemanager.action.PENCIL_DOUBLE_CLICK";
    public static final long FINGER_CLICK_TIMER = 50;

    @NotNull
    public static final String KEY_CODE_CLICK_KEY = "key_code_click_key";

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public RxFilter<Intent> clickFilter;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final IntentFilter intentFilter;

    public QuicklyFunBroadCastReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ACTION_ON_STYLUS_CLICK);
        intentFilter.addAction(ACTION_ON_FINGER_CLICKED);
        intentFilter.addAction(ACTION_STYLUS_BROAD_CAST_DOUBLE_CLICK_OPPO);
        intentFilter.addAction(ACTION_STYLUS_BROAD_CAST_DOUBLE_CLICK_HONOR);
        this.intentFilter = intentFilter;
    }

    @Nullable
    public final RxFilter<Intent> getClickFilter() {
        return this.clickFilter;
    }

    @NotNull
    public final IntentFilter getIntentFilter() {
        return this.intentFilter;
    }

    @Override // androidx.work.impl.utils.ForceStopRunnable.BroadcastReceiver, android.content.BroadcastReceiver
    public void onReceive(@NotNull Context context, @Nullable Intent intent) {
        RxFilter<Intent> rxFilter;
        Intrinsics.checkNotNullParameter(context, "context");
        super.onReceive(context, intent);
        if (intent == null || (rxFilter = this.clickFilter) == null || rxFilter == null) {
            return;
        }
        rxFilter.onNext(intent);
    }

    public final void setClickFilter(@Nullable RxFilter<Intent> rxFilter) {
        this.clickFilter = rxFilter;
    }
}
