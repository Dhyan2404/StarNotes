package com.dropbox.core.android;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.dropbox.core.DbxAuthFinish;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxHost;
import com.dropbox.core.DbxPKCEManager;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.DbxRequestUtil;
import com.dropbox.core.IncludeGrantedScopes;
import com.dropbox.core.TokenAccessType;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.sagittarius.p050v6.C13086AB;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import org.mortbay.jetty.HttpStatus;

/* loaded from: classes17.dex */
public class AuthActivity extends Activity {
    public static final String ACTION_AUTHENTICATE_V1 = "com.dropbox.android.AUTHENTICATE_V1";
    public static final String ACTION_AUTHENTICATE_V2 = "com.dropbox.android.AUTHENTICATE_V2";
    public static final String AUTH_PATH_CONNECT = "/connect";
    public static final int AUTH_VERSION = 1;
    public static final String EXTRA_ACCESS_SECRET = "ACCESS_SECRET";
    public static final String EXTRA_ACCESS_TOKEN = "ACCESS_TOKEN";
    public static final String EXTRA_ALREADY_AUTHED_UIDS = "ALREADY_AUTHED_UIDS";
    public static final String EXTRA_AUTH_QUERY_PARAMS = "AUTH_QUERY_PARAMS";
    public static final String EXTRA_AUTH_STATE = "AUTH_STATE";
    public static final String EXTRA_CALLING_CLASS = "CALLING_CLASS";
    public static final String EXTRA_CALLING_PACKAGE = "CALLING_PACKAGE";
    public static final String EXTRA_CONSUMER_KEY = "CONSUMER_KEY";
    public static final String EXTRA_CONSUMER_SIG = "CONSUMER_SIG";
    public static final String EXTRA_DESIRED_UID = "DESIRED_UID";
    public static final String EXTRA_EXPIRES_AT = "EXPIRES_AT";
    public static final String EXTRA_REFRESH_TOKEN = "REFRESH_TOKEN";
    public static final String EXTRA_SCOPE = "SCOPE";
    public static final String EXTRA_SESSION_ID = "SESSION_ID";
    public static final String EXTRA_UID = "UID";

    /* renamed from: J */
    public static String[] f16480J = null;

    /* renamed from: O */
    public static String f16481O = null;

    /* renamed from: Q */
    public static TokenAccessType f16482Q = null;

    /* renamed from: Z */
    public static DbxRequestConfig f16483Z = null;

    /* renamed from: k0 */
    public static DbxHost f16484k0 = null;

    /* renamed from: q0 */
    public static String f16485q0 = null;

    /* renamed from: r */
    public static final String f16486r = "com.dropbox.core.android.AuthActivity";

    /* renamed from: s */
    public static final String f16487s = "www.dropbox.com";

    /* renamed from: t */
    public static final String f16488t = "SIS_KEY_AUTH_STATE_NONCE";

    /* renamed from: t0 */
    public static IncludeGrantedScopes f16489t0 = null;

    /* renamed from: u */
    public static final String f16490u = "SIS_KEY_PKCE_CODE_VERIFIER";

    /* renamed from: x */
    public static String f16493x;

    /* renamed from: y */
    public static String f16494y;

    /* renamed from: z */
    public static String f16495z;

    /* renamed from: e */
    public String f16496e;

    /* renamed from: f */
    public String f16497f;

    /* renamed from: g */
    public String f16498g;

    /* renamed from: h */
    public String[] f16499h;

    /* renamed from: i */
    public String f16500i;

    /* renamed from: j */
    public TokenAccessType f16501j;

    /* renamed from: k */
    public DbxPKCEManager f16502k;

    /* renamed from: l */
    public DbxRequestConfig f16503l;

    /* renamed from: m */
    public DbxHost f16504m;

    /* renamed from: n */
    public String f16505n;

    /* renamed from: o */
    public IncludeGrantedScopes f16506o;

    /* renamed from: p */
    public String f16507p = null;

    /* renamed from: q */
    public boolean f16508q = false;

    /* renamed from: v */
    public static SecurityProvider f16491v = new C2261a();

    /* renamed from: w */
    public static final Object f16492w = new Object();
    public static Intent result = null;

