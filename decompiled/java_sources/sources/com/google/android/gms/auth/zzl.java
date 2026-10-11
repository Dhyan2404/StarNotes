package com.google.android.gms.auth;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.common.BlockingServiceConnection;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesIncorrectManifestValueException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.internal.auth.zzbw;
import com.google.android.gms.internal.auth.zzby;
import com.google.android.gms.internal.auth.zzdc;
import com.google.android.gms.internal.auth.zzh;
import com.google.android.gms.internal.auth.zzhs;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.samsung.android.sdk.penremote.SpenRemote;
import com.sunia.HTREnginev2.glp;
import com.sunia.HTREnginev2.jnp;
import com.sunia.HTREnginev2.wlp;
import com.sunia.HTREnginev2.ymp;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;

@ShowFirstParty
/* loaded from: classes5.dex */
public class zzl {
    public static final int CHANGE_TYPE_ACCOUNT_ADDED = 1;
    public static final int CHANGE_TYPE_ACCOUNT_REMOVED = 2;
    public static final int CHANGE_TYPE_ACCOUNT_RENAMED_FROM = 3;
    public static final int CHANGE_TYPE_ACCOUNT_RENAMED_TO = 4;
    public static final String GOOGLE_ACCOUNT_TYPE = "com.google";
    public static final String KEY_SUPPRESS_PROGRESS_SCREEN = "suppressProgressScreen";

    @ShowFirstParty
    public static final String WORK_ACCOUNT_TYPE = "com.google.work";

    @ShowFirstParty
    public static final String[] zza = {"com.google", "com.google.work", "cn.google"};

    @ShowFirstParty
    @SuppressLint({"InlinedApi"})
    public static final String zzb = "androidPackageName";

    /* renamed from: a */
    public static final ComponentName f28981a = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");

    /* renamed from: b */
    public static final Logger f28982b = zzd.zza("GoogleAuthUtil");

    /* renamed from: a */
    public static /* synthetic */ TokenData m21905a(Account account, String str, Bundle bundle, IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
        Bundle zze = com.google.android.gms.internal.auth.zze.zzb(iBinder).zze(account, str, bundle);
        if (zze != null) {
            return m21909e(zze);
        }
        throw new IOException("Service call returned null");
    }

    /* renamed from: c */
    public static /* bridge */ /* synthetic */ Object m21907c(Object obj) {
        m21912h(obj);
        return obj;
    }

    public static void clearToken(Context context, String str) throws GoogleAuthException, IOException {
        zze(context, str, 0L);
    }

    /* renamed from: d */
    public static void m21908d(Intent intent) {
        if (intent == null) {
            throw new IllegalArgumentException("Callback cannot be null.");
        }
        try {
            Intent.parseUri(intent.toUri(1), 1);
        } catch (URISyntaxException unused) {
            throw new IllegalArgumentException("Parameter callback contains invalid data. It must be serializable using toUri() and parseUri().");
        }
    }

    /* renamed from: e */
    public static TokenData m21909e(Bundle bundle) throws GoogleAuthException, IOException {
        TokenData tokenData;
        Parcelable.Creator<TokenData> creator = TokenData.CREATOR;
        ClassLoader classLoader = TokenData.class.getClassLoader();
        if (classLoader != null) {
            bundle.setClassLoader(classLoader);
        }
        Bundle bundle2 = bundle.getBundle("tokenDetails");
        if (bundle2 == null) {
            tokenData = null;
        } else {
            if (classLoader != null) {
                bundle2.setClassLoader(classLoader);
            }
            tokenData = (TokenData) bundle2.getParcelable("TokenData");
        }
        if (tokenData != null) {
            return tokenData;
        }
        String string = bundle.getString("Error");
        Preconditions.checkNotNull(string);
        Intent intent = (Intent) bundle.getParcelable("userRecoveryIntent");
        zzby zza2 = zzby.zza(string);
        if (zzby.zzb(zza2)) {
            f28982b.m22195w("isUserRecoverableError status: ".concat(String.valueOf(zza2)), new Object[0]);
            throw new UserRecoverableAuthException(string, intent);
        }
        if (zzby.NETWORK_ERROR.equals(zza2) || zzby.SERVICE_UNAVAILABLE.equals(zza2) || zzby.INTNERNAL_ERROR.equals(zza2) || zzby.AUTH_SECURITY_ERROR.equals(zza2) || zzby.ACCOUNT_NOT_PRESENT.equals(zza2)) {
            throw new IOException(string);
        }
        throw new GoogleAuthException(string);
    }

