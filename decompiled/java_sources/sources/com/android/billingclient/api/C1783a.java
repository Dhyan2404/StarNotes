package com.android.billingclient.api;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.ResultReceiver;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.AnyThread;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.BundleCompat;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.android.billingclient.ktx.BuildConfig;
import com.google.android.gms.internal.play_billing.zzbe;
import com.google.android.gms.internal.play_billing.zzev;
import com.google.android.gms.internal.play_billing.zzfb;
import com.google.android.gms.internal.play_billing.zzjx;
import com.google.android.gms.internal.play_billing.zzjz;
import com.google.android.gms.internal.play_billing.zzkb;
import com.google.android.gms.internal.play_billing.zzkd;
import com.google.android.gms.internal.play_billing.zzke;
import com.google.android.gms.internal.play_billing.zzki;
import com.google.android.gms.internal.play_billing.zzks;
import com.google.android.gms.internal.play_billing.zzku;
import com.google.android.gms.internal.play_billing.zzky;
import com.google.android.gms.internal.play_billing.zzlb;
import com.google.android.gms.internal.play_billing.zzlv;
import com.google.android.gms.internal.play_billing.zzlx;
import com.sunia.HTREnginev2.ahp;
import com.sunia.HTREnginev2.chp;
import com.sunia.HTREnginev2.cqp;
import com.sunia.HTREnginev2.dip;
import com.sunia.HTREnginev2.fip;
import com.sunia.HTREnginev2.fjp;
import com.sunia.HTREnginev2.gip;
import com.sunia.HTREnginev2.gjp;
import com.sunia.HTREnginev2.hip;
import com.sunia.HTREnginev2.ijp;
import com.sunia.HTREnginev2.ujp;
import com.sunia.HTREnginev2.wgp;
import com.sunia.HTREnginev2.xhp;
import com.sunia.HTREnginev2.yhp;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.json.JSONException;

/* renamed from: com.android.billingclient.api.a */
/* loaded from: classes3.dex */
public class C1783a extends BillingClient {

    /* renamed from: A */
    public boolean f13511A;

    /* renamed from: B */
    @Nullable
    public PendingPurchasesParams f13512B;

    /* renamed from: C */
    public boolean f13513C;

    /* renamed from: D */
    public ExecutorService f13514D;

    /* renamed from: E */
    public volatile zzev f13515E;

    /* renamed from: F */
    public final Long f13516F;

    /* renamed from: a */
    public final Object f13517a;

    /* renamed from: b */
    public volatile int f13518b;

    /* renamed from: c */
    public final String f13519c;

    /* renamed from: d */
    public final Handler f13520d;

    /* renamed from: e */
    @Nullable
    public volatile cqp f13521e;

    /* renamed from: f */
    public Context f13522f;

    /* renamed from: g */
    public fjp f13523g;

    /* renamed from: h */
    public volatile com.google.android.gms.internal.play_billing.zzan f13524h;

    /* renamed from: i */
    public volatile ServiceConnectionC1784b f13525i;

    /* renamed from: j */
    public boolean f13526j;

    /* renamed from: k */
    public boolean f13527k;

    /* renamed from: l */
    public int f13528l;

    /* renamed from: m */
    public boolean f13529m;

    /* renamed from: n */
    public boolean f13530n;

    /* renamed from: o */
    public boolean f13531o;

    /* renamed from: p */
    public boolean f13532p;

    /* renamed from: q */
    public boolean f13533q;

    /* renamed from: r */
    public boolean f13534r;

    /* renamed from: s */
    public boolean f13535s;

    /* renamed from: t */
    public boolean f13536t;

    /* renamed from: u */
    public boolean f13537u;

    /* renamed from: v */
    public boolean f13538v;

    /* renamed from: w */
    public boolean f13539w;

    /* renamed from: x */
    public boolean f13540x;

    /* renamed from: y */
    public boolean f13541y;

    /* renamed from: z */
    public boolean f13542z;

    public C1783a(Activity activity, PendingPurchasesParams pendingPurchasesParams, String str) {
        this(activity.getApplicationContext(), pendingPurchasesParams, new zzbm(), str, null, null, null, null);
    }

    @SuppressLint({"PrivateApi"})
    /* renamed from: H */
    public static String m7794H() {
        try {
            return (String) BuildConfig.class.getField("VERSION_NAME").get(null);
        } catch (Exception unused) {
            return com.android.billingclient.BuildConfig.VERSION_NAME;
        }
    }

    /* renamed from: S */
    public static final String m7798S(int i) {
        return i != 0 ? i != 1 ? i != 2 ? "CLOSED" : "CONNECTED" : "CONNECTING" : "DISCONNECTED";
    }

