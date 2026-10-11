package com.onyx.galaxy.note.common.view;

import android.app.Dialog;
import android.os.Bundle;
import android.view.Window;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.DialogFragment;
import com.onyx.android.sdk.theme.utils.SystemThemeChangedEvent;
import com.onyx.android.sdk.theme.utils.ThemeBundle;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.universal.common.events.ThemeChangedEvent;
import com.sagittarius.p050v6.C13086AB;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\fH\u0007¨\u0006\r"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/view/BaseThemeDialogFragment;", "Landroidx/fragment/app/DialogFragment;", "()V", "onCreate", "", C1126e.f7693h, "Landroid/os/Bundle;", "onDestroy", "onSystemThemeChangedEvent", NotificationCompat.CATEGORY_EVENT, "Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;", "onThemeChangedEvent", "Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes17.dex */
public abstract class BaseThemeDialogFragment extends DialogFragment {
    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063293, this, savedInstanceState);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        ThemeBundle.INSTANCE.unRegister(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSystemThemeChangedEvent(@NotNull SystemThemeChangedEvent event) {
        Window window;
        Intrinsics.checkNotNullParameter(event, "event");
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        ThemeUtils.refreshView(window.getDecorView());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onThemeChangedEvent(@NotNull ThemeChangedEvent event) {
        Window window;
        Intrinsics.checkNotNullParameter(event, "event");
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        ThemeUtils.refreshView(window.getDecorView());
    }
}