    /* loaded from: classes4.dex */
    public interface SecurityProvider {
        SecureRandom getSecureRandom();
    }

    /* loaded from: classes4.dex */
    public enum TokenType {
        OAUTH2("oauth2:"),
        OAUTH2CODE("oauth2code:");

        private String string;

        TokenType(String str) {
            this.string = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.string;
        }
    }

    /* renamed from: com.dropbox.core.android.AuthActivity$a */
    /* loaded from: classes4.dex */
    public static class C2261a implements SecurityProvider {
        @Override // com.dropbox.core.android.AuthActivity.SecurityProvider
        public SecureRandom getSecureRandom() {
            return FixedSecureRandom.get();
        }
    }

    /* renamed from: com.dropbox.core.android.AuthActivity$b */
    /* loaded from: classes4.dex */
    public static class DialogInterfaceOnClickListenerC2262b implements DialogInterface.OnClickListener {
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    /* renamed from: com.dropbox.core.android.AuthActivity$c */
    /* loaded from: classes4.dex */
    public class RunnableC2263c implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ Intent f16509e;

        /* renamed from: f */
        public final /* synthetic */ String f16510f;

        public RunnableC2263c(Intent intent, String str) {
            this.f16509e = intent;
            this.f16510f = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Log.d(AuthActivity.f16486r, "running startActivity in handler");
            try {
                if (DbxOfficialAppConnector.m10024a(AuthActivity.this, this.f16509e) != null) {
                    AuthActivity.this.startActivity(this.f16509e);
                } else {
                    AuthActivity.this.m10022t(this.f16510f);
                }
                AuthActivity.this.f16507p = this.f16510f;
                AuthActivity.m10014p(null, null, null);
            } catch (ActivityNotFoundException e) {
                Log.e(AuthActivity.f16486r, "Could not launch intent. User may have restricted profile", e);
                AuthActivity.this.finish();
            }
        }
    }

    /* renamed from: com.dropbox.core.android.AuthActivity$d */
    /* loaded from: classes4.dex */
    public class AsyncTaskC2264d extends AsyncTask<Void, Void, DbxAuthFinish> {

        /* renamed from: a */
        public final String f16512a;

        public /* synthetic */ AsyncTaskC2264d(AuthActivity authActivity, String str, C2261a c2261a) {
            this(str);
        }

        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DbxAuthFinish doInBackground(Void... voidArr) {
            try {
                return AuthActivity.this.f16502k.makeTokenRequest(AuthActivity.this.f16503l, this.f16512a, AuthActivity.this.f16496e, null, AuthActivity.this.f16504m);
            } catch (DbxException e) {
                Log.e(AuthActivity.f16486r, "Token Request Failed: " + e.getMessage());
                return null;
            }
        }

        public AsyncTaskC2264d(String str) {
            this.f16512a = str;
        }
    }

    public static boolean checkAppBeforeAuth(Context context, String str, boolean z) {
        Intent intent = new Intent("android.intent.action.VIEW");
        String str2 = "db-" + str;
        intent.setData(Uri.parse(str2 + "://1" + AUTH_PATH_CONNECT));
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
        if (queryIntentActivities == null || queryIntentActivities.size() == 0) {
            throw new IllegalStateException("URI scheme in your app's manifest is not set up correctly. You should have a " + AuthActivity.class.getName() + " with the scheme: " + str2);
        }
        if (queryIntentActivities.size() <= 1) {
            ResolveInfo resolveInfo = queryIntentActivities.get(0);
            if (resolveInfo != null && resolveInfo.activityInfo != null && context.getPackageName().equals(resolveInfo.activityInfo.packageName)) {
                return true;
            }
            throw new IllegalStateException("There must be a " + AuthActivity.class.getName() + " within your app's package registered for your URI scheme (" + str2 + "). However, it appears that an activity in a different package is registered for that scheme instead. If you have multiple apps that all want to use the same accesstoken pair, designate one of them to do authentication and have the other apps launch it and then retrieve the token pair from it.");
        }
        if (z) {
            AlertDialog.Builder builder = new AlertDialog.Builder(context);
            builder.setTitle("Security alert");
            builder.setMessage("Another app on your phone may be trying to pose as the app you are currently using. The malicious app can't access your account, but linking to Dropbox has been disabled as a precaution. Please contact support@dropbox.com.");
            builder.setPositiveButton(HttpStatus.f114656OK, new DialogInterfaceOnClickListenerC2262b());
            builder.show();
        } else {
            Log.w(f16486r, "There are multiple apps registered for the AuthActivity URI scheme (" + str2 + ").  Another app may be trying to  impersonate this app, so authentication will be disabled.");
        }
        return false;
    }

