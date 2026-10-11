package androidx.browser.trusted;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.browser.customtabs.CustomTabColorSchemeParams;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.browser.customtabs.CustomTabsSession;
import androidx.browser.customtabs.TrustedWebUtils;
import androidx.browser.trusted.TrustedWebActivityDisplayMode;
import androidx.browser.trusted.sharing.ShareData;
import androidx.browser.trusted.sharing.ShareTarget;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public class TrustedWebActivityIntentBuilder {

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_ADDITIONAL_TRUSTED_ORIGINS = "android.support.customtabs.extra.ADDITIONAL_TRUSTED_ORIGINS";
    public static final String EXTRA_DISPLAY_MODE = "androidx.browser.trusted.extra.DISPLAY_MODE";
    public static final String EXTRA_SCREEN_ORIENTATION = "androidx.browser.trusted.extra.SCREEN_ORIENTATION";
    public static final String EXTRA_SHARE_DATA = "androidx.browser.trusted.extra.SHARE_DATA";
    public static final String EXTRA_SHARE_TARGET = "androidx.browser.trusted.extra.SHARE_TARGET";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SPLASH_SCREEN_PARAMS = "androidx.browser.trusted.EXTRA_SPLASH_SCREEN_PARAMS";

    /* renamed from: a */
    @NonNull
    public final Uri f2435a;

    /* renamed from: c */
    @Nullable
    public List<String> f2437c;

    /* renamed from: d */
    @Nullable
    public Bundle f2438d;

    /* renamed from: e */
    @Nullable
    public ShareData f2439e;

    /* renamed from: f */
    @Nullable
    public ShareTarget f2440f;

    /* renamed from: b */
    @NonNull
    public final CustomTabsIntent.Builder f2436b = new CustomTabsIntent.Builder();

    /* renamed from: g */
    @NonNull
    public TrustedWebActivityDisplayMode f2441g = new TrustedWebActivityDisplayMode.DefaultMode();

    /* renamed from: h */
    public int f2442h = 0;

    public TrustedWebActivityIntentBuilder(@NonNull Uri uri) {
        this.f2435a = uri;
    }

    @NonNull
    public TrustedWebActivityIntent build(@NonNull CustomTabsSession customTabsSession) {
        if (customTabsSession == null) {
            throw new NullPointerException("CustomTabsSession is required for launching a TWA");
        }
        this.f2436b.setSession(customTabsSession);
        Intent intent = this.f2436b.build().intent;
        intent.setData(this.f2435a);
        intent.putExtra(TrustedWebUtils.EXTRA_LAUNCH_AS_TRUSTED_WEB_ACTIVITY, true);
        if (this.f2437c != null) {
            intent.putExtra(EXTRA_ADDITIONAL_TRUSTED_ORIGINS, new ArrayList(this.f2437c));
        }
        Bundle bundle = this.f2438d;
        if (bundle != null) {
            intent.putExtra(EXTRA_SPLASH_SCREEN_PARAMS, bundle);
        }
        List<Uri> emptyList = Collections.emptyList();
        ShareTarget shareTarget = this.f2440f;
        if (shareTarget != null && this.f2439e != null) {
            intent.putExtra(EXTRA_SHARE_TARGET, shareTarget.toBundle());
            intent.putExtra(EXTRA_SHARE_DATA, this.f2439e.toBundle());
            List<Uri> list = this.f2439e.uris;
            if (list != null) {
                emptyList = list;
            }
        }
        intent.putExtra(EXTRA_DISPLAY_MODE, this.f2441g.toBundle());
        intent.putExtra(EXTRA_SCREEN_ORIENTATION, this.f2442h);
        return new TrustedWebActivityIntent(intent, emptyList);
    }

    @NonNull
    public CustomTabsIntent buildCustomTabsIntent() {
        return this.f2436b.build();
    }

    @NonNull
    public TrustedWebActivityDisplayMode getDisplayMode() {
        return this.f2441g;
    }

    @NonNull
    public Uri getUri() {
        return this.f2435a;
    }

    @NonNull
    public TrustedWebActivityIntentBuilder setAdditionalTrustedOrigins(@NonNull List<String> list) {
        this.f2437c = list;
        return this;
    }

    @NonNull
    public TrustedWebActivityIntentBuilder setColorScheme(int i) {
        this.f2436b.setColorScheme(i);
        return this;
    }

    @NonNull
    public TrustedWebActivityIntentBuilder setColorSchemeParams(int i, @NonNull CustomTabColorSchemeParams customTabColorSchemeParams) {
        this.f2436b.setColorSchemeParams(i, customTabColorSchemeParams);
        return this;
    }

    @NonNull
    public TrustedWebActivityIntentBuilder setDefaultColorSchemeParams(@NonNull CustomTabColorSchemeParams customTabColorSchemeParams) {
        this.f2436b.setDefaultColorSchemeParams(customTabColorSchemeParams);
        return this;
    }

    @NonNull
    public TrustedWebActivityIntentBuilder setDisplayMode(@NonNull TrustedWebActivityDisplayMode trustedWebActivityDisplayMode) {
        this.f2441g = trustedWebActivityDisplayMode;
        return this;
    }

    @NonNull
    public TrustedWebActivityIntentBuilder setNavigationBarColor(@ColorInt int i) {
        this.f2436b.setNavigationBarColor(i);
        return this;
    }

    @NonNull
    public TrustedWebActivityIntentBuilder setNavigationBarDividerColor(@ColorInt int i) {
        this.f2436b.setNavigationBarDividerColor(i);
        return this;
    }

    @NonNull
    public TrustedWebActivityIntentBuilder setScreenOrientation(int i) {
        this.f2442h = i;
        return this;
    }

    @NonNull
    public TrustedWebActivityIntentBuilder setShareParams(@NonNull ShareTarget shareTarget, @NonNull ShareData shareData) {
        this.f2440f = shareTarget;
        this.f2439e = shareData;
        return this;
    }

    @NonNull
    public TrustedWebActivityIntentBuilder setSplashScreenParams(@NonNull Bundle bundle) {
        this.f2438d = bundle;
        return this;
    }

    @NonNull
    public TrustedWebActivityIntentBuilder setToolbarColor(@ColorInt int i) {
        this.f2436b.setToolbarColor(i);
        return this;
    }
}