    @Nullable
    /* renamed from: i */
    public static Future m7808i(Callable callable, long j, @Nullable final Runnable runnable, Handler handler, ExecutorService executorService) {
        try {
            final Future submit = executorService.submit(callable);
            handler.postDelayed(new Runnable() { // from class: com.android.billingclient.api.zzaf
                @Override // java.lang.Runnable
                public final void run() {
                    Future future = submit;
                    if (future.isDone() || future.isCancelled()) {
                        return;
                    }
                    Runnable runnable2 = runnable;
                    future.cancel(true);
                    com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Async task is taking too long, cancel it!");
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }
            }, (long) (j * 0.95d));
            return submit;
        } catch (Exception e) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Async task throws exception!", e);
            return null;
        }
    }

    /* renamed from: v0 */
    public static /* bridge */ /* synthetic */ boolean m7823v0(C1783a c1783a) {
        boolean z;
        synchronized (c1783a.f13517a) {
            z = true;
            if (c1783a.f13518b != 1) {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: C0 */
    public final Handler m7832C0() {
        return Looper.myLooper() == null ? this.f13520d : new Handler(Looper.myLooper());
    }

    /* renamed from: D0 */
    public final hip m7833D0(String str) {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Querying purchase history, item type: ".concat(String.valueOf(str)));
        ArrayList arrayList = new ArrayList();
        Bundle zzd = com.google.android.gms.internal.play_billing.zze.zzd(this.f13531o, this.f13539w, this.f13512B.m7766a(), this.f13512B.m7767b(), this.f13519c, this.f13516F.longValue());
        String str2 = null;
        while (this.f13529m) {
            try {
                synchronized (this.f13517a) {
                    zzanVar = this.f13524h;
                }
                if (zzanVar == null) {
                    return m7858U(C1791i.f13580m, 119, "Service reset to null", null);
                }
                Bundle zzh = zzanVar.zzh(6, this.f13522f.getPackageName(), str, str2, zzd);
                ijp m7929a = C1792j.m7929a(zzh, "BillingClient", "getPurchaseHistory()");
                BillingResult m54719a = m7929a.m54719a();
                if (m54719a != C1791i.f13579l) {
                    m7844K0(m7929a.m54720b(), 11, m54719a);
                    return new hip(m54719a, null);
                }
                ArrayList<String> stringArrayList = zzh.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList2 = zzh.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList3 = zzh.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                boolean z = false;
                for (int i = 0; i < stringArrayList2.size(); i++) {
                    String str3 = stringArrayList2.get(i);
                    String str4 = stringArrayList3.get(i);
                    com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Purchase record found for sku : ".concat(String.valueOf(stringArrayList.get(i))));
                    try {
                        PurchaseHistoryRecord purchaseHistoryRecord = new PurchaseHistoryRecord(str3, str4);
                        if (TextUtils.isEmpty(purchaseHistoryRecord.getPurchaseToken())) {
                            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "BUG: empty/null token!");
                            z = true;
                        }
                        arrayList.add(purchaseHistoryRecord);
                    } catch (JSONException e) {
                        return m7858U(C1791i.f13578k, 51, "Got an exception trying to decode the purchase!", e);
                    }
                }
                if (z) {
                    m7844K0(26, 11, C1791i.f13578k);
                }
                str2 = zzh.getString("INAPP_CONTINUATION_TOKEN");
                com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Continuation token: ".concat(String.valueOf(str2)));
                if (TextUtils.isEmpty(str2)) {
                    return new hip(C1791i.f13579l, arrayList);
                }
            } catch (DeadObjectException e2) {
                return m7858U(C1791i.f13580m, 59, "Got exception trying to get purchase history", e2);
            } catch (Exception e3) {
                return m7858U(C1791i.f13578k, 59, "Got exception trying to get purchase history", e3);
            }
        }
        com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "getPurchaseHistory is not supported on current device");
        return new hip(C1791i.f13584q, null);
    }

    /* renamed from: E0 */
    public final BillingResult m7834E0() {
        com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Service connection is valid. No need to re-initialize.");
        zzkb zzc = zzkd.zzc();
        zzc.zzn(6);
        zzlv zzc2 = zzlx.zzc();
        zzc2.zza(true);
        zzc.zzm(zzc2);
        m7845L((zzkd) zzc.zzf());
        return C1791i.f13579l;
    }

    /* renamed from: F */
    public final BillingResult m7835F() {
        BillingResult billingResult;
        int i = 0;
        int[] iArr = {0, 3};
        synchronized (this.f13517a) {
            while (true) {
                if (i >= 2) {
                    billingResult = C1791i.f13578k;
                    break;
                }
                if (this.f13518b == iArr[i]) {
                    billingResult = C1791i.f13580m;
                    break;
                }
                i++;
            }
        }
        return billingResult;
    }

    /* renamed from: G */
    public final String m7836G(QueryProductDetailsParams queryProductDetailsParams) {
        if (TextUtils.isEmpty(null)) {
            return this.f13522f.getPackageName();
        }
        return null;
    }

    /* renamed from: G0 */
    public final void m7837G0(ExternalOfferInformationDialogListener externalOfferInformationDialogListener, BillingResult billingResult, int i, @Nullable Exception exc) {
        m7846L0(i, 25, billingResult, zzcg.zza(exc));
        externalOfferInformationDialogListener.onExternalOfferInformationDialogResponse(billingResult);
    }

    /* renamed from: H0 */
    public final void m7838H0(BillingConfigResponseListener billingConfigResponseListener, BillingResult billingResult, int i, @Nullable Exception exc) {
        com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "getBillingConfig got an exception.", exc);
        m7846L0(i, 13, billingResult, zzcg.zza(exc));
        billingConfigResponseListener.onBillingConfigResponse(billingResult, null);
    }

    /* renamed from: I */
    public final synchronized ExecutorService m7839I() {
        if (this.f13514D == null) {
            this.f13514D = Executors.newFixedThreadPool(com.google.android.gms.internal.play_billing.zze.zza, new wgp(this));
        }
        return this.f13514D;
    }

    /* renamed from: I0 */
    public final void m7840I0(AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener, BillingResult billingResult, int i, @Nullable Exception exc) {
        m7846L0(i, 16, billingResult, zzcg.zza(exc));
        alternativeBillingOnlyInformationDialogListener.onAlternativeBillingOnlyInformationDialogResponse(billingResult);
    }

    /* renamed from: J */
    public final void m7841J(ConsumeParams consumeParams, ConsumeResponseListener consumeResponseListener) {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        int zza;
        String str;
        String purchaseToken = consumeParams.getPurchaseToken();
        try {
            com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Consuming purchase with token: " + purchaseToken);
            synchronized (this.f13517a) {
                zzanVar = this.f13524h;
            }
            if (zzanVar == null) {
                m7871b0(consumeResponseListener, purchaseToken, C1791i.f13580m, 119, "Service has been reset to null.", null);
                return;
            }
            if (this.f13531o) {
                String packageName = this.f13522f.getPackageName();
                boolean z = this.f13531o;
                String str2 = this.f13519c;
                long longValue = this.f13516F.longValue();
                Bundle bundle = new Bundle();
                if (z) {
                    com.google.android.gms.internal.play_billing.zze.zzc(bundle, str2, longValue);
                }
                Bundle zze = zzanVar.zze(9, packageName, purchaseToken, bundle);
                zza = zze.getInt("RESPONSE_CODE");
                str = com.google.android.gms.internal.play_billing.zze.zzh(zze, "BillingClient");
            } else {
                zza = zzanVar.zza(3, this.f13522f.getPackageName(), purchaseToken);
                str = "";
            }
            BillingResult m7928a = C1791i.m7928a(zza, str);
            if (zza == 0) {
                com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Successfully consumed purchase.");
                consumeResponseListener.onConsumeResponse(m7928a, purchaseToken);
            } else {
                m7871b0(consumeResponseListener, purchaseToken, m7928a, 23, "Error consuming purchase with token. Response code: " + zza, null);
            }
        } catch (DeadObjectException e) {
            m7871b0(consumeResponseListener, purchaseToken, C1791i.f13580m, 29, "Error consuming purchase!", e);
        } catch (Exception e2) {
            m7871b0(consumeResponseListener, purchaseToken, C1791i.f13578k, 29, "Error consuming purchase!", e2);
        }
    }

    /* renamed from: J0 */
    public final void m7842J0(int i, int i2, @Nullable Exception exc) {
        zzjz zzjzVar;
        com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "showInAppMessages error.", exc);
        fjp fjpVar = this.f13523g;
        String zza = zzcg.zza(exc);
        try {
            zzke zzc = zzki.zzc();
            zzc.zzn(i);
            zzc.zzo(i2);
            if (zza != null) {
                zzc.zza(zza);
            }
            zzjx zzc2 = zzjz.zzc();
            zzc2.zza(zzc);
            zzc2.zzn(30);
            zzjzVar = (zzjz) zzc2.zzf();
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingLogger", "Unable to create logging payload", th);
            zzjzVar = null;
        }
        fjpVar.mo54121c(zzjzVar);
    }

    /* renamed from: K */
    public final void m7843K(zzjz zzjzVar) {
        try {
            this.f13523g.mo54124f(zzjzVar, this.f13528l);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Unable to log.", th);
        }
    }

    /* renamed from: K0 */
    public final void m7844K0(int i, int i2, BillingResult billingResult) {
        try {
            m7843K(zzcg.zzb(i, i2, billingResult));
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Unable to log.", th);
        }
    }

    /* renamed from: L */
    public final void m7845L(zzkd zzkdVar) {
        try {
            this.f13523g.mo54122d(zzkdVar, this.f13528l);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Unable to log.", th);
        }
    }

    /* renamed from: L0 */
    public final void m7846L0(int i, int i2, BillingResult billingResult, @Nullable String str) {
        try {
            m7843K(zzcg.zzc(i, i2, billingResult, str));
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Unable to log.", th);
        }
    }

    /* renamed from: M */
    public final void m7847M(String str, final PurchaseHistoryResponseListener purchaseHistoryResponseListener) {
        if (!isReady()) {
            BillingResult billingResult = C1791i.f13580m;
            m7844K0(2, 11, billingResult);
            purchaseHistoryResponseListener.onPurchaseHistoryResponse(billingResult, null);
        } else if (m7808i(new chp(this, str, purchaseHistoryResponseListener), 30000L, new Runnable() { // from class: com.android.billingclient.api.zzal
            @Override // java.lang.Runnable
            public final void run() {
                C1783a.this.m7896p0(purchaseHistoryResponseListener);
            }
        }, m7832C0(), m7839I()) == null) {
            BillingResult m7835F = m7835F();
            m7844K0(25, 11, m7835F);
            purchaseHistoryResponseListener.onPurchaseHistoryResponse(m7835F, null);
        }
    }

    /* renamed from: M0 */
    public final void m7848M0(int i) {
        try {
            m7845L(zzcg.zzd(i));
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Unable to log.", th);
        }
    }

    /* renamed from: N */
    public final void m7849N(String str, final PurchasesResponseListener purchasesResponseListener) {
        if (!isReady()) {
            BillingResult billingResult = C1791i.f13580m;
            m7844K0(2, 9, billingResult);
            purchasesResponseListener.onQueryPurchasesResponse(billingResult, com.google.android.gms.internal.play_billing.zzco.zzl());
        } else {
            if (TextUtils.isEmpty(str)) {
                com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Please provide a valid product type.");
                BillingResult billingResult2 = C1791i.f13575h;
                m7844K0(50, 9, billingResult2);
                purchasesResponseListener.onQueryPurchasesResponse(billingResult2, com.google.android.gms.internal.play_billing.zzco.zzl());
                return;
            }
            if (m7808i(new ahp(this, str, purchasesResponseListener), 30000L, new Runnable() { // from class: com.android.billingclient.api.zzac
                @Override // java.lang.Runnable
                public final void run() {
                    C1783a.this.m7897q0(purchasesResponseListener);
                }
            }, m7832C0(), m7839I()) == null) {
                BillingResult m7835F = m7835F();
                m7844K0(25, 9, m7835F);
                purchasesResponseListener.onQueryPurchasesResponse(m7835F, com.google.android.gms.internal.play_billing.zzco.zzl());
            }
        }
    }

    /* renamed from: O */
    public final void m7850O(int i) {
        synchronized (this.f13517a) {
            if (this.f13518b == 3) {
                return;
            }
            com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Setting clientState from " + m7798S(this.f13518b) + " to " + m7798S(i));
            this.f13518b = i;
        }
    }

    /* renamed from: O0 */
    public final /* synthetic */ Bundle m7851O0(int i, String str, String str2, BillingFlowParams billingFlowParams, Bundle bundle) throws Exception {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        try {
            synchronized (this.f13517a) {
                zzanVar = this.f13524h;
            }
            return zzanVar == null ? com.google.android.gms.internal.play_billing.zze.zzn(C1791i.f13580m, 119) : zzanVar.zzg(i, this.f13522f.getPackageName(), str, str2, null, bundle);
        } catch (DeadObjectException e) {
            return com.google.android.gms.internal.play_billing.zze.zzo(C1791i.f13580m, 5, zzcg.zza(e));
        } catch (Exception e2) {
            return com.google.android.gms.internal.play_billing.zze.zzo(C1791i.f13578k, 5, zzcg.zza(e2));
        }
    }

    /* renamed from: P */
    public final synchronized void m7852P() {
        ExecutorService executorService = this.f13514D;
        if (executorService != null) {
            executorService.shutdownNow();
            this.f13514D = null;
            this.f13515E = null;
        }
    }

    /* renamed from: P0 */
    public final /* synthetic */ Bundle m7853P0(String str, String str2) throws Exception {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        try {
            synchronized (this.f13517a) {
                zzanVar = this.f13524h;
            }
            return zzanVar == null ? com.google.android.gms.internal.play_billing.zze.zzn(C1791i.f13580m, 119) : zzanVar.zzf(3, this.f13522f.getPackageName(), str, str2, null);
        } catch (DeadObjectException e) {
            return com.google.android.gms.internal.play_billing.zze.zzo(C1791i.f13580m, 5, zzcg.zza(e));
        } catch (Exception e2) {
            return com.google.android.gms.internal.play_billing.zze.zzo(C1791i.f13578k, 5, zzcg.zza(e2));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Q */
    public final void m7854Q() {
        synchronized (this.f13517a) {
            if (this.f13525i != null) {
                try {
                    this.f13522f.unbindService(this.f13525i);
                } catch (Throwable th) {
                    try {
                        com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "There was an exception while unbinding service!", th);
                        this.f13524h = null;
                        this.f13525i = null;
                    } finally {
                        this.f13524h = null;
                        this.f13525i = null;
                    }
                }
            }
        }
    }

    /* renamed from: R */
    public final boolean m7855R() {
        return this.f13539w && this.f13512B.m7767b();
    }

    @VisibleForTesting
    /* renamed from: S0 */
    public final gip m7856S0(QueryProductDetailsParams queryProductDetailsParams) {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        ArrayList arrayList = new ArrayList();
        String zzb = queryProductDetailsParams.zzb();
        com.google.android.gms.internal.play_billing.zzco zza = queryProductDetailsParams.zza();
        int size = zza.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 20;
            ArrayList arrayList2 = new ArrayList(zza.subList(i, i2 > size ? size : i2));
            ArrayList<String> arrayList3 = new ArrayList<>();
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                arrayList3.add(((QueryProductDetailsParams.Product) arrayList2.get(i3)).zza());
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("ITEM_ID_LIST", arrayList3);
            bundle.putString("playBillingLibraryVersion", this.f13519c);
            try {
                synchronized (this.f13517a) {
                    zzanVar = this.f13524h;
                }
                if (zzanVar == null) {
                    return m7857T(C1791i.f13580m, 119, "Service has been reset to null.", null);
                }
                int i4 = true != this.f13540x ? 17 : 20;
                String packageName = this.f13522f.getPackageName();
                boolean m7855R = m7855R();
                String str = this.f13519c;
                m7836G(queryProductDetailsParams);
                m7836G(queryProductDetailsParams);
                m7836G(queryProductDetailsParams);
                m7836G(queryProductDetailsParams);
                long longValue = this.f13516F.longValue();
                Bundle bundle2 = new Bundle();
                com.google.android.gms.internal.play_billing.zze.zzc(bundle2, str, longValue);
                bundle2.putBoolean("enablePendingPurchases", true);
                bundle2.putString("SKU_DETAILS_RESPONSE_FORMAT", "PRODUCT_DETAILS");
                if (m7855R) {
                    bundle2.putBoolean("enablePendingPurchaseForSubscriptions", true);
                }
                ArrayList<String> arrayList4 = new ArrayList<>();
                ArrayList<String> arrayList5 = new ArrayList<>();
                int size3 = arrayList2.size();
                int i5 = 0;
                boolean z = false;
                boolean z2 = false;
                while (i5 < size3) {
                    QueryProductDetailsParams.Product product = (QueryProductDetailsParams.Product) arrayList2.get(i5);
                    arrayList4.add(null);
                    z |= !TextUtils.isEmpty(null);
                    String zzb2 = product.zzb();
                    ArrayList arrayList6 = arrayList2;
                    if (zzb2.equals("first_party")) {
                        zzbe.zzc(null, "Serialized DocId is required for constructing ExtraParams to query ProductDetails for all first party products.");
                        arrayList5.add(null);
                        z2 = true;
                    }
                    i5++;
                    arrayList2 = arrayList6;
                }
                if (z) {
                    bundle2.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList4);
                }
                if (!arrayList5.isEmpty()) {
                    bundle2.putStringArrayList("SKU_SERIALIZED_DOCID_LIST", arrayList5);
                }
                if (z2 && !TextUtils.isEmpty(null)) {
                    bundle2.putString("accountName", null);
                }
                Bundle zzl = zzanVar.zzl(i4, packageName, zzb, bundle, bundle2);
                if (zzl == null) {
                    return m7857T(C1791i.f13562C, 44, "queryProductDetailsAsync got empty product details response.", null);
                }
                if (!zzl.containsKey("DETAILS_LIST")) {
                    int zzb3 = com.google.android.gms.internal.play_billing.zze.zzb(zzl, "BillingClient");
                    String zzh = com.google.android.gms.internal.play_billing.zze.zzh(zzl, "BillingClient");
                    if (zzb3 == 0) {
                        return m7857T(C1791i.m7928a(6, zzh), 45, "getSkuDetails() returned a bundle with neither an error nor a product detail list for queryProductDetailsAsync.", null);
                    }
                    return m7857T(C1791i.m7928a(zzb3, zzh), 23, "getSkuDetails() failed for queryProductDetailsAsync. Response code: " + zzb3, null);
                }
                ArrayList<String> stringArrayList = zzl.getStringArrayList("DETAILS_LIST");
                if (stringArrayList == null) {
                    return m7857T(C1791i.f13562C, 46, "queryProductDetailsAsync got null response list", null);
                }
                for (int i6 = 0; i6 < stringArrayList.size(); i6++) {
                    try {
                        ProductDetails productDetails = new ProductDetails(stringArrayList.get(i6));
                        com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Got product details: ".concat(productDetails.toString()));
                        arrayList.add(productDetails);
                    } catch (JSONException e) {
                        return m7857T(C1791i.m7928a(6, "Error trying to decode SkuDetails."), 47, "Got a JSON exception trying to decode ProductDetails. \n Exception: ", e);
                    }
                }
                i = i2;
            } catch (DeadObjectException e2) {
                return m7857T(C1791i.f13580m, 43, "queryProductDetailsAsync got a remote exception (try to reconnect).", e2);
            } catch (Exception e3) {
                return m7857T(C1791i.f13578k, 43, "queryProductDetailsAsync got a remote exception (try to reconnect).", e3);
            }
        }
        return new gip(0, "", arrayList);
    }

    /* renamed from: T */
    public final gip m7857T(BillingResult billingResult, int i, String str, @Nullable Exception exc) {
        com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", str, exc);
        m7846L0(i, 7, billingResult, zzcg.zza(exc));
        return new gip(billingResult.getResponseCode(), billingResult.getDebugMessage(), new ArrayList());
    }

    /* renamed from: U */
    public final hip m7858U(BillingResult billingResult, int i, String str, @Nullable Exception exc) {
        com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", str, exc);
        m7846L0(i, 11, billingResult, zzcg.zza(exc));
        return new hip(billingResult, null);
    }

    /* renamed from: V */
    public final zzcv m7859V(int i, BillingResult billingResult, int i2, String str, @Nullable Exception exc) {
        m7846L0(i2, 9, billingResult, zzcg.zza(exc));
        com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", str, exc);
        return new zzcv(billingResult, null);
    }

    /* renamed from: V0 */
    public final fjp m7860V0() {
        return this.f13523g;
    }

    /* renamed from: W */
    public final zzcv m7861W(String str, int i) {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Querying owned items, item type: ".concat(String.valueOf(str)));
        ArrayList arrayList = new ArrayList();
        Bundle zzd = com.google.android.gms.internal.play_billing.zze.zzd(this.f13531o, this.f13539w, this.f13512B.m7766a(), this.f13512B.m7767b(), this.f13519c, this.f13516F.longValue());
        String str2 = null;
        do {
            try {
                synchronized (this.f13517a) {
                    zzanVar = this.f13524h;
                }
                if (zzanVar == null) {
                    return m7859V(9, C1791i.f13580m, 119, "Service has been reset to null", null);
                }
                Bundle zzj = this.f13531o ? zzanVar.zzj(true != this.f13539w ? 9 : 19, this.f13522f.getPackageName(), str, str2, zzd) : zzanVar.zzi(3, this.f13522f.getPackageName(), str, str2);
                ijp m7929a = C1792j.m7929a(zzj, "BillingClient", "getPurchase()");
                BillingResult m54719a = m7929a.m54719a();
                if (m54719a != C1791i.f13579l) {
                    return m7859V(9, m54719a, m7929a.m54720b(), "Purchase bundle invalid", null);
                }
                ArrayList<String> stringArrayList = zzj.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList2 = zzj.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList3 = zzj.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                boolean z = false;
                for (int i2 = 0; i2 < stringArrayList2.size(); i2++) {
                    String str3 = stringArrayList2.get(i2);
                    String str4 = stringArrayList3.get(i2);
                    com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Sku is owned: ".concat(String.valueOf(stringArrayList.get(i2))));
                    try {
                        Purchase purchase = new Purchase(str3, str4);
                        if (TextUtils.isEmpty(purchase.getPurchaseToken())) {
                            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "BUG: empty/null token!");
                            z = true;
                        }
                        arrayList.add(purchase);
                    } catch (JSONException e) {
                        return m7859V(9, C1791i.f13578k, 51, "Got an exception trying to decode the purchase!", e);
                    }
                }
                if (z) {
                    m7844K0(26, 9, C1791i.f13578k);
                }
                str2 = zzj.getString("INAPP_CONTINUATION_TOKEN");
                com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Continuation token: ".concat(String.valueOf(str2)));
            } catch (DeadObjectException e2) {
                return m7859V(9, C1791i.f13580m, 52, "Got exception trying to get purchases try to reconnect", e2);
            } catch (Exception e3) {
                return m7859V(9, C1791i.f13578k, 52, "Got exception trying to get purchases try to reconnect", e3);
            }
        } while (!TextUtils.isEmpty(str2));
        return new zzcv(C1791i.f13579l, arrayList);
    }

    /* renamed from: X */
    public final ujp m7862X(BillingResult billingResult, int i, String str, @Nullable Exception exc) {
        com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", str, exc);
        m7846L0(i, 8, billingResult, zzcg.zza(exc));
        return new ujp(billingResult.getResponseCode(), billingResult.getDebugMessage(), null);
    }

    /* renamed from: X0 */
    public final BillingResult m7863X0(final BillingResult billingResult) {
        if (Thread.interrupted()) {
            return billingResult;
        }
        this.f13520d.post(new Runnable() { // from class: com.android.billingclient.api.zzp
            @Override // java.lang.Runnable
            public final void run() {
                C1783a.this.m7885h0(billingResult);
            }
        });
        return billingResult;
    }

    /* renamed from: Y */
    public final void m7864Y(BillingResult billingResult, int i, int i2) {
        zzkd zzkdVar = null;
        zzjz zzjzVar = null;
        if (billingResult.getResponseCode() == 0) {
            int i3 = zzcg.zza;
            try {
                zzkb zzc = zzkd.zzc();
                zzc.zzn(5);
                zzky zzc2 = zzlb.zzc();
                zzc2.zza(i2);
                zzc.zza((zzlb) zzc2.zzf());
                zzkdVar = (zzkd) zzc.zzf();
            } catch (Exception e) {
                com.google.android.gms.internal.play_billing.zze.zzm("BillingLogger", "Unable to create logging payload", e);
            }
            m7845L(zzkdVar);
            return;
        }
        int i4 = zzcg.zza;
        try {
            zzjx zzc3 = zzjz.zzc();
            zzke zzc4 = zzki.zzc();
            zzc4.zzn(billingResult.getResponseCode());
            zzc4.zzm(billingResult.getDebugMessage());
            zzc4.zzo(i);
            zzc3.zza(zzc4);
            zzc3.zzn(5);
            zzky zzc5 = zzlb.zzc();
            zzc5.zza(i2);
            zzc3.zzm((zzlb) zzc5.zzf());
            zzjzVar = (zzjz) zzc3.zzf();
        } catch (Exception e2) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingLogger", "Unable to create logging payload", e2);
        }
        m7843K(zzjzVar);
    }

    @VisibleForTesting
    /* renamed from: Y0 */
    public final ujp m7865Y0(String str, List list, @Nullable String str2) {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        Bundle zzk;
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 20;
            ArrayList<String> arrayList2 = new ArrayList<>(list.subList(i, i2 > size ? size : i2));
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("ITEM_ID_LIST", arrayList2);
            bundle.putString("playBillingLibraryVersion", this.f13519c);
            try {
                synchronized (this.f13517a) {
                    zzanVar = this.f13524h;
                }
                if (zzanVar == null) {
                    return m7862X(C1791i.f13580m, 119, "Service has been reset to null.", null);
                }
                if (this.f13532p) {
                    String packageName = this.f13522f.getPackageName();
                    int i3 = this.f13528l;
                    boolean m7766a = this.f13512B.m7766a();
                    boolean m7855R = m7855R();
                    String str3 = this.f13519c;
                    long longValue = this.f13516F.longValue();
                    Bundle bundle2 = new Bundle();
                    if (i3 >= 9) {
                        com.google.android.gms.internal.play_billing.zze.zzc(bundle2, str3, longValue);
                    }
                    if (i3 >= 9 && m7766a) {
                        bundle2.putBoolean("enablePendingPurchases", true);
                    }
                    if (m7855R) {
                        bundle2.putBoolean("enablePendingPurchaseForSubscriptions", true);
                    }
                    zzk = zzanVar.zzl(10, packageName, str, bundle, bundle2);
                } else {
                    zzk = zzanVar.zzk(3, this.f13522f.getPackageName(), str, bundle);
                }
                if (zzk == null) {
                    return m7862X(C1791i.f13562C, 44, "querySkuDetailsAsync got null sku details list", null);
                }
                if (!zzk.containsKey("DETAILS_LIST")) {
                    int zzb = com.google.android.gms.internal.play_billing.zze.zzb(zzk, "BillingClient");
                    String zzh = com.google.android.gms.internal.play_billing.zze.zzh(zzk, "BillingClient");
                    if (zzb == 0) {
                        return m7862X(C1791i.m7928a(6, zzh), 45, "getSkuDetails() returned a bundle with neither an error nor a detail list.", null);
                    }
                    return m7862X(C1791i.m7928a(zzb, zzh), 23, "getSkuDetails() failed. Response code: " + zzb, null);
                }
                ArrayList<String> stringArrayList = zzk.getStringArrayList("DETAILS_LIST");
                if (stringArrayList == null) {
                    return m7862X(C1791i.f13562C, 46, "querySkuDetailsAsync got null response list", null);
                }
                for (int i4 = 0; i4 < stringArrayList.size(); i4++) {
                    try {
                        SkuDetails skuDetails = new SkuDetails(stringArrayList.get(i4));
                        com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Got sku details: ".concat(skuDetails.toString()));
                        arrayList.add(skuDetails);
                    } catch (JSONException e) {
                        return m7862X(C1791i.m7928a(6, "Error trying to decode SkuDetails."), 47, "Got a JSON exception trying to decode SkuDetails.", e);
                    }
                }
                i = i2;
            } catch (DeadObjectException e2) {
                return m7862X(C1791i.f13580m, 43, "querySkuDetailsAsync got a remote exception (try to reconnect).", e2);
            } catch (Exception e3) {
                return m7862X(C1791i.f13578k, 43, "querySkuDetailsAsync got a remote exception (try to reconnect).", e3);
            }
        }
        return new ujp(0, "", arrayList);
    }

    /* renamed from: Z */
    public final void m7866Z(AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener, BillingResult billingResult, int i, @Nullable Exception exc) {
        com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Error in acknowledge purchase!", exc);
        m7846L0(i, 3, billingResult, zzcg.zza(exc));
        acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult);
    }

    /* renamed from: a */
    public final void m7867a(Context context, PurchasesUpdatedListener purchasesUpdatedListener, PendingPurchasesParams pendingPurchasesParams, @Nullable UserChoiceBillingListener userChoiceBillingListener, String str, @Nullable fjp fjpVar) {
        this.f13522f = context.getApplicationContext();
        zzks zzc = zzku.zzc();
        zzc.zzo(str);
        zzc.zzn(this.f13522f.getPackageName());
        zzc.zzm(this.f13516F.longValue());
        if (fjpVar != null) {
            this.f13523g = fjpVar;
        } else {
            this.f13523g = new gjp(this.f13522f, (zzku) zzc.zzf());
        }
        if (purchasesUpdatedListener == null) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Billing client should have a valid listener but the provided is null.");
        }
        this.f13521e = new cqp(this.f13522f, purchasesUpdatedListener, null, null, userChoiceBillingListener, this.f13523g);
        this.f13512B = pendingPurchasesParams;
        this.f13513C = userChoiceBillingListener != null;
    }

    /* renamed from: a0 */
    public final void m7868a0(AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener, BillingResult billingResult, int i, @Nullable Exception exc) {
        m7846L0(i, 14, billingResult, zzcg.zza(exc));
        alternativeBillingOnlyAvailabilityListener.onAlternativeBillingOnlyAvailabilityResponse(billingResult);
    }

    /* renamed from: a1 */
    public final synchronized zzev m7869a1() {
        if (this.f13515E == null) {
            this.f13515E = zzfb.zza(m7839I());
        }
        return this.f13515E;
    }

    @Override // com.android.billingclient.api.BillingClient
    public void acknowledgePurchase(final AcknowledgePurchaseParams acknowledgePurchaseParams, final AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener) {
        if (!isReady()) {
            BillingResult billingResult = C1791i.f13580m;
            m7844K0(2, 3, billingResult);
            acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult);
            return;
        }
        if (TextUtils.isEmpty(acknowledgePurchaseParams.getPurchaseToken())) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Please provide a valid purchase token.");
            BillingResult billingResult2 = C1791i.f13577j;
            m7844K0(26, 3, billingResult2);
            acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult2);
            return;
        }
        if (!this.f13531o) {
            BillingResult billingResult3 = C1791i.f13569b;
            m7844K0(27, 3, billingResult3);
            acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult3);
        } else if (m7808i(new Callable() { // from class: com.android.billingclient.api.zzt
            @Override // java.util.concurrent.Callable
            public final Object call() {
                C1783a.this.m7876d1(acknowledgePurchaseResponseListener, acknowledgePurchaseParams);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzu
            @Override // java.lang.Runnable
            public final void run() {
                C1783a.this.m7883g0(acknowledgePurchaseResponseListener);
            }
        }, m7832C0(), m7839I()) == null) {
            BillingResult m7835F = m7835F();
            m7844K0(25, 3, m7835F);
            acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(m7835F);
        }
    }

    /* renamed from: b */
    public final void m7870b(Context context, PurchasesUpdatedListener purchasesUpdatedListener, PendingPurchasesParams pendingPurchasesParams, @Nullable zzb zzbVar, String str, @Nullable fjp fjpVar) {
        this.f13522f = context.getApplicationContext();
        zzks zzc = zzku.zzc();
        zzc.zzo(str);
        zzc.zzn(this.f13522f.getPackageName());
        zzc.zzm(this.f13516F.longValue());
        if (fjpVar != null) {
            this.f13523g = fjpVar;
        } else {
            this.f13523g = new gjp(this.f13522f, (zzku) zzc.zzf());
        }
        if (purchasesUpdatedListener == null) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Billing client should have a valid listener but the provided is null.");
        }
        this.f13521e = new cqp(this.f13522f, purchasesUpdatedListener, null, zzbVar, null, this.f13523g);
        this.f13512B = pendingPurchasesParams;
        this.f13513C = zzbVar != null;
        this.f13522f.getPackageName();
    }

    /* renamed from: b0 */
    public final void m7871b0(ConsumeResponseListener consumeResponseListener, String str, BillingResult billingResult, int i, String str2, @Nullable Exception exc) {
        com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", str2, exc);
        m7846L0(i, 4, billingResult, zzcg.zza(exc));
        consumeResponseListener.onConsumeResponse(billingResult, str);
    }

    /* renamed from: c */
    public final int m7872c(Activity activity, BillingFlowParams billingFlowParams) {
        return launchBillingFlow(activity, billingFlowParams).getResponseCode();
    }

    /* renamed from: c0 */
    public final void m7873c0(AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener, BillingResult billingResult, int i, @Nullable Exception exc) {
        m7846L0(i, 15, billingResult, zzcg.zza(exc));
        alternativeBillingOnlyReportingDetailsListener.onAlternativeBillingOnlyTokenResponse(billingResult, null);
    }

    @Override // com.android.billingclient.api.BillingClient
    public void consumeAsync(final ConsumeParams consumeParams, final ConsumeResponseListener consumeResponseListener) {
        if (!isReady()) {
            BillingResult billingResult = C1791i.f13580m;
            m7844K0(2, 4, billingResult);
            consumeResponseListener.onConsumeResponse(billingResult, consumeParams.getPurchaseToken());
        } else if (m7808i(new Callable() { // from class: com.android.billingclient.api.zzag
            @Override // java.util.concurrent.Callable
            public final Object call() {
                C1783a.this.m7879e1(consumeParams, consumeResponseListener);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzah
            @Override // java.lang.Runnable
            public final void run() {
                C1783a.this.m7886i0(consumeResponseListener, consumeParams);
            }
        }, m7832C0(), m7839I()) == null) {
            BillingResult m7835F = m7835F();
            m7844K0(25, 4, m7835F);
            consumeResponseListener.onConsumeResponse(m7835F, consumeParams.getPurchaseToken());
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    @zzf
    public void createAlternativeBillingOnlyReportingDetailsAsync(final AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener) {
        if (!isReady()) {
            m7873c0(alternativeBillingOnlyReportingDetailsListener, C1791i.f13580m, 2, null);
            return;
        }
        if (!this.f13541y) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Current client doesn't support alternative billing only.");
            m7873c0(alternativeBillingOnlyReportingDetailsListener, C1791i.f13564E, 66, null);
        } else if (m7808i(new Callable() { // from class: com.android.billingclient.api.zzx
            @Override // java.util.concurrent.Callable
            public final Object call() {
                C1783a.this.m7887i1(alternativeBillingOnlyReportingDetailsListener);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzy
            @Override // java.lang.Runnable
            public final void run() {
                C1783a.this.m7888j0(alternativeBillingOnlyReportingDetailsListener);
            }
        }, m7832C0(), m7839I()) == null) {
            m7873c0(alternativeBillingOnlyReportingDetailsListener, m7835F(), 25, null);
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    @zzg
    public void createExternalOfferReportingDetailsAsync(final ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener) {
        if (!isReady()) {
            m7875d0(externalOfferReportingDetailsListener, C1791i.f13580m, 2, null);
            return;
        }
        if (!this.f13542z) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Current client doesn't support external offer.");
            m7875d0(externalOfferReportingDetailsListener, C1791i.f13591x, 103, null);
        } else if (m7808i(new Callable() { // from class: com.android.billingclient.api.zzaa
            @Override // java.util.concurrent.Callable
            public final Object call() {
                C1783a.this.m7889j1(externalOfferReportingDetailsListener);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzaj
            @Override // java.lang.Runnable
            public final void run() {
                C1783a.this.m7890k0(externalOfferReportingDetailsListener);
            }
        }, m7832C0(), m7839I()) == null) {
            m7875d0(externalOfferReportingDetailsListener, m7835F(), 25, null);
        }
    }

    /* renamed from: d */
    public final void m7874d(long j) {
        startConnection(new zzbm(j));
    }

    /* renamed from: d0 */
    public final void m7875d0(ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener, BillingResult billingResult, int i, @Nullable Exception exc) {
        m7846L0(i, 24, billingResult, zzcg.zza(exc));
        externalOfferReportingDetailsListener.onExternalOfferReportingDetailsResponse(billingResult, null);
    }

    /* renamed from: d1 */
    public final /* synthetic */ Object m7876d1(AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener, AcknowledgePurchaseParams acknowledgePurchaseParams) throws Exception {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        try {
            synchronized (this.f13517a) {
                zzanVar = this.f13524h;
            }
            if (zzanVar == null) {
                m7866Z(acknowledgePurchaseResponseListener, C1791i.f13580m, 119, null);
                return null;
            }
            String packageName = this.f13522f.getPackageName();
            String purchaseToken = acknowledgePurchaseParams.getPurchaseToken();
            String str = this.f13519c;
            long longValue = this.f13516F.longValue();
            Bundle bundle = new Bundle();
            com.google.android.gms.internal.play_billing.zze.zzc(bundle, str, longValue);
            Bundle zzd = zzanVar.zzd(9, packageName, purchaseToken, bundle);
            acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(C1791i.m7928a(com.google.android.gms.internal.play_billing.zze.zzb(zzd, "BillingClient"), com.google.android.gms.internal.play_billing.zze.zzh(zzd, "BillingClient")));
            return null;
        } catch (DeadObjectException e) {
            m7866Z(acknowledgePurchaseResponseListener, C1791i.f13580m, 28, e);
            return null;
        } catch (Exception e2) {
            m7866Z(acknowledgePurchaseResponseListener, C1791i.f13578k, 28, e2);
            return null;
        }
    }

    /* renamed from: e */
    public final /* synthetic */ Void m7877e(ExternalOfferAvailabilityListener externalOfferAvailabilityListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        try {
            synchronized (this.f13517a) {
                zzanVar = this.f13524h;
            }
            if (zzanVar == null) {
                m7878e0(externalOfferAvailabilityListener, C1791i.f13580m, 119, null);
            } else {
                zzanVar.zzs(22, this.f13522f.getPackageName(), com.google.android.gms.internal.play_billing.zze.zze(this.f13519c, this.f13516F.longValue()), new fip(externalOfferAvailabilityListener, this.f13523g, this.f13528l, null));
            }
        } catch (DeadObjectException e) {
            m7878e0(externalOfferAvailabilityListener, C1791i.f13580m, 91, e);
        } catch (Exception e2) {
            m7878e0(externalOfferAvailabilityListener, C1791i.f13578k, 91, e2);
        }
        return null;
    }

    /* renamed from: e0 */
    public final void m7878e0(ExternalOfferAvailabilityListener externalOfferAvailabilityListener, BillingResult billingResult, int i, @Nullable Exception exc) {
        m7846L0(i, 23, billingResult, zzcg.zza(exc));
        externalOfferAvailabilityListener.onExternalOfferAvailabilityResponse(billingResult);
    }

    /* renamed from: e1 */
    public final /* synthetic */ Object m7879e1(ConsumeParams consumeParams, ConsumeResponseListener consumeResponseListener) throws Exception {
        m7841J(consumeParams, consumeResponseListener);
        return null;
    }

    @Override // com.android.billingclient.api.BillingClient
    public void endConnection() {
        m7848M0(12);
        synchronized (this.f13517a) {
            try {
                if (this.f13521e != null) {
                    this.f13521e.m53503f();
                }
            } finally {
                com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Unbinding from service.");
                m7854Q();
                m7852P();
            }
            try {
                com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Unbinding from service.");
                m7854Q();
            } catch (Throwable th) {
                com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "There was an exception while unbinding from the service while ending connection!", th);
            }
            try {
                m7852P();
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    /* renamed from: f */
    public final /* synthetic */ Void m7880f(AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener, Activity activity, ResultReceiver resultReceiver) throws Exception {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        try {
            synchronized (this.f13517a) {
                zzanVar = this.f13524h;
            }
            if (zzanVar == null) {
                m7840I0(alternativeBillingOnlyInformationDialogListener, C1791i.f13580m, 119, null);
            } else {
                zzanVar.zzo(21, this.f13522f.getPackageName(), com.google.android.gms.internal.play_billing.zze.zze(this.f13519c, this.f13516F.longValue()), new BinderC1785c(new WeakReference(activity), resultReceiver, null));
            }
        } catch (DeadObjectException e) {
            m7840I0(alternativeBillingOnlyInformationDialogListener, C1791i.f13580m, 74, e);
        } catch (Exception e2) {
            m7840I0(alternativeBillingOnlyInformationDialogListener, C1791i.f13578k, 74, e2);
        }
        return null;
    }

    /* renamed from: f1 */
    public final /* synthetic */ Object m7881f1(BillingConfigResponseListener billingConfigResponseListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        zzbl zzblVar = null;
        try {
            synchronized (this.f13517a) {
                zzanVar = this.f13524h;
            }
            if (zzanVar == null) {
                m7838H0(billingConfigResponseListener, C1791i.f13580m, 119, null);
            } else {
                String packageName = this.f13522f.getPackageName();
                String str = this.f13519c;
                long longValue = this.f13516F.longValue();
                Bundle bundle = new Bundle();
                com.google.android.gms.internal.play_billing.zze.zzc(bundle, str, longValue);
                zzanVar.zzp(18, packageName, bundle, new BinderC1786d(billingConfigResponseListener, this.f13523g, this.f13528l, zzblVar));
            }
        } catch (DeadObjectException e) {
            m7838H0(billingConfigResponseListener, C1791i.f13580m, 62, e);
        } catch (Exception e2) {
            m7838H0(billingConfigResponseListener, C1791i.f13578k, 62, e2);
        }
        return null;
    }

    /* renamed from: g */
    public final /* synthetic */ Void m7882g(ExternalOfferInformationDialogListener externalOfferInformationDialogListener, Activity activity, ResultReceiver resultReceiver) throws Exception {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        try {
            synchronized (this.f13517a) {
                zzanVar = this.f13524h;
            }
            if (zzanVar == null) {
                m7837G0(externalOfferInformationDialogListener, C1791i.f13580m, 119, null);
            } else {
                zzanVar.zzq(22, this.f13522f.getPackageName(), com.google.android.gms.internal.play_billing.zze.zze(this.f13519c, this.f13516F.longValue()), new BinderC1787e(new WeakReference(activity), resultReceiver, null));
            }
        } catch (DeadObjectException e) {
            m7837G0(externalOfferInformationDialogListener, C1791i.f13580m, 98, e);
        } catch (Exception e2) {
            m7837G0(externalOfferInformationDialogListener, C1791i.f13578k, 98, e2);
        }
        return null;
    }

    /* renamed from: g0 */
    public final /* synthetic */ void m7883g0(AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener) {
        BillingResult billingResult = C1791i.f13581n;
        m7844K0(24, 3, billingResult);
        acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult);
    }

    /* renamed from: g1 */
    public final /* synthetic */ Object m7884g1(Bundle bundle, Activity activity, ResultReceiver resultReceiver) throws Exception {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        try {
            synchronized (this.f13517a) {
                zzanVar = this.f13524h;
            }
            if (zzanVar == null) {
                m7842J0(-1, 119, null);
            } else {
                zzanVar.zzt(12, this.f13522f.getPackageName(), bundle, new BinderC1788f(new WeakReference(activity), resultReceiver, null));
            }
        } catch (DeadObjectException e) {
            m7842J0(-1, 118, e);
        } catch (Exception e2) {
            m7842J0(6, 118, e2);
        }
        return null;
    }

    @Override // com.android.billingclient.api.BillingClient
    @zzh
    public void getBillingConfigAsync(GetBillingConfigParams getBillingConfigParams, final BillingConfigResponseListener billingConfigResponseListener) {
        if (!isReady()) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Service disconnected.");
            BillingResult billingResult = C1791i.f13580m;
            m7844K0(2, 13, billingResult);
            billingConfigResponseListener.onBillingConfigResponse(billingResult, null);
            return;
        }
        if (!this.f13538v) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Current client doesn't support get billing config.");
            BillingResult billingResult2 = C1791i.f13560A;
            m7844K0(32, 13, billingResult2);
            billingConfigResponseListener.onBillingConfigResponse(billingResult2, null);
            return;
        }
        if (m7808i(new Callable() { // from class: com.android.billingclient.api.zzv
            @Override // java.util.concurrent.Callable
            public final Object call() {
                C1783a.this.m7881f1(billingConfigResponseListener);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzw
            @Override // java.lang.Runnable
            public final void run() {
                C1783a.this.m7892l0(billingConfigResponseListener);
            }
        }, m7832C0(), m7839I()) == null) {
            BillingResult m7835F = m7835F();
            m7844K0(25, 13, m7835F);
            billingConfigResponseListener.onBillingConfigResponse(m7835F, null);
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public final int getConnectionState() {
        int i;
        synchronized (this.f13517a) {
            i = this.f13518b;
        }
        return i;
    }

    /* renamed from: h0 */
    public final /* synthetic */ void m7885h0(BillingResult billingResult) {
        if (this.f13521e.m53502d() != null) {
            this.f13521e.m53502d().onPurchasesUpdated(billingResult, null);
        } else {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "No valid listener is set in BroadcastManager");
        }
    }

    /* renamed from: i0 */
    public final /* synthetic */ void m7886i0(ConsumeResponseListener consumeResponseListener, ConsumeParams consumeParams) {
        BillingResult billingResult = C1791i.f13581n;
        m7844K0(24, 4, billingResult);
        consumeResponseListener.onConsumeResponse(billingResult, consumeParams.getPurchaseToken());
    }

    /* renamed from: i1 */
    public final /* synthetic */ Void m7887i1(AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        zzbl zzblVar = null;
        try {
            synchronized (this.f13517a) {
                zzanVar = this.f13524h;
            }
            if (zzanVar == null) {
                m7873c0(alternativeBillingOnlyReportingDetailsListener, C1791i.f13580m, 119, null);
            } else {
                zzanVar.zzm(21, this.f13522f.getPackageName(), com.google.android.gms.internal.play_billing.zze.zze(this.f13519c, this.f13516F.longValue()), new xhp(alternativeBillingOnlyReportingDetailsListener, this.f13523g, this.f13528l, zzblVar));
            }
        } catch (DeadObjectException e) {
            m7873c0(alternativeBillingOnlyReportingDetailsListener, C1791i.f13580m, 70, e);
        } catch (Exception e2) {
            m7873c0(alternativeBillingOnlyReportingDetailsListener, C1791i.f13578k, 70, e2);
        }
        return null;
    }

    @Override // com.android.billingclient.api.BillingClient
    @zzf
    public void isAlternativeBillingOnlyAvailableAsync(final AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener) {
        if (!isReady()) {
            m7868a0(alternativeBillingOnlyAvailabilityListener, C1791i.f13580m, 2, null);
            return;
        }
        if (!this.f13541y) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Current client doesn't support alternative billing only.");
            m7868a0(alternativeBillingOnlyAvailabilityListener, C1791i.f13564E, 66, null);
        } else if (m7808i(new Callable() { // from class: com.android.billingclient.api.zzad
            @Override // java.util.concurrent.Callable
            public final Object call() {
                C1783a.this.m7891k1(alternativeBillingOnlyAvailabilityListener);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzae
            @Override // java.lang.Runnable
            public final void run() {
                C1783a.this.m7893m0(alternativeBillingOnlyAvailabilityListener);
            }
        }, m7832C0(), m7839I()) == null) {
            m7868a0(alternativeBillingOnlyAvailabilityListener, m7835F(), 25, null);
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    @zzg
    public void isExternalOfferAvailableAsync(final ExternalOfferAvailabilityListener externalOfferAvailabilityListener) {
        if (!isReady()) {
            m7878e0(externalOfferAvailabilityListener, C1791i.f13580m, 2, null);
            return;
        }
        if (!this.f13542z) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Current client doesn't support external offer.");
            m7878e0(externalOfferAvailabilityListener, C1791i.f13591x, 103, null);
        } else if (m7808i(new Callable() { // from class: com.android.billingclient.api.zzap
            @Override // java.util.concurrent.Callable
            public final Object call() {
                C1783a.this.m7877e(externalOfferAvailabilityListener);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzaq
            @Override // java.lang.Runnable
            public final void run() {
                C1783a.this.m7894n0(externalOfferAvailabilityListener);
            }
        }, m7832C0(), m7839I()) == null) {
            m7878e0(externalOfferAvailabilityListener, m7835F(), 25, null);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.android.billingclient.api.BillingClient
    public final BillingResult isFeatureSupported(String str) {
        char c;
        if (!isReady()) {
            BillingResult billingResult = C1791i.f13580m;
            if (billingResult.getResponseCode() != 0) {
                m7844K0(2, 5, billingResult);
            } else {
                m7848M0(5);
            }
            return billingResult;
        }
        int i = C1791i.f13567H;
        switch (str.hashCode()) {
            case -422092961:
                if (str.equals(BillingClient.FeatureType.SUBSCRIPTIONS_UPDATE)) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 96321:
                if (str.equals("aaa")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 97314:
                if (str.equals(BillingClient.FeatureType.IN_APP_MESSAGING)) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 98307:
                if (str.equals("ccc")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 99300:
                if (str.equals("ddd")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 100293:
                if (str.equals("eee")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 101286:
                if (str.equals(BillingClient.FeatureType.PRODUCT_DETAILS)) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 102279:
                if (str.equals(BillingClient.FeatureType.BILLING_CONFIG)) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 103272:
                if (str.equals("hhh")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 104265:
                if (str.equals("iii")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case 105258:
                if (str.equals(BillingClient.FeatureType.ALTERNATIVE_BILLING_ONLY)) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case 106251:
                if (str.equals(BillingClient.FeatureType.EXTERNAL_OFFER)) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case 107244:
                if (str.equals("lll")) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case 207616302:
                if (str.equals(BillingClient.FeatureType.PRICE_CHANGE_CONFIRMATION)) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1987365622:
                if (str.equals(BillingClient.FeatureType.SUBSCRIPTIONS)) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                BillingResult billingResult2 = this.f13526j ? C1791i.f13579l : C1791i.f13582o;
                m7864Y(billingResult2, 9, 2);
                return billingResult2;
            case 1:
                BillingResult billingResult3 = this.f13527k ? C1791i.f13579l : C1791i.f13583p;
                m7864Y(billingResult3, 10, 3);
                return billingResult3;
            case 2:
                BillingResult billingResult4 = this.f13530n ? C1791i.f13579l : C1791i.f13585r;
                m7864Y(billingResult4, 35, 4);
                return billingResult4;
            case 3:
                BillingResult billingResult5 = this.f13533q ? C1791i.f13579l : C1791i.f13590w;
                m7864Y(billingResult5, 30, 5);
                return billingResult5;
            case 4:
                BillingResult billingResult6 = this.f13535s ? C1791i.f13579l : C1791i.f13586s;
                m7864Y(billingResult6, 31, 6);
                return billingResult6;
            case 5:
                BillingResult billingResult7 = this.f13534r ? C1791i.f13579l : C1791i.f13588u;
                m7864Y(billingResult7, 21, 7);
                return billingResult7;
            case 6:
                BillingResult billingResult8 = this.f13536t ? C1791i.f13579l : C1791i.f13587t;
                m7864Y(billingResult8, 19, 8);
                return billingResult8;
            case 7:
                BillingResult billingResult9 = this.f13536t ? C1791i.f13579l : C1791i.f13587t;
                m7864Y(billingResult9, 61, 9);
                return billingResult9;
            case '\b':
                BillingResult billingResult10 = this.f13537u ? C1791i.f13579l : C1791i.f13589v;
                m7864Y(billingResult10, 20, 10);
                return billingResult10;
            case '\t':
                BillingResult billingResult11 = this.f13538v ? C1791i.f13579l : C1791i.f13560A;
                m7864Y(billingResult11, 32, 11);
                return billingResult11;
            case '\n':
                BillingResult billingResult12 = this.f13538v ? C1791i.f13579l : C1791i.f13561B;
                m7864Y(billingResult12, 33, 12);
                return billingResult12;
            case 11:
                BillingResult billingResult13 = this.f13540x ? C1791i.f13579l : C1791i.f13563D;
                m7864Y(billingResult13, 60, 13);
                return billingResult13;
            case '\f':
                BillingResult billingResult14 = this.f13541y ? C1791i.f13579l : C1791i.f13564E;
                m7864Y(billingResult14, 66, 14);
                return billingResult14;
            case '\r':
                BillingResult billingResult15 = this.f13542z ? C1791i.f13579l : C1791i.f13591x;
                m7864Y(billingResult15, 103, 18);
                return billingResult15;
            case 14:
                BillingResult billingResult16 = this.f13511A ? C1791i.f13579l : C1791i.f13592y;
                m7864Y(billingResult16, 116, 19);
                return billingResult16;
            default:
                com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Unsupported feature: ".concat(str));
                BillingResult billingResult17 = C1791i.f13593z;
                m7864Y(billingResult17, 34, 1);
                return billingResult17;
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public final boolean isReady() {
        boolean z;
        synchronized (this.f13517a) {
            z = false;
            if (this.f13518b == 2 && this.f13524h != null && this.f13525i != null) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: j0 */
    public final /* synthetic */ void m7888j0(AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener) {
        m7873c0(alternativeBillingOnlyReportingDetailsListener, C1791i.f13581n, 24, null);
    }

    /* renamed from: j1 */
    public final /* synthetic */ Void m7889j1(ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        zzbl zzblVar = null;
        try {
            synchronized (this.f13517a) {
                zzanVar = this.f13524h;
            }
            if (zzanVar == null) {
                m7875d0(externalOfferReportingDetailsListener, C1791i.f13580m, 119, null);
            } else {
                zzanVar.zzn(22, this.f13522f.getPackageName(), com.google.android.gms.internal.play_billing.zze.zze(this.f13519c, this.f13516F.longValue()), new yhp(externalOfferReportingDetailsListener, this.f13523g, this.f13528l, zzblVar));
            }
        } catch (DeadObjectException e) {
            m7875d0(externalOfferReportingDetailsListener, C1791i.f13580m, 94, e);
        } catch (Exception e2) {
            m7875d0(externalOfferReportingDetailsListener, C1791i.f13578k, 94, e2);
        }
        return null;
    }

    /* renamed from: k0 */
    public final /* synthetic */ void m7890k0(ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener) {
        m7875d0(externalOfferReportingDetailsListener, C1791i.f13581n, 24, null);
    }

    /* renamed from: k1 */
    public final /* synthetic */ Void m7891k1(AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        try {
            synchronized (this.f13517a) {
                zzanVar = this.f13524h;
            }
            if (zzanVar == null) {
                m7868a0(alternativeBillingOnlyAvailabilityListener, C1791i.f13580m, 119, null);
            } else {
                zzanVar.zzr(21, this.f13522f.getPackageName(), com.google.android.gms.internal.play_billing.zze.zze(this.f13519c, this.f13516F.longValue()), new dip(alternativeBillingOnlyAvailabilityListener, this.f13523g, this.f13528l, null));
            }
        } catch (DeadObjectException e) {
            m7868a0(alternativeBillingOnlyAvailabilityListener, C1791i.f13580m, 69, e);
        } catch (Exception e2) {
            m7868a0(alternativeBillingOnlyAvailabilityListener, C1791i.f13578k, 69, e2);
        }
        return null;
    }

    /* renamed from: l0 */
    public final /* synthetic */ void m7892l0(BillingConfigResponseListener billingConfigResponseListener) {
        BillingResult billingResult = C1791i.f13581n;
        m7844K0(24, 13, billingResult);
        billingConfigResponseListener.onBillingConfigResponse(billingResult, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:131:0x0461  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x046c  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x04a9  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0588  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x058f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:184:0x04b7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x04c0  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x04c3  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0474  */
    @Override // com.android.billingclient.api.BillingClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.android.billingclient.api.BillingResult launchBillingFlow(android.app.Activity r33, final com.android.billingclient.api.BillingFlowParams r34) {
        /*
            Method dump skipped, instructions count: 1533
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.C1783a.launchBillingFlow(android.app.Activity, com.android.billingclient.api.BillingFlowParams):com.android.billingclient.api.BillingResult");
    }

    /* renamed from: m0 */
    public final /* synthetic */ void m7893m0(AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener) {
        m7868a0(alternativeBillingOnlyAvailabilityListener, C1791i.f13581n, 24, null);
    }

    /* renamed from: n0 */
    public final /* synthetic */ void m7894n0(ExternalOfferAvailabilityListener externalOfferAvailabilityListener) {
        m7878e0(externalOfferAvailabilityListener, C1791i.f13581n, 24, null);
    }

    /* renamed from: o0 */
    public final /* synthetic */ void m7895o0(ProductDetailsResponseListener productDetailsResponseListener) {
        BillingResult billingResult = C1791i.f13581n;
        m7844K0(24, 7, billingResult);
        productDetailsResponseListener.onProductDetailsResponse(billingResult, new ArrayList());
    }

    /* renamed from: p0 */
    public final /* synthetic */ void m7896p0(PurchaseHistoryResponseListener purchaseHistoryResponseListener) {
        BillingResult billingResult = C1791i.f13581n;
        m7844K0(24, 11, billingResult);
        purchaseHistoryResponseListener.onPurchaseHistoryResponse(billingResult, null);
    }

    /* renamed from: q0 */
    public final /* synthetic */ void m7897q0(PurchasesResponseListener purchasesResponseListener) {
        BillingResult billingResult = C1791i.f13581n;
        m7844K0(24, 9, billingResult);
        purchasesResponseListener.onQueryPurchasesResponse(billingResult, com.google.android.gms.internal.play_billing.zzco.zzl());
    }

    @Override // com.android.billingclient.api.BillingClient
    public void queryProductDetailsAsync(final QueryProductDetailsParams queryProductDetailsParams, final ProductDetailsResponseListener productDetailsResponseListener) {
        if (!isReady()) {
            BillingResult billingResult = C1791i.f13580m;
            m7844K0(2, 7, billingResult);
            productDetailsResponseListener.onProductDetailsResponse(billingResult, new ArrayList());
        } else {
            if (!this.f13537u) {
                com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Querying product details is not supported.");
                BillingResult billingResult2 = C1791i.f13589v;
                m7844K0(20, 7, billingResult2);
                productDetailsResponseListener.onProductDetailsResponse(billingResult2, new ArrayList());
                return;
            }
            if (m7808i(new Callable() { // from class: com.android.billingclient.api.zzam
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    gip m7856S0 = C1783a.this.m7856S0(queryProductDetailsParams);
                    productDetailsResponseListener.onProductDetailsResponse(C1791i.m7928a(m7856S0.m54282a(), m7856S0.m54283b()), m7856S0.m54284c());
                    return null;
                }
            }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzan
                @Override // java.lang.Runnable
                public final void run() {
                    C1783a.this.m7895o0(productDetailsResponseListener);
                }
            }, m7832C0(), m7839I()) == null) {
                BillingResult m7835F = m7835F();
                m7844K0(25, 7, m7835F);
                productDetailsResponseListener.onProductDetailsResponse(m7835F, new ArrayList());
            }
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public final void queryPurchaseHistoryAsync(QueryPurchaseHistoryParams queryPurchaseHistoryParams, PurchaseHistoryResponseListener purchaseHistoryResponseListener) {
        m7847M(queryPurchaseHistoryParams.zza(), purchaseHistoryResponseListener);
    }

    @Override // com.android.billingclient.api.BillingClient
    public final void queryPurchasesAsync(QueryPurchasesParams queryPurchasesParams, PurchasesResponseListener purchasesResponseListener) {
        m7849N(queryPurchasesParams.zza(), purchasesResponseListener);
    }

    @Override // com.android.billingclient.api.BillingClient
    public void querySkuDetailsAsync(SkuDetailsParams skuDetailsParams, final SkuDetailsResponseListener skuDetailsResponseListener) {
        if (!isReady()) {
            BillingResult billingResult = C1791i.f13580m;
            m7844K0(2, 8, billingResult);
            skuDetailsResponseListener.onSkuDetailsResponse(billingResult, null);
            return;
        }
        final String skuType = skuDetailsParams.getSkuType();
        final List<String> skusList = skuDetailsParams.getSkusList();
        if (TextUtils.isEmpty(skuType)) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Please fix the input params. SKU type can't be empty.");
            BillingResult billingResult2 = C1791i.f13574g;
            m7844K0(49, 8, billingResult2);
            skuDetailsResponseListener.onSkuDetailsResponse(billingResult2, null);
            return;
        }
        if (skusList == null) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Please fix the input params. The list of SKUs can't be empty.");
            BillingResult billingResult3 = C1791i.f13573f;
            m7844K0(48, 8, billingResult3);
            skuDetailsResponseListener.onSkuDetailsResponse(billingResult3, null);
            return;
        }
        final String str = null;
        if (m7808i(new Callable(skuType, skusList, str, skuDetailsResponseListener) { // from class: com.android.billingclient.api.zzz
            public final /* synthetic */ String zzb;
            public final /* synthetic */ List zzc;
            public final /* synthetic */ SkuDetailsResponseListener zzd;

            {
                this.zzd = skuDetailsResponseListener;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                ujp m7865Y0 = C1783a.this.m7865Y0(this.zzb, this.zzc, null);
                this.zzd.onSkuDetailsResponse(C1791i.m7928a(m7865Y0.m57631a(), m7865Y0.m57632b()), m7865Y0.m57633c());
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzab
            @Override // java.lang.Runnable
            public final void run() {
                C1783a.this.m7898r0(skuDetailsResponseListener);
            }
        }, m7832C0(), m7839I()) == null) {
            BillingResult m7835F = m7835F();
            m7844K0(25, 8, m7835F);
            skuDetailsResponseListener.onSkuDetailsResponse(m7835F, null);
        }
    }

    /* renamed from: r0 */
    public final /* synthetic */ void m7898r0(SkuDetailsResponseListener skuDetailsResponseListener) {
        BillingResult billingResult = C1791i.f13581n;
        m7844K0(24, 8, billingResult);
        skuDetailsResponseListener.onSkuDetailsResponse(billingResult, null);
    }

    /* renamed from: s0 */
    public final /* synthetic */ void m7899s0(AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener) {
        m7840I0(alternativeBillingOnlyInformationDialogListener, C1791i.f13581n, 24, null);
    }

    @Override // com.android.billingclient.api.BillingClient
    @zzf
    public BillingResult showAlternativeBillingOnlyInformationDialog(final Activity activity, final AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener) {
        if (activity == null) {
            throw new IllegalArgumentException("Please provide a valid activity.");
        }
        if (!isReady()) {
            BillingResult billingResult = C1791i.f13580m;
            m7844K0(2, 16, billingResult);
            return billingResult;
        }
        if (!this.f13541y) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Current Play Store version doesn't support alternative billing only.");
            BillingResult billingResult2 = C1791i.f13564E;
            m7844K0(66, 16, billingResult2);
            return billingResult2;
        }
        final zzaw zzawVar = new zzaw(this, this.f13520d, alternativeBillingOnlyInformationDialogListener);
        if (m7808i(new Callable() { // from class: com.android.billingclient.api.zzr
            @Override // java.util.concurrent.Callable
            public final Object call() {
                C1783a.this.m7880f(alternativeBillingOnlyInformationDialogListener, activity, zzawVar);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzs
            @Override // java.lang.Runnable
            public final void run() {
                C1783a.this.m7899s0(alternativeBillingOnlyInformationDialogListener);
            }
        }, this.f13520d, m7839I()) != null) {
            return C1791i.f13579l;
        }
        BillingResult m7835F = m7835F();
        m7844K0(25, 16, m7835F);
        return m7835F;
    }

    @Override // com.android.billingclient.api.BillingClient
    @zzg
    public BillingResult showExternalOfferInformationDialog(final Activity activity, final ExternalOfferInformationDialogListener externalOfferInformationDialogListener) {
        if (activity == null) {
            throw new IllegalArgumentException("Please provide a valid activity.");
        }
        if (!isReady()) {
            BillingResult billingResult = C1791i.f13580m;
            m7844K0(2, 25, billingResult);
            return billingResult;
        }
        if (!this.f13542z) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Current Play Store version doesn't support external offer.");
            BillingResult billingResult2 = C1791i.f13591x;
            m7844K0(103, 25, billingResult2);
            return billingResult2;
        }
        final zzax zzaxVar = new zzax(this, this.f13520d, externalOfferInformationDialogListener);
        if (m7808i(new Callable() { // from class: com.android.billingclient.api.zzai
            @Override // java.util.concurrent.Callable
            public final Object call() {
                C1783a.this.m7882g(externalOfferInformationDialogListener, activity, zzaxVar);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzak
            @Override // java.lang.Runnable
            public final void run() {
                C1783a.this.m7900t0(externalOfferInformationDialogListener);
            }
        }, this.f13520d, m7839I()) != null) {
            return C1791i.f13579l;
        }
        BillingResult m7835F = m7835F();
        m7844K0(25, 25, m7835F);
        return m7835F;
    }

    @Override // com.android.billingclient.api.BillingClient
    public final BillingResult showInAppMessages(final Activity activity, InAppMessageParams inAppMessageParams, InAppMessageResponseListener inAppMessageResponseListener) {
        if (!isReady()) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Service disconnected.");
            return C1791i.f13580m;
        }
        if (!this.f13533q) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Current client doesn't support showing in-app messages.");
            return C1791i.f13590w;
        }
        View findViewById = activity.findViewById(R.id.content);
        IBinder windowToken = findViewById.getWindowToken();
        Rect rect = new Rect();
        findViewById.getGlobalVisibleRect(rect);
        final Bundle bundle = new Bundle();
        BundleCompat.putBinder(bundle, "KEY_WINDOW_TOKEN", windowToken);
        bundle.putInt("KEY_DIMEN_LEFT", rect.left);
        bundle.putInt("KEY_DIMEN_TOP", rect.top);
        bundle.putInt("KEY_DIMEN_RIGHT", rect.right);
        bundle.putInt("KEY_DIMEN_BOTTOM", rect.bottom);
        bundle.putString("playBillingLibraryVersion", this.f13519c);
        bundle.putIntegerArrayList("KEY_CATEGORY_IDS", inAppMessageParams.m7765a());
        final zzav zzavVar = new zzav(this, this.f13520d, inAppMessageResponseListener);
        m7808i(new Callable() { // from class: com.android.billingclient.api.zzao
            @Override // java.util.concurrent.Callable
            public final Object call() {
                C1783a.this.m7884g1(bundle, activity, zzavVar);
                return null;
            }
        }, 5000L, null, this.f13520d, m7839I());
        return C1791i.f13579l;
    }

    @Override // com.android.billingclient.api.BillingClient
    public void startConnection(BillingClientStateListener billingClientStateListener) {
        BillingResult billingResult;
        BillingResult billingResult2;
        synchronized (this.f13517a) {
            if (isReady()) {
                billingResult = m7834E0();
            } else {
                if (this.f13518b == 1) {
                    com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Client is already in the process of connecting to billing service.");
                    billingResult2 = C1791i.f13572e;
                    m7844K0(37, 6, billingResult2);
                } else if (this.f13518b == 3) {
                    com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
                    billingResult2 = C1791i.f13580m;
                    m7844K0(38, 6, billingResult2);
                } else {
                    m7850O(1);
                    m7854Q();
                    com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Starting in-app billing setup.");
                    this.f13525i = new ServiceConnectionC1784b(this, billingClientStateListener, null);
                    Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
                    intent.setPackage("com.android.vending");
                    List<ResolveInfo> queryIntentServices = this.f13522f.getPackageManager().queryIntentServices(intent, 0);
                    int i = 41;
                    if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
                        ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
                        i = 40;
                        if (serviceInfo != null) {
                            String str = serviceInfo.packageName;
                            String str2 = serviceInfo.name;
                            if (!Objects.equals(str, "com.android.vending") || str2 == null) {
                                com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "The device doesn't have valid Play Store.");
                            } else {
                                ComponentName componentName = new ComponentName(str, str2);
                                Intent intent2 = new Intent(intent);
                                intent2.setComponent(componentName);
                                intent2.putExtra("playBillingLibraryVersion", this.f13519c);
                                synchronized (this.f13517a) {
                                    if (this.f13518b == 2) {
                                        billingResult = m7834E0();
                                    } else if (this.f13518b != 1) {
                                        com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Client state no longer CONNECTING, returning service disconnected.");
                                        billingResult2 = C1791i.f13580m;
                                        m7844K0(117, 6, billingResult2);
                                    } else {
                                        ServiceConnectionC1784b serviceConnectionC1784b = this.f13525i;
                                        if (this.f13522f.bindService(intent2, serviceConnectionC1784b, 1)) {
                                            com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Service was bonded successfully.");
                                            billingResult = null;
                                        } else {
                                            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Connection to Billing service is blocked.");
                                            i = 39;
                                        }
                                    }
                                }
                            }
                        } else {
                            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "The device doesn't have valid Play Store.");
                        }
                    }
                    m7850O(0);
                    com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Billing service unavailable on device.");
                    BillingResult billingResult3 = C1791i.f13570c;
                    m7844K0(i, 6, billingResult3);
                    billingResult = billingResult3;
                }
                billingResult = billingResult2;
            }
        }
        if (billingResult != null) {
            billingClientStateListener.onBillingSetupFinished(billingResult);
        }
    }

    /* renamed from: t0 */
    public final /* synthetic */ void m7900t0(ExternalOfferInformationDialogListener externalOfferInformationDialogListener) {
        m7837G0(externalOfferInformationDialogListener, C1791i.f13581n, 24, null);
    }

    @Override // com.android.billingclient.api.BillingClient
    public final void queryPurchaseHistoryAsync(String str, PurchaseHistoryResponseListener purchaseHistoryResponseListener) {
        m7847M(str, purchaseHistoryResponseListener);
    }

    @Override // com.android.billingclient.api.BillingClient
    public final void queryPurchasesAsync(String str, PurchasesResponseListener purchasesResponseListener) {
        m7849N(str, purchasesResponseListener);
    }

    @AnyThread
    public C1783a(Context context, PendingPurchasesParams pendingPurchasesParams, PurchasesUpdatedListener purchasesUpdatedListener, String str, String str2, @Nullable UserChoiceBillingListener userChoiceBillingListener, @Nullable fjp fjpVar, @Nullable ExecutorService executorService) {
        this.f13517a = new Object();
        this.f13518b = 0;
        this.f13520d = new Handler(Looper.getMainLooper());
        this.f13528l = 0;
        this.f13516F = Long.valueOf(new Random().nextLong());
        this.f13519c = str;
        m7867a(context, purchasesUpdatedListener, pendingPurchasesParams, userChoiceBillingListener, str, null);
    }

    public C1783a(String str) {
        this.f13517a = new Object();
        this.f13518b = 0;
        this.f13520d = new Handler(Looper.getMainLooper());
        this.f13528l = 0;
        this.f13516F = Long.valueOf(new Random().nextLong());
        this.f13519c = str;
    }

    @AnyThread
    public C1783a(@Nullable String str, Context context, @Nullable fjp fjpVar, @Nullable ExecutorService executorService) {
        this.f13517a = new Object();
        this.f13518b = 0;
        this.f13520d = new Handler(Looper.getMainLooper());
        this.f13528l = 0;
        Long valueOf = Long.valueOf(new Random().nextLong());
        this.f13516F = valueOf;
        String m7794H = m7794H();
        this.f13519c = m7794H;
        this.f13522f = context.getApplicationContext();
        zzks zzc = zzku.zzc();
        zzc.zzo(m7794H);
        zzc.zzn(this.f13522f.getPackageName());
        zzc.zzm(valueOf.longValue());
        this.f13523g = new gjp(this.f13522f, (zzku) zzc.zzf());
        this.f13522f.getPackageName();
    }

    @AnyThread
    public C1783a(@Nullable String str, PendingPurchasesParams pendingPurchasesParams, Context context, zzco zzcoVar, @Nullable fjp fjpVar, @Nullable ExecutorService executorService) {
        this.f13517a = new Object();
        this.f13518b = 0;
        this.f13520d = new Handler(Looper.getMainLooper());
        this.f13528l = 0;
        Long valueOf = Long.valueOf(new Random().nextLong());
        this.f13516F = valueOf;
        this.f13519c = m7794H();
        this.f13522f = context.getApplicationContext();
        zzks zzc = zzku.zzc();
        zzc.zzo(m7794H());
        zzc.zzn(this.f13522f.getPackageName());
        zzc.zzm(valueOf.longValue());
        this.f13523g = new gjp(this.f13522f, (zzku) zzc.zzf());
        com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Billing client should have a valid listener but the provided is null.");
        this.f13521e = new cqp(this.f13522f, null, null, null, null, this.f13523g);
        this.f13512B = pendingPurchasesParams;
        this.f13522f.getPackageName();
    }

    @AnyThread
    public C1783a(@Nullable String str, PendingPurchasesParams pendingPurchasesParams, Context context, PurchasesUpdatedListener purchasesUpdatedListener, @Nullable zzb zzbVar, @Nullable fjp fjpVar, @Nullable ExecutorService executorService) {
        String m7794H = m7794H();
        this.f13517a = new Object();
        this.f13518b = 0;
        this.f13520d = new Handler(Looper.getMainLooper());
        this.f13528l = 0;
        this.f13516F = Long.valueOf(new Random().nextLong());
        this.f13519c = m7794H;
        m7870b(context, purchasesUpdatedListener, pendingPurchasesParams, null, m7794H, null);
    }

    @AnyThread
    public C1783a(@Nullable String str, PendingPurchasesParams pendingPurchasesParams, Context context, PurchasesUpdatedListener purchasesUpdatedListener, @Nullable UserChoiceBillingListener userChoiceBillingListener, @Nullable fjp fjpVar, @Nullable ExecutorService executorService) {
        this(context, pendingPurchasesParams, purchasesUpdatedListener, m7794H(), null, userChoiceBillingListener, null, null);
    }
}
