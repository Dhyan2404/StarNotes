package androidx.profileinstaller;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.profileinstaller.ProfileInstaller;
import com.sunia.HTREnginev2.vtd;

/* loaded from: classes3.dex */
public class ProfileInstallReceiver extends BroadcastReceiver {

    @NonNull
    public static final String ACTION_BENCHMARK_OPERATION = "androidx.profileinstaller.action.BENCHMARK_OPERATION";

    @NonNull
    public static final String ACTION_INSTALL_PROFILE = "androidx.profileinstaller.action.INSTALL_PROFILE";

    @NonNull
    public static final String ACTION_SAVE_PROFILE = "androidx.profileinstaller.action.SAVE_PROFILE";

    @NonNull
    public static final String ACTION_SKIP_FILE = "androidx.profileinstaller.action.SKIP_FILE";

    /* renamed from: a */
    @NonNull
    public static final String f9112a = "EXTRA_SKIP_FILE_OPERATION";

    /* renamed from: b */
    @NonNull
    public static final String f9113b = "WRITE_SKIP_FILE";

    /* renamed from: c */
    @NonNull
    public static final String f9114c = "DELETE_SKIP_FILE";

    /* renamed from: d */
    @NonNull
    public static final String f9115d = "EXTRA_BENCHMARK_OPERATION";

    /* renamed from: e */
    @NonNull
    public static final String f9116e = "DROP_SHADER_CACHE";

    /* renamed from: androidx.profileinstaller.ProfileInstallReceiver$a */
    /* loaded from: classes3.dex */
    public class C1297a implements ProfileInstaller.DiagnosticsCallback {
        public C1297a() {
        }

        @Override // androidx.profileinstaller.ProfileInstaller.DiagnosticsCallback
        public void onDiagnosticReceived(int i, @Nullable Object obj) {
            ProfileInstaller.f9125h.onDiagnosticReceived(i, obj);
        }

        @Override // androidx.profileinstaller.ProfileInstaller.DiagnosticsCallback
        public void onResultReceived(int i, @Nullable Object obj) {
            ProfileInstaller.f9125h.onResultReceived(i, obj);
            ProfileInstallReceiver.this.setResultCode(i);
        }
    }

    /* renamed from: a */
    public static void m5418a(@NonNull ProfileInstaller.DiagnosticsCallback diagnosticsCallback) {
        Process.sendSignal(Process.myPid(), 10);
        diagnosticsCallback.onResultReceived(12, null);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(@NonNull Context context, @Nullable Intent intent) {
        Bundle extras;
        if (intent == null) {
            return;
        }
        String action = intent.getAction();
        if (ACTION_INSTALL_PROFILE.equals(action)) {
            ProfileInstaller.m5430l(context, new vtd(), new C1297a(), true);
            return;
        }
        if (ACTION_SKIP_FILE.equals(action)) {
            Bundle extras2 = intent.getExtras();
            if (extras2 != null) {
                String string = extras2.getString(f9112a);
                if (f9113b.equals(string)) {
                    ProfileInstaller.m5431m(context, new vtd(), new C1297a());
                    return;
                } else {
                    if (f9114c.equals(string)) {
                        ProfileInstaller.m5422d(context, new vtd(), new C1297a());
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (ACTION_SAVE_PROFILE.equals(action)) {
            m5418a(new C1297a());
            return;
        }
        if (!ACTION_BENCHMARK_OPERATION.equals(action) || (extras = intent.getExtras()) == null) {
            return;
        }
        String string2 = extras.getString(f9115d);
        C1297a c1297a = new C1297a();
        if (f9116e.equals(string2)) {
            C1305a.m5453b(context, c1297a);
        } else {
            c1297a.onResultReceived(16, null);
        }
    }
}
