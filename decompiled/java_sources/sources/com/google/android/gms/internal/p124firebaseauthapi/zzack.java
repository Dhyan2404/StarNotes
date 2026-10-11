package com.google.android.gms.internal.p124firebaseauthapi;

import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import com.google.api.client.json.Json;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.internal.zzal;
import com.onyx.android.sdk.base.common.CommonConstant;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;

/* loaded from: classes5.dex */
public final class zzack extends AsyncTask<Void, Void, zzacj> {
    private static final Logger zza = new Logger("FirebaseAuth", "GetAuthDomainTask");
    private final String zzb;
    private final String zzc;
    private final WeakReference<zzacm> zzd;
    private final Uri.Builder zze;
    private final String zzf;
    private final FirebaseApp zzg;

    public zzack(String str, String str2, Intent intent, FirebaseApp firebaseApp, zzacm zzacmVar) {
        this.zzb = Preconditions.checkNotEmpty(str);
        this.zzg = (FirebaseApp) Preconditions.checkNotNull(firebaseApp);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotNull(intent);
        String checkNotEmpty = Preconditions.checkNotEmpty(intent.getStringExtra("com.google.firebase.auth.KEY_API_KEY"));
        Uri.Builder buildUpon = Uri.parse(zzacmVar.zza(checkNotEmpty)).buildUpon();
        buildUpon.appendPath("getProjectConfig").appendQueryParameter("key", checkNotEmpty).appendQueryParameter("androidPackageName", str).appendQueryParameter("sha1Cert", (String) Preconditions.checkNotNull(str2));
        this.zzc = buildUpon.build().toString();
        this.zzd = new WeakReference<>(zzacmVar);
        this.zze = zzacmVar.zza(intent, str, str2);
        this.zzf = intent.getStringExtra("com.google.firebase.auth.KEY_CUSTOM_AUTH_DOMAIN");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.AsyncTask
    @Nullable
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzacj doInBackground(Void... voidArr) {
        try {
            URL url = new URL(this.zzc);
            zzacm zzacmVar = this.zzd.get();
            HttpURLConnection zza2 = zzacmVar.zza(url);
            zza2.addRequestProperty("Content-Type", Json.MEDIA_TYPE);
            zza2.setConnectTimeout(60000);
            new zzacv(zzacmVar.zza(), this.zzg, zzact.zza().zzb()).zza(zza2);
            int responseCode = zza2.getResponseCode();
            if (responseCode != 200) {
                String zza3 = zza(zza2);
                zza.m22191e(String.format("Error getting project config. Failed with %s %s", zza3, Integer.valueOf(responseCode)), new Object[0]);
                return zzacj.zzb(zza3);
            }
            zzafl zzaflVar = new zzafl();
            zzaflVar.zza(new String(zza(zza2.getInputStream(), 128)));
            if (!TextUtils.isEmpty(this.zzf)) {
                if (!zzaflVar.zza().contains(this.zzf)) {
                    return zzacj.zzb("UNAUTHORIZED_DOMAIN");
                }
                return zzacj.zza(this.zzf);
            }
            for (String str : zzaflVar.zza()) {
                if (zza(str)) {
                    return zzacj.zza(str);
                }
            }
            return null;
        } catch (zzaah e) {
            zza.m22191e("ConversionException encountered: " + e.getMessage(), new Object[0]);
            return null;
        } catch (IOException e2) {
            zza.m22191e("IOException occurred: " + e2.getMessage(), new Object[0]);
            return null;
        } catch (NullPointerException e3) {
            zza.m22191e("Null pointer encountered: " + e3.getMessage(), new Object[0]);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public final /* synthetic */ void onCancelled(zzacj zzacjVar) {
        onPostExecute((zzacj) null);
    }

    @Nullable
    private static String zza(HttpURLConnection httpURLConnection) throws zzaah {
        try {
            if (httpURLConnection.getResponseCode() < 400) {
                return null;
            }
            InputStream errorStream = httpURLConnection.getErrorStream();
            if (errorStream == null) {
                return "WEB_INTERNAL_ERROR:Could not retrieve the authDomain for this project but did not receive an error response from the network request. Please try again.";
            }
            return (String) zzacs.zza(new String(zza(errorStream, 128)), String.class);
        } catch (IOException e) {
            zza.m22195w("Error parsing error message from response body in getErrorMessageFromBody. " + String.valueOf(e), new Object[0]);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.AsyncTask
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final void onPostExecute(zzacj zzacjVar) {
        String str;
        String str2;
        Uri.Builder builder;
        zzacm zzacmVar = this.zzd.get();
        if (zzacjVar != null) {
            str = zzacjVar.zza();
            str2 = zzacjVar.zzb();
        } else {
            str = null;
            str2 = null;
        }
        if (zzacmVar == null) {
            zza.m22191e("An error has occurred: the handler reference has returned null.", new Object[0]);
        } else if (!TextUtils.isEmpty(str) && (builder = this.zze) != null) {
            builder.authority(str);
            zzacmVar.zza(this.zze.build(), this.zzb, FirebaseAuth.getInstance(this.zzg).zzc());
        } else {
            zzacmVar.zza(this.zzb, zzal.zza(str2));
        }
    }

    @VisibleForTesting
    private static boolean zza(String str) {
        try {
            String host = new URI(CommonConstant.SCHEME_HTTPS + str).getHost();
            if (host != null) {
                if (host.endsWith("firebaseapp.com")) {
                    return true;
                }
                if (host.endsWith("web.app")) {
                    return true;
                }
            }
        } catch (URISyntaxException e) {
            zza.m22191e("Error parsing URL for auth domain check: " + str + ". " + e.getMessage(), new Object[0]);
        }
        return false;
    }

    private static byte[] zza(InputStream inputStream, int i) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArr = new byte[128];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } finally {
            byteArrayOutputStream.close();
        }
    }
}
