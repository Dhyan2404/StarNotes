package com.google.firebase.installations;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.installations.local.PersistedInstallationEntry;
import com.google.firebase.installations.time.Clock;
import com.google.firebase.installations.time.SystemClock;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* loaded from: classes6.dex */
public final class Utils {

    /* renamed from: b */
    public static final String f35924b = ":";

    /* renamed from: d */
    public static Utils f35926d;

    /* renamed from: a */
    public final Clock f35927a;
    public static final long AUTH_TOKEN_EXPIRATION_BUFFER_IN_SECS = TimeUnit.HOURS.toSeconds(1);

    /* renamed from: c */
    public static final Pattern f35925c = Pattern.compile("\\AA[\\w-]{38}\\z");

    public Utils(Clock clock) {
        this.f35927a = clock;
    }

    /* renamed from: a */
    public static boolean m28157a(@Nullable String str) {
        return f35925c.matcher(str).matches();
    }

    /* renamed from: b */
    public static boolean m28158b(@Nullable String str) {
        return str.contains(":");
    }

    public static Utils getInstance() {
        return getInstance(SystemClock.getInstance());
    }

    public long currentTimeInMillis() {
        return this.f35927a.currentTimeMillis();
    }

    public long currentTimeInSecs() {
        return TimeUnit.MILLISECONDS.toSeconds(currentTimeInMillis());
    }

    public long getRandomDelayForSyncPrevention() {
        return (long) (Math.random() * 1000.0d);
    }

    public boolean isAuthTokenExpired(@NonNull PersistedInstallationEntry persistedInstallationEntry) {
        return TextUtils.isEmpty(persistedInstallationEntry.getAuthToken()) || persistedInstallationEntry.getTokenCreationEpochInSecs() + persistedInstallationEntry.getExpiresInSecs() < currentTimeInSecs() + AUTH_TOKEN_EXPIRATION_BUFFER_IN_SECS;
    }

    public static Utils getInstance(Clock clock) {
        if (f35926d == null) {
            f35926d = new Utils(clock);
        }
        return f35926d;
    }
}