    /* renamed from: l */
    public static Intent m10010l() {
        Intent intent = new Intent(ACTION_AUTHENTICATE_V2);
        intent.setPackage("com.dropbox.android");
        return intent;
    }

    /* renamed from: m */
    public static SecureRandom m10011m() {
        SecurityProvider m10012n = m10012n();
        return m10012n != null ? m10012n.getSecureRandom() : new SecureRandom();
    }

    public static Intent makeIntent(Context context, String str, String str2, String str3) {
        return m10013o(context, str, null, null, null, str2, str3, null, null, null, null, null);
    }

    /* renamed from: n */
    public static SecurityProvider m10012n() {
        SecurityProvider securityProvider;
        synchronized (f16492w) {
            securityProvider = f16491v;
        }
        return securityProvider;
    }

    /* renamed from: o */
    public static Intent m10013o(Context context, String str, String str2, String[] strArr, String str3, String str4, String str5, TokenAccessType tokenAccessType, DbxRequestConfig dbxRequestConfig, DbxHost dbxHost, String str6, IncludeGrantedScopes includeGrantedScopes) {
        if (str == null) {
            throw new IllegalArgumentException("'appKey' can't be null");
        }
        m10017s(str, str2, strArr, str3, str4, str5, tokenAccessType, dbxRequestConfig, dbxHost, str6, includeGrantedScopes);
        return new Intent(context, (Class<?>) AuthActivity.class);
    }

    /* renamed from: p */
    public static void m10014p(String str, String str2, String[] strArr) {
        m10015q(str, str2, strArr, null);
    }

    /* renamed from: q */
    public static void m10015q(String str, String str2, String[] strArr, String str3) {
        m10017s(str, str2, strArr, str3, null, null, null, null, null, null, null);
    }

    /* renamed from: r */
    public static void m10016r(String str, String str2, String[] strArr, String str3, String str4) {
        m10017s(str, str2, strArr, null, null, null, null, null, null, null, null);
    }

    /* renamed from: s */
    public static void m10017s(String str, String str2, String[] strArr, String str3, String str4, String str5, TokenAccessType tokenAccessType, DbxRequestConfig dbxRequestConfig, DbxHost dbxHost, String str6, IncludeGrantedScopes includeGrantedScopes) {
        f16493x = str;
        f16495z = str2;
        if (strArr == null) {
            strArr = new String[0];
        }
        f16480J = strArr;
        f16481O = str3;
        f16494y = str5;
        f16482Q = tokenAccessType;
        f16483Z = dbxRequestConfig;
        if (dbxHost != null) {
            f16484k0 = dbxHost;
        } else if (str4 != null) {
            DbxHost dbxHost2 = DbxHost.DEFAULT;
            f16484k0 = new DbxHost(dbxHost2.getApi(), dbxHost2.getContent(), str4, dbxHost2.getNotify());
        } else {
            f16484k0 = DbxHost.DEFAULT;
        }
        f16485q0 = str6;
        f16489t0 = includeGrantedScopes;
    }

    public static void setSecurityProvider(SecurityProvider securityProvider) {
        synchronized (f16492w) {
            f16491v = securityProvider;
        }
    }

    /* renamed from: h */
    public final void m10018h(Intent intent) {
        result = intent;
        this.f16507p = null;
        m10014p(null, null, null);
        finish();
    }

    /* renamed from: i */
    public final String m10019i() {
        if (this.f16501j == null) {
            throw new IllegalStateException("Extra Query Param should only be used in short live token flow.");
        }
        Locale locale = Locale.US;
        String format = String.format(locale, "%s=%s&%s=%s&%s=%s&%s=%s", "code_challenge", this.f16502k.getCodeChallenge(), "code_challenge_method", DbxPKCEManager.CODE_CHALLENGE_METHODS, "token_access_type", this.f16501j.toString(), "response_type", "code");
        if (this.f16505n != null) {
            format = format + String.format(locale, "&%s=%s", "scope", this.f16505n);
        }
        if (this.f16506o == null) {
            return format;
        }
        return format + String.format(locale, "&%s=%s", "include_granted_scopes", this.f16506o.toString());
    }

