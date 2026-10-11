package com.onyx.galaxy.note.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.blankj.utilcode.util.AppUtils;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.data.common.data.SyncStateOptions;
import com.sunia.HTREnginev2.v6l;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/receiver/SystemLanguageReceiver;", "Landroid/content/BroadcastReceiver;", "()V", "onReceive", "", "context", "Landroid/content/Context;", v6l.f87196g, "Landroid/content/Intent;", "register", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class SystemLanguageReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(@NotNull Context context, @NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        SyncStateOptions.INSTANCE.reset();
        AppUtils.relaunchApp();
    }

    public final void register(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        ContextKt.registerReceiverCompat(context, this, new IntentFilter("android.intent.action.LOCALE_CHANGED"));
    }
}
