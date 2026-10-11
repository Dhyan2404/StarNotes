package androidx.browser.trusted;

import android.os.Bundle;
import androidx.annotation.NonNull;

/* loaded from: classes3.dex */
public interface TrustedWebActivityDisplayMode {
    public static final String KEY_ID = "androidx.browser.trusted.displaymode.KEY_ID";

    /* loaded from: classes3.dex */
    public static class DefaultMode implements TrustedWebActivityDisplayMode {

        /* renamed from: a */
        public static final int f2429a = 0;

        @Override // androidx.browser.trusted.TrustedWebActivityDisplayMode
        @NonNull
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putInt(TrustedWebActivityDisplayMode.KEY_ID, 0);
            return bundle;
        }
    }

    /* loaded from: classes3.dex */
    public static class ImmersiveMode implements TrustedWebActivityDisplayMode {
        public static final String KEY_CUTOUT_MODE = "androidx.browser.trusted.displaymode.KEY_CUTOUT_MODE";
        public static final String KEY_STICKY = "androidx.browser.trusted.displaymode.KEY_STICKY";

        /* renamed from: c */
        public static final int f2430c = 1;

        /* renamed from: a */
        public final boolean f2431a;

        /* renamed from: b */
        public final int f2432b;

        public ImmersiveMode(boolean z, int i) {
            this.f2431a = z;
            this.f2432b = i;
        }

        @NonNull
        public static TrustedWebActivityDisplayMode fromBundle(@NonNull Bundle bundle) {
            return new ImmersiveMode(bundle.getBoolean(KEY_STICKY), bundle.getInt(KEY_CUTOUT_MODE));
        }

        public boolean isSticky() {
            return this.f2431a;
        }

        public int layoutInDisplayCutoutMode() {
            return this.f2432b;
        }

        @Override // androidx.browser.trusted.TrustedWebActivityDisplayMode
        @NonNull
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putInt(TrustedWebActivityDisplayMode.KEY_ID, 1);
            bundle.putBoolean(KEY_STICKY, this.f2431a);
            bundle.putInt(KEY_CUTOUT_MODE, this.f2432b);
            return bundle;
        }
    }

    @NonNull
    static TrustedWebActivityDisplayMode fromBundle(@NonNull Bundle bundle) {
        return bundle.getInt(KEY_ID) != 1 ? new DefaultMode() : ImmersiveMode.fromBundle(bundle);
    }

    @NonNull
    Bundle toBundle();
}