    /* renamed from: j */
    public final String m10020j() {
        String format = String.format(Locale.US, "oauth2code:%s:%s:%s", this.f16502k.getCodeChallenge(), DbxPKCEManager.CODE_CHALLENGE_METHODS, this.f16501j.toString());
        if (this.f16505n != null) {
            format = format + ":" + this.f16505n;
        }
        if (this.f16506o == null) {
            return format;
        }
        return format + ":" + this.f16506o.toString();
    }

    /* renamed from: k */
    public final String m10021k() {
        byte[] bArr = new byte[16];
        m10011m().nextBytes(bArr);
        StringBuilder sb = new StringBuilder();
        sb.append("oauth2:");
        for (int i = 0; i < 16; i++) {
            sb.append(String.format("%02x", Integer.valueOf(bArr[i] & 255)));
        }
        return sb.toString();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        C13086AB.m52315v(-1426063359, this, bundle);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008e  */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.dropbox.core.android.AuthActivity$a] */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.content.Intent] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [android.content.Intent] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.dropbox.core.android.AuthActivity] */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onNewIntent(android.content.Intent r10) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.android.AuthActivity.onNewIntent(android.content.Intent):void");
    }

    @Override // android.app.Activity
    public void onResume() {
        String m10021k;
        super.onResume();
        if (isFinishing()) {
            return;
        }
        if (this.f16507p != null || this.f16496e == null) {
            m10018h(null);
            return;
        }
        result = null;
        if (this.f16508q) {
            Log.w(f16486r, "onResume called again before Handler run");
            return;
        }
        Intent m10010l = m10010l();
        if (this.f16501j != null) {
            m10021k = m10020j();
            m10010l.putExtra(EXTRA_AUTH_QUERY_PARAMS, m10019i());
        } else {
            m10021k = m10021k();
        }
        m10010l.putExtra(EXTRA_CONSUMER_KEY, this.f16496e);
        m10010l.putExtra(EXTRA_CONSUMER_SIG, "");
        m10010l.putExtra(EXTRA_CALLING_PACKAGE, getPackageName());
        m10010l.putExtra(EXTRA_CALLING_CLASS, getClass().getName());
        m10010l.putExtra(EXTRA_AUTH_STATE, m10021k);
        m10010l.putExtra(EXTRA_DESIRED_UID, this.f16498g);
        m10010l.putExtra(EXTRA_ALREADY_AUTHED_UIDS, this.f16499h);
        m10010l.putExtra(EXTRA_SESSION_ID, this.f16500i);
        new Handler(Looper.getMainLooper()).post(new RunnableC2263c(m10010l, m10021k));
        this.f16508q = true;
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(f16488t, this.f16507p);
        bundle.putString(f16490u, this.f16502k.getCodeVerifier());
    }

    /* renamed from: t */
    public final void m10022t(String str) {
        Locale locale = Locale.getDefault();
        Locale locale2 = new Locale(locale.getLanguage(), locale.getCountry());
        String[] strArr = this.f16499h;
        ArrayList arrayList = new ArrayList(Arrays.asList(C4921e.f26537n, this.f16496e, GoogleApiAvailabilityLight.f29016b, strArr.length > 0 ? strArr[0] : "0", "api", this.f16497f, "state", str));
        if (this.f16501j != null) {
            arrayList.add("extra_query_params");
            arrayList.add(m10019i());
        }
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse(DbxRequestUtil.buildUrlWithParams(locale2.toString(), this.f16504m.getWeb(), "1/connect", (String[]) arrayList.toArray(new String[0])))));
    }

    public static Intent makeIntent(Context context, String str, String str2, String[] strArr, String str3, String str4, String str5) {
        if (str != null) {
            m10017s(str, str2, strArr, str3, str4, str5, null, null, null, null, null);
            return new Intent(context, (Class<?>) AuthActivity.class);
        }
        throw new IllegalArgumentException("'appKey' can't be null");
    }
}
