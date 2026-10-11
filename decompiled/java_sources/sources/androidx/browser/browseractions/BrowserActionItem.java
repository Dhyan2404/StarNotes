package androidx.browser.browseractions;

import android.app.PendingIntent;
import android.net.Uri;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

@Deprecated
/* loaded from: classes3.dex */
public class BrowserActionItem {

    /* renamed from: a */
    public final String f2319a;

    /* renamed from: b */
    @Nullable
    public final PendingIntent f2320b;

    /* renamed from: c */
    @DrawableRes
    public int f2321c;

    /* renamed from: d */
    @Nullable
    public Uri f2322d;

    /* renamed from: e */
    @Nullable
    public Runnable f2323e;

    public BrowserActionItem(@NonNull String str, @NonNull PendingIntent pendingIntent, @DrawableRes int i) {
        this.f2319a = str;
        this.f2320b = pendingIntent;
        this.f2321c = i;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* renamed from: a */
    public Runnable m1226a() {
        return this.f2323e;
    }

    @NonNull
    public PendingIntent getAction() {
        PendingIntent pendingIntent = this.f2320b;
        if (pendingIntent != null) {
            return pendingIntent;
        }
        throw new IllegalStateException("Can't call getAction on BrowserActionItem with null action.");
    }

    public int getIconId() {
        return this.f2321c;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Uri getIconUri() {
        return this.f2322d;
    }

    @NonNull
    public String getTitle() {
        return this.f2319a;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public BrowserActionItem(@NonNull String str, @NonNull PendingIntent pendingIntent, @NonNull Uri uri) {
        this.f2319a = str;
        this.f2320b = pendingIntent;
        this.f2322d = uri;
    }

    public BrowserActionItem(@NonNull String str, @NonNull Runnable runnable) {
        this.f2319a = str;
        this.f2320b = null;
        this.f2323e = runnable;
    }

    public BrowserActionItem(@NonNull String str, @NonNull PendingIntent pendingIntent) {
        this(str, pendingIntent, 0);
    }
}
