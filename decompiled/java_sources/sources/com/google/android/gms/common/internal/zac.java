package com.google.android.gms.common.internal;

import android.R;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SimpleArrayMap;
import androidx.core.os.ConfigurationCompat;
import com.google.android.gms.base.C5050R;
import com.google.android.gms.common.C5051R;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import java.util.Locale;

/* loaded from: classes5.dex */
public final class zac {

    /* renamed from: a */
    @GuardedBy("cache")
    public static final SimpleArrayMap f29389a = new SimpleArrayMap();

    /* renamed from: b */
    @Nullable
    @GuardedBy("cache")
    public static Locale f29390b;

    /* renamed from: a */
    public static String m22182a(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String m22183b = m22183b(context, str);
        if (m22183b == null) {
            m22183b = resources.getString(C5051R.string.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, m22183b, str2);
    }

    @Nullable
    /* renamed from: b */
    public static String m22183b(Context context, String str) {
        SimpleArrayMap simpleArrayMap = f29389a;
        synchronized (simpleArrayMap) {
            Locale locale = ConfigurationCompat.getLocales(context.getResources().getConfiguration()).get(0);
            if (!locale.equals(f29390b)) {
                simpleArrayMap.clear();
                f29390b = locale;
            }
            String str2 = (String) simpleArrayMap.get(str);
            if (str2 != null) {
                return str2;
            }
            Resources remoteResource = GooglePlayServicesUtil.getRemoteResource(context);
            if (remoteResource == null) {
                return null;
            }
            int identifier = remoteResource.getIdentifier(str, "string", "com.google.android.gms");
            if (identifier == 0) {
                Log.w("GoogleApiAvailability", "Missing resource: " + str);
                return null;
            }
            String string = remoteResource.getString(identifier);
            if (!TextUtils.isEmpty(string)) {
                simpleArrayMap.put(str, string);
                return string;
            }
            Log.w("GoogleApiAvailability", "Got empty resource: " + str);
            return null;
        }
    }

    public static String zaa(Context context) {
        String packageName = context.getPackageName();
        try {
            return Wrappers.packageManager(context).getApplicationLabel(packageName).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
            String str = context.getApplicationInfo().name;
            return TextUtils.isEmpty(str) ? packageName : str;
        }
    }

    @NonNull
    public static String zab(Context context, int i) {
        Resources resources = context.getResources();
        return i != 1 ? i != 2 ? i != 3 ? resources.getString(R.string.ok) : resources.getString(C5050R.string.common_google_play_services_enable_button) : resources.getString(C5050R.string.common_google_play_services_update_button) : resources.getString(C5050R.string.common_google_play_services_install_button);
    }

    @NonNull
    public static String zac(Context context, int i) {
        Resources resources = context.getResources();
        String zaa = zaa(context);
        if (i == 1) {
            return resources.getString(C5050R.string.common_google_play_services_install_text, zaa);
        }
        if (i == 2) {
            return DeviceProperties.isWearableWithoutPlayStore(context) ? resources.getString(C5050R.string.common_google_play_services_wear_update_text) : resources.getString(C5050R.string.common_google_play_services_update_text, zaa);
        }
        if (i == 3) {
            return resources.getString(C5050R.string.common_google_play_services_enable_text, zaa);
        }
        if (i == 5) {
            return m22182a(context, "common_google_play_services_invalid_account_text", zaa);
        }
        if (i == 7) {
            return m22182a(context, "common_google_play_services_network_error_text", zaa);
        }
        if (i == 9) {
            return resources.getString(C5050R.string.common_google_play_services_unsupported_text, zaa);
        }
        if (i == 20) {
            return m22182a(context, "common_google_play_services_restricted_profile_text", zaa);
        }
        switch (i) {
            case 16:
                return m22182a(context, "common_google_play_services_api_unavailable_text", zaa);
            case 17:
                return m22182a(context, "common_google_play_services_sign_in_failed_text", zaa);
            case 18:
                return resources.getString(C5050R.string.common_google_play_services_updating_text, zaa);
            default:
                return resources.getString(C5051R.string.common_google_play_services_unknown_issue, zaa);
        }
    }

    @NonNull
    public static String zad(Context context, int i) {
        return (i == 6 || i == 19) ? m22182a(context, "common_google_play_services_resolution_required_text", zaa(context)) : zac(context, i);
    }

    @NonNull
    public static String zae(Context context, int i) {
        String m22183b = i == 6 ? m22183b(context, "common_google_play_services_resolution_required_title") : zaf(context, i);
        return m22183b == null ? context.getResources().getString(C5050R.string.common_google_play_services_notification_ticker) : m22183b;
    }

    @Nullable
    public static String zaf(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                return resources.getString(C5050R.string.common_google_play_services_install_title);
            case 2:
                return resources.getString(C5050R.string.common_google_play_services_update_title);
            case 3:
                return resources.getString(C5050R.string.common_google_play_services_enable_title);
            case 4:
            case 6:
            case 18:
                return null;
            case 5:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                return m22183b(context, "common_google_play_services_invalid_account_title");
            case 7:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                return m22183b(context, "common_google_play_services_network_error_title");
            case 8:
                Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
                return null;
            case 9:
                Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
                return null;
            case 10:
                Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
                return null;
            case 11:
                Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
                return null;
            case 12:
            case 13:
            case 14:
            case 15:
            case 19:
            default:
                Log.e("GoogleApiAvailability", "Unexpected error code " + i);
                return null;
            case 16:
                Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
                return null;
            case 17:
                Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
                return m22183b(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                return m22183b(context, "common_google_play_services_restricted_profile_title");
        }
    }
}
