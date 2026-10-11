package com.google.firebase.auth.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.browser.customtabs.CustomTabsService;
import androidx.fragment.app.FragmentActivity;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.couchbase.lite.internal.core.C4Replicator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.internal.p124firebaseauthapi.zzack;
import com.google.android.gms.internal.p124firebaseauthapi.zzacl;
import com.google.android.gms.internal.p124firebaseauthapi.zzacm;
import com.google.android.gms.internal.p124firebaseauthapi.zzacy;
import com.google.android.gms.internal.p124firebaseauthapi.zzaec;
import com.google.android.gms.internal.p124firebaseauthapi.zzb;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.appcheck.AppCheckTokenResult;
import com.google.firebase.appcheck.interop.InteropAppCheckTokenProvider;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.inject.Provider;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

/* loaded from: classes6.dex */
public class RecaptchaActivity extends FragmentActivity implements zzacm {

    /* renamed from: u0 */
    public static final String f35697u0 = "RecaptchaActivity";

    /* renamed from: v0 */
    public static long f35698v0;

    /* renamed from: w0 */
    public static final zzcb f35699w0 = zzcb.zzc();

    /* renamed from: t0 */
    public boolean f35700t0 = false;

    /* renamed from: A */
    public static /* synthetic */ Uri m27971A(Uri uri, Task task) throws Exception {
        Uri.Builder buildUpon = uri.buildUpon();
        if (task.isSuccessful()) {
            AppCheckTokenResult appCheckTokenResult = (AppCheckTokenResult) task.getResult();
            if (appCheckTokenResult.getError() != null) {
                Log.w(f35697u0, "Error getting App Check token; using placeholder token instead. Error: " + String.valueOf(appCheckTokenResult.getError()));
            }
            buildUpon.fragment("fac=" + appCheckTokenResult.getToken());
        } else {
            Log.e(f35697u0, "Unexpected error getting App Check token: " + task.getException().getMessage());
        }
        return buildUpon.build();
    }

    /* renamed from: B */
    public final void m27972B(Status status) {
        f35698v0 = 0L;
        this.f35700t0 = false;
        Intent intent = new Intent();
        zzcc.zza(intent, status);
        intent.setAction("com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT");
        m27974D(intent);
        f35699w0.zza(this);
        finish();
    }

    /* renamed from: C */
    public final /* synthetic */ void m27973C(String str, Task task) {
        boolean z = false;
        if (!(getPackageManager().resolveActivity(new Intent("android.intent.action.VIEW"), 0) != null)) {
            Log.e(f35697u0, "Device cannot resolve intent for: android.intent.action.VIEW");
            zzacl.zzb(this, str);
            return;
        }
        List<ResolveInfo> queryIntentServices = getPackageManager().queryIntentServices(new Intent(CustomTabsService.ACTION_CUSTOM_TABS_CONNECTION), 0);
        if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
            z = true;
        }
        if (z) {
            CustomTabsIntent build = new CustomTabsIntent.Builder().build();
            build.intent.addFlags(1073741824);
            build.intent.addFlags(268435456);
            build.launchUrl(this, (Uri) task.getResult());
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW", (Uri) task.getResult());
        intent.putExtra("com.android.browser.application_id", str);
        intent.addFlags(1073741824);
        intent.addFlags(268435456);
        startActivity(intent);
    }

    /* renamed from: D */
    public final boolean m27974D(Intent intent) {
        return LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
    }

