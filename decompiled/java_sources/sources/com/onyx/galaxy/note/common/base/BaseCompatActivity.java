package com.onyx.galaxy.note.common.base;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import com.onyx.android.sdk.base.extension.Activity;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.event.FinishBeforeLogin;
import com.onyx.android.sdk.device.DeviceFactory;
import com.onyx.android.sdk.extension.ActivityExtKt;
import com.onyx.android.sdk.p039ui.IFullScreenStyle;
import com.onyx.galaxy.note.account.p043ui.LoginActivity;
import com.onyx.galaxy.note.account.p043ui.RecentLoginActivity;
import com.onyx.galaxy.note.common.base.BaseCompatActivity;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sagittarius.p050v6.C13086AB;
import com.sunia.HTREnginev2.v6l;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0007H\u0016J\u0012\u0010\n\u001a\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0014J\b\u0010\r\u001a\u00020\u0005H\u0014J\u0010\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0010\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0013H\u0014J\b\u0010\u0014\u001a\u00020\u0005H\u0014J\u0012\u0010\u0015\u001a\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0014J\b\u0010\u0016\u001a\u00020\u0005H\u0014J\b\u0010\u0017\u001a\u00020\u0005H\u0014J\u0006\u0010\u0018\u001a\u00020\u0005¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/base/BaseCompatActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lcom/onyx/android/sdk/ui/IFullScreenStyle;", "()V", "applyOverrideConfiguration", "", "overrideConfiguration", "Landroid/content/res/Configuration;", "onConfigurationChanged", "newConfig", "onCreate", C1126e.f7693h, "Landroid/os/Bundle;", "onDestroy", "onFinishBeforeLogin", NotificationCompat.CATEGORY_EVENT, "Lcom/onyx/android/sdk/data/account/event/FinishBeforeLogin;", "onNewIntent", v6l.f87196g, "Landroid/content/Intent;", "onPause", "onPostCreate", "onResume", "onStart", "setHighFrameRate", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes17.dex */
public class BaseCompatActivity extends AppCompatActivity implements IFullScreenStyle {
    /* renamed from: D */
    public static final void m44984D(BaseCompatActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ActivityExtKt.setFullScreenStyle(this$0, NoteConfigManager.INSTANCE.getStatusBarHideOption().get());
    }

    @Override // android.view.ContextThemeWrapper
    public void applyOverrideConfiguration(@Nullable Configuration overrideConfiguration) {
        super.applyOverrideConfiguration(Activity.INSTANCE.updateOverrideConfigurationLocale(this, overrideConfiguration));
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        ResManager.INSTANCE.installUiContext(this);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063337, this, savedInstanceState);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        AccountDataBundle.INSTANCE.getEventBusHolder().unRegister(this);
        super.onDestroy();
        ResManager resManager = ResManager.INSTANCE;
        if (Intrinsics.areEqual(resManager.getUiContext(), this)) {
            resManager.uninstallUiContext();
        }
        Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "onDestroy", new Object[0]);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onFinishBeforeLogin(@NotNull FinishBeforeLogin event) {
        List listOf;
        Intrinsics.checkNotNullParameter(event, "event");
        String name = getClass().getName();
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{LoginActivity.class.getName(), RecentLoginActivity.class.getName()});
        if (listOf.contains(name)) {
            return;
        }
        finish();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onNewIntent(@NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        super.onNewIntent(intent);
        Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "onNewIntent", new Object[0]);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "onPause", new Object[0]);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public void onPostCreate(@Nullable Bundle savedInstanceState) {
        super.onPostCreate(savedInstanceState);
        Activity.INSTANCE.keepScreenOn(this, NoteConfigManager.INSTANCE.getScreenOnOption().get());
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "onResume", new Object[0]);
        getWindow().getDecorView().post(new Runnable() { // from class: com.sunia.HTREnginev2.ym
            @Override // java.lang.Runnable
            public final void run() {
                BaseCompatActivity.m44984D(BaseCompatActivity.this);
            }
        });
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "onStart", new Object[0]);
    }

    public final void setHighFrameRate() {
        DeviceFactory.INSTANCE.getDevice().setHighRefresh(this);
    }
}