    /* renamed from: f */
    public static Object m21910f(Context context, ComponentName componentName, jnp jnpVar, long j) throws IOException, GoogleAuthException {
        BlockingServiceConnection blockingServiceConnection = new BlockingServiceConnection();
        GmsClientSupervisor gmsClientSupervisor = GmsClientSupervisor.getInstance(context);
        try {
            if (!gmsClientSupervisor.bindService(componentName, blockingServiceConnection, "GoogleAuthUtil")) {
                throw new IOException("Could not bind to service.");
            }
            try {
                try {
                    return jnpVar.zza(blockingServiceConnection.getService());
                } catch (RemoteException | InterruptedException | TimeoutException e) {
                    Log.i("GoogleAuthUtil", "Error on service connection.", e);
                    throw new IOException("Error on service connection.", e);
                }
            } finally {
                gmsClientSupervisor.unbindService(componentName, blockingServiceConnection, "GoogleAuthUtil");
            }
        } catch (SecurityException e2) {
            Log.w("GoogleAuthUtil", String.format("SecurityException while bind to auth service: %s", e2.getMessage()));
            throw new IOException("SecurityException while binding to Auth service.", e2);
        }
    }

    /* renamed from: g */
    public static Object m21911g(Task task, String str) throws IOException, ApiException {
        try {
            return Tasks.await(task);
        } catch (InterruptedException e) {
            String format = String.format("Interrupted while waiting for the task of %s to finish.", str);
            f28982b.m22195w(format, new Object[0]);
            throw new IOException(format, e);
        } catch (CancellationException e2) {
            String format2 = String.format("Canceled while waiting for the task of %s to finish.", str);
            f28982b.m22195w(format2, new Object[0]);
            throw new IOException(format2, e2);
        } catch (ExecutionException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof ApiException) {
                throw ((ApiException) cause);
            }
            String format3 = String.format("Unable to get a result for %s due to ExecutionException.", str);
            f28982b.m22195w(format3, new Object[0]);
            throw new IOException(format3, e3);
        }
    }

    public static List<AccountChangeEvent> getAccountChangeEvents(Context context, int i, String str) throws GoogleAuthException, IOException {
        Preconditions.checkNotEmpty(str, "accountName must be provided");
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        m21913i(context, 8400000);
        AccountChangeEventsRequest accountChangeEventsRequest = new AccountChangeEventsRequest();
        accountChangeEventsRequest.setAccountName(str);
        accountChangeEventsRequest.setEventIndex(i);
        zzdc.zze(context);
        if (zzhs.zzd() && m21917m(context)) {
            try {
                AccountChangeEventsResponse accountChangeEventsResponse = (AccountChangeEventsResponse) m21911g(zzh.zza(context).zzb(accountChangeEventsRequest), "account change events retrieval");
                m21912h(accountChangeEventsResponse);
                return accountChangeEventsResponse.getEvents();
            } catch (ApiException e) {
                m21914j(e, "account change events retrieval");
            }
        }
        return (List) m21910f(context, f28981a, new wlp(accountChangeEventsRequest), 0L);
    }

    public static String getAccountId(Context context, String str) throws GoogleAuthException, IOException {
        Preconditions.checkNotEmpty(str, "accountName must be provided");
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        m21913i(context, 8400000);
        return getToken(context, str, "^^_account_id_^^", new Bundle());
    }

    public static String getToken(Context context, Account account, String str) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return getToken(context, account, str, new Bundle());
    }

    /* renamed from: h */
    public static Object m21912h(Object obj) throws IOException {
        if (obj != null) {
            return obj;
        }
        f28982b.m22195w("Service call returned null.", new Object[0]);
        throw new IOException("Service unavailable.");
    }

    /* renamed from: i */
    public static void m21913i(Context context, int i) throws GoogleAuthException {
        try {
            GooglePlayServicesUtilLight.ensurePlayServicesAvailable(context.getApplicationContext(), i);
        } catch (GooglePlayServicesIncorrectManifestValueException | GooglePlayServicesNotAvailableException e) {
            throw new GoogleAuthException(e.getMessage(), e);
        } catch (GooglePlayServicesRepairableException e2) {
            throw new GooglePlayServicesAvailabilityException(e2.getConnectionStatusCode(), e2.getMessage(), e2.getIntent());
        }
    }

    @RequiresPermission("android.permission.MANAGE_ACCOUNTS")
    @Deprecated
    public static void invalidateToken(Context context, String str) {
        AccountManager.get(context).invalidateAuthToken("com.google", str);
    }

    /* renamed from: j */
    public static void m21914j(ApiException apiException, String str) {
        f28982b.m22195w("%s failed via GoogleAuthServiceClient, falling back to previous approach:\n%s", str, Log.getStackTraceString(apiException));
    }

    /* renamed from: k */
    public static void m21915k(Context context, Bundle bundle) {
        String str = context.getApplicationInfo().packageName;
        bundle.putString(SpenRemote.f63314q, str);
        String str2 = zzb;
        if (TextUtils.isEmpty(bundle.getString(str2))) {
            bundle.putString(str2, str);
        }
        bundle.putLong("service_connection_start_time_millis", SystemClock.elapsedRealtime());
    }

    /* renamed from: l */
    public static void m21916l(Account account) {
        if (account == null) {
            throw new IllegalArgumentException("Account cannot be null");
        }
        if (TextUtils.isEmpty(account.name)) {
            throw new IllegalArgumentException("Account name cannot be empty!");
        }
        String[] strArr = zza;
        for (int i = 0; i < 3; i++) {
            if (strArr[i].equals(account.type)) {
                return;
            }
        }
        throw new IllegalArgumentException("Account type not supported");
    }

    /* renamed from: m */
    public static boolean m21917m(Context context) {
        if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(context, 17895000) != 0) {
            return false;
        }
        List zzl = zzhs.zzb().zzl();
        String str = context.getApplicationInfo().packageName;
        Iterator it2 = zzl.iterator();
        while (it2.hasNext()) {
            if (((String) it2.next()).equals(str)) {
                return false;
            }
        }
        return true;
    }

    @ShowFirstParty
    @TargetApi(23)
    public static Bundle removeAccount(Context context, final Account account) throws GoogleAuthException, IOException {
        Preconditions.checkNotNull(context);
        m21916l(account);
        m21913i(context, 8400000);
        zzdc.zze(context);
        if (zzhs.zze() && m21917m(context)) {
            try {
                Bundle bundle = (Bundle) m21911g(zzh.zza(context).zzd(account), "account removal");
                m21912h(bundle);
                return bundle;
            } catch (ApiException e) {
                m21914j(e, "account removal");
            }
        }
        return (Bundle) m21910f(context, f28981a, new jnp() { // from class: com.google.android.gms.auth.zzg
            @Override // com.sunia.HTREnginev2.jnp
            public final Object zza(IBinder iBinder) {
                Bundle zzf = com.google.android.gms.internal.auth.zze.zzb(iBinder).zzf(account);
                if (zzf != null) {
                    return zzf;
                }
                throw new IOException("Service call returned null.");
            }
        }, 0L);
    }

    @TargetApi(26)
    public static Boolean requestGoogleAccountsAccess(Context context) throws GoogleAuthException, IOException {
        Preconditions.checkNotNull(context);
        m21913i(context, 11400000);
        String str = context.getApplicationInfo().packageName;
        zzdc.zze(context);
        if (zzhs.zze() && m21917m(context)) {
            try {
                Bundle bundle = (Bundle) m21911g(zzh.zza(context).zze(str), "google accounts access request");
                String string = bundle.getString("Error");
                Intent intent = (Intent) bundle.getParcelable("userRecoveryIntent");
                zzby zza2 = zzby.zza(string);
                if (zzby.SUCCESS.equals(zza2)) {
                    return Boolean.TRUE;
                }
                if (!zzby.zzb(zza2)) {
                    throw new GoogleAuthException(string);
                }
                f28982b.m22195w("isUserRecoverableError status: " + String.valueOf(zza2), new Object[0]);
                throw new UserRecoverableAuthException(string, intent);
            } catch (ApiException e) {
                m21914j(e, "google accounts access request");
            }
        }
        return (Boolean) m21910f(context, f28981a, new ymp(str), 0L);
    }

    public static TokenData zza(Context context, final Account account, final String str, Bundle bundle) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        Preconditions.checkNotEmpty(str, "Scope cannot be empty or null.");
        m21916l(account);
        m21913i(context, 8400000);
        final Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        m21915k(context, bundle2);
        zzdc.zze(context);
        if (zzhs.zze() && m21917m(context)) {
            try {
                Bundle bundle3 = (Bundle) m21911g(zzh.zza(context).zzc(account, str, bundle2), "token retrieval");
                m21912h(bundle3);
                return m21909e(bundle3);
            } catch (ApiException e) {
                m21914j(e, "token retrieval");
            }
        }
        return (TokenData) m21910f(context, f28981a, new jnp() { // from class: com.google.android.gms.auth.zzf
            @Override // com.sunia.HTREnginev2.jnp
            public final Object zza(IBinder iBinder) {
                return zzl.m21905a(account, str, bundle2, iBinder);
            }
        }, 0L);
    }

    @ShowFirstParty
    public static void zze(Context context, String str, long j) throws GoogleAuthException, IOException {
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        m21913i(context, 8400000);
        Bundle bundle = new Bundle();
        m21915k(context, bundle);
        zzdc.zze(context);
        if (zzhs.zze() && m21917m(context)) {
            com.google.android.gms.internal.auth.zzg zza2 = zzh.zza(context);
            zzbw zzbwVar = new zzbw();
            zzbwVar.zza(str);
            try {
                m21911g(zza2.zza(zzbwVar), "clear token");
                return;
            } catch (ApiException e) {
                m21914j(e, "clear token");
            }
        }
        m21910f(context, f28981a, new glp(str, bundle), 0L);
    }

    public static String getToken(Context context, Account account, String str, Bundle bundle) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        m21916l(account);
        return zza(context, account, str, bundle).zza();
    }

    @Deprecated
    public static String getToken(Context context, String str, String str2) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return getToken(context, new Account(str, "com.google"), str2);
    }

    @Deprecated
    public static String getToken(Context context, String str, String str2, Bundle bundle) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return getToken(context, new Account(str, "com.google"), str2, bundle);
    }
}