    /* renamed from: E */
    public final void m27975E() {
        f35698v0 = 0L;
        this.f35700t0 = false;
        Intent intent = new Intent();
        intent.putExtra("com.google.firebase.auth.internal.EXTRA_CANCELED", true);
        intent.setAction("com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT");
        m27974D(intent);
        f35699w0.zza(this);
        finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@NonNull Bundle bundle) {
        super.onCreate(bundle);
        String action = getIntent().getAction();
        if (!"com.google.firebase.auth.internal.ACTION_SHOW_RECAPTCHA".equals(action) && !"android.intent.action.VIEW".equals(action)) {
            Log.e(f35697u0, "Could not do operation - unknown action: " + action);
            m27975E();
            return;
        }
        long currentTimeMillis = DefaultClock.getInstance().currentTimeMillis();
        if (currentTimeMillis - f35698v0 < 30000) {
            Log.e(f35697u0, "Could not start operation - already in progress");
            return;
        }
        f35698v0 = currentTimeMillis;
        if (bundle != null) {
            this.f35700t0 = bundle.getBoolean("com.google.firebase.auth.internal.KEY_ALREADY_STARTED_RECAPTCHA_FLOW");
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onNewIntent(@NonNull Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (!"android.intent.action.VIEW".equals(getIntent().getAction())) {
            if (this.f35700t0) {
                m27975E();
                return;
            }
            Intent intent = getIntent();
            String packageName = getPackageName();
            try {
                String lowerCase = Hex.bytesToStringUppercase(AndroidUtilsLight.getPackageCertificateHashBytes(this, packageName)).toLowerCase(Locale.US);
                FirebaseApp firebaseApp = FirebaseApp.getInstance(intent.getStringExtra("com.google.firebase.auth.internal.FIREBASE_APP_NAME"));
                FirebaseAuth firebaseAuth = FirebaseAuth.getInstance(firebaseApp);
                if (zzaec.zza(firebaseApp)) {
                    zza(m27976z(Uri.parse(zzaec.zza(firebaseApp.getOptions().getApiKey())).buildUpon(), getIntent(), packageName, lowerCase).build(), packageName, firebaseAuth.zzc());
                } else {
                    new zzack(packageName, lowerCase, intent, firebaseApp, this).executeOnExecutor(firebaseAuth.zze(), new Void[0]);
                }
            } catch (PackageManager.NameNotFoundException e) {
                Log.e(f35697u0, "Could not get package signature: " + packageName + " " + String.valueOf(e));
                zzacl.zzb(this, packageName);
            }
            this.f35700t0 = true;
            return;
        }
        Intent intent2 = getIntent();
        if (intent2.hasExtra("firebaseError")) {
            m27972B(zzcc.zza(intent2.getStringExtra("firebaseError")));
            return;
        }
        if (!intent2.hasExtra("link") || !intent2.hasExtra("eventId")) {
            m27975E();
            return;
        }
        String stringExtra = intent2.getStringExtra("link");
        String zzb = zzl.zza().zzb(getApplicationContext(), getPackageName(), intent2.getStringExtra("eventId"));
        if (TextUtils.isEmpty(zzb)) {
            Log.e(f35697u0, "Failed to find registration for this event - failing to prevent session injection.");
            m27972B(zzal.zza("Failed to find registration for this reCAPTCHA event"));
        }
        if (intent2.getBooleanExtra("encryptionEnabled", true)) {
            stringExtra = zzn.zza(getApplicationContext(), FirebaseApp.getInstance(zzb).getPersistenceKey()).zza(stringExtra);
        }
        String queryParameter = Uri.parse(stringExtra).getQueryParameter("recaptchaToken");
        f35698v0 = 0L;
        this.f35700t0 = false;
        Intent intent3 = new Intent();
        intent3.putExtra("com.google.firebase.auth.internal.RECAPTCHA_TOKEN", queryParameter);
        intent3.putExtra("com.google.firebase.auth.internal.OPERATION", "com.google.firebase.auth.internal.ACTION_SHOW_RECAPTCHA");
        intent3.setAction("com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT");
        if (m27974D(intent3)) {
            f35699w0.zza(this);
        } else {
            zzbi.zza(getApplicationContext(), queryParameter, "com.google.firebase.auth.internal.ACTION_SHOW_RECAPTCHA");
        }
        finish();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("com.google.firebase.auth.internal.KEY_ALREADY_STARTED_RECAPTCHA_FLOW", this.f35700t0);
    }

    @Nullable
    @VisibleForTesting
    /* renamed from: z */
    public final Uri.Builder m27976z(Uri.Builder builder, Intent intent, String str, String str2) {
        String stringExtra = intent.getStringExtra("com.google.firebase.auth.KEY_API_KEY");
        String uuid = UUID.randomUUID().toString();
        String stringExtra2 = intent.getStringExtra("com.google.firebase.auth.internal.CLIENT_VERSION");
        String stringExtra3 = intent.getStringExtra("com.google.firebase.auth.internal.FIREBASE_APP_NAME");
        FirebaseApp firebaseApp = FirebaseApp.getInstance(stringExtra3);
        FirebaseAuth firebaseAuth = FirebaseAuth.getInstance(firebaseApp);
        zzl.zza().zza(getApplicationContext(), str, uuid, "com.google.firebase.auth.internal.ACTION_SHOW_RECAPTCHA", stringExtra3);
        String zza = zzn.zza(getApplicationContext(), firebaseApp.getPersistenceKey()).zza();
        if (TextUtils.isEmpty(zza)) {
            Log.e(f35697u0, "Could not generate an encryption key for reCAPTCHA - cancelling flow.");
            m27972B(zzal.zza("Failed to generate/retrieve public encryption key for reCAPTCHA flow."));
            return null;
        }
        builder.appendQueryParameter("apiKey", stringExtra).appendQueryParameter("authType", "verifyApp").appendQueryParameter("apn", str).appendQueryParameter("hl", !TextUtils.isEmpty(firebaseAuth.getLanguageCode()) ? firebaseAuth.getLanguageCode() : zzacy.zza()).appendQueryParameter("eventId", uuid).appendQueryParameter("v", "X" + stringExtra2).appendQueryParameter("eid", "p").appendQueryParameter("appName", stringExtra3).appendQueryParameter("sha1Cert", str2).appendQueryParameter("publicKey", zza);
        return builder;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacm
    @NonNull
    public final Context zza() {
        return getApplicationContext();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacm
    @Nullable
    public final Uri.Builder zza(@NonNull Intent intent, @NonNull String str, @NonNull String str2) {
        return m27976z(new Uri.Builder().scheme("https").appendPath("__").appendPath(C4Replicator.REPLICATOR_OPTION_AUTHENTICATION).appendPath(Constants.TRANSLET_OUTPUT_PNAME), intent, str, str2);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacm
    @NonNull
    public final String zza(@NonNull String str) {
        return zzaec.zzb(str);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacm
    @Nullable
    public final HttpURLConnection zza(@NonNull URL url) {
        try {
            return (HttpURLConnection) zzb.zza().zza(url, "client-firebase-auth-api");
        } catch (IOException unused) {
            zzacm.zza.m22191e("Error generating connection", new Object[0]);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacm
    public final void zza(@NonNull String str, @Nullable Status status) {
        if (status == null) {
            m27975E();
        } else {
            m27972B(status);
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacm
    public final void zza(@NonNull final Uri uri, @NonNull final String str, @NonNull Provider<InteropAppCheckTokenProvider> provider) {
        Task forResult;
        InteropAppCheckTokenProvider interopAppCheckTokenProvider = provider.get();
        if (interopAppCheckTokenProvider != null) {
            forResult = interopAppCheckTokenProvider.getToken(false).continueWith(new Continuation() { // from class: com.google.firebase.auth.internal.zzbm
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task) {
                    return RecaptchaActivity.m27971A(uri, task);
                }
            });
        } else {
            forResult = Tasks.forResult(uri);
        }
        forResult.addOnCompleteListener(new OnCompleteListener() { // from class: com.google.firebase.auth.internal.zzbk
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                RecaptchaActivity.this.m27973C(str, task);
            }
        });
    }
}
