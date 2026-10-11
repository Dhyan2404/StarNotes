package dagger.hilt.android.migration;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.view.View;
import androidx.activity.ComponentActivity;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import dagger.hilt.android.internal.migration.InjectedByHilt;
import dagger.hilt.internal.Preconditions;

/* loaded from: classes10.dex */
public final class OptionalInjectCheck {
    /* renamed from: a */
    public static boolean m60900a(@NonNull Object obj) {
        Preconditions.checkNotNull(obj);
        Preconditions.checkArgument(obj instanceof InjectedByHilt, "'%s' is not an optionally injected android entry point. Check that you have annotated the class with both @AndroidEntryPoint and @OptionalInject.", obj.getClass());
        return ((InjectedByHilt) obj).wasInjectedByHilt();
    }

    public static boolean wasInjectedByHilt(@NonNull ComponentActivity activity) {
        return m60900a(activity);
    }

    public static boolean wasInjectedByHilt(@NonNull BroadcastReceiver broadcastReceiver) {
        return m60900a(broadcastReceiver);
    }

    public static boolean wasInjectedByHilt(@NonNull Fragment fragment) {
        return m60900a(fragment);
    }

    public static boolean wasInjectedByHilt(@NonNull Service service) {
        return m60900a(service);
    }

    public static boolean wasInjectedByHilt(@NonNull View view) {
        return m60900a(view);
    }
}
