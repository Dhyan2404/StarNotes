package androidx.biometric.auth;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;

/* loaded from: classes3.dex */
public class AuthPromptHost {

    /* renamed from: a */
    @Nullable
    public FragmentActivity f2287a;

    /* renamed from: b */
    @Nullable
    public Fragment f2288b;

    public AuthPromptHost(@NonNull FragmentActivity fragmentActivity) {
        this.f2287a = fragmentActivity;
    }

    @Nullable
    public FragmentActivity getActivity() {
        return this.f2287a;
    }

    @Nullable
    public Fragment getFragment() {
        return this.f2288b;
    }

    public AuthPromptHost(@NonNull Fragment fragment) {
        this.f2288b = fragment;
    }
}
