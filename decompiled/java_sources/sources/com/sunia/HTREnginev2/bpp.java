package com.sunia.HTREnginev2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.C1791i;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.UserChoiceBillingListener;
import com.android.billingclient.api.UserChoiceDetails;
import com.android.billingclient.api.zzcg;
import com.google.android.gms.internal.play_billing.zzco;
import com.google.android.gms.internal.play_billing.zzgw;
import com.google.android.gms.internal.play_billing.zzjz;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@VisibleForTesting
/* loaded from: classes3.dex */
public final class bpp extends BroadcastReceiver {

    /* renamed from: a */
    public boolean f66014a;

    /* renamed from: b */
    public final boolean f66015b;

    /* renamed from: c */
    public final /* synthetic */ cqp f66016c;

    public bpp(cqp cqpVar, boolean z) {
        this.f66016c = cqpVar;
        this.f66015b = z;
    }

    /* renamed from: a */
    public final synchronized void m53318a(Context context, IntentFilter intentFilter) {
        if (this.f66014a) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            context.registerReceiver(this, intentFilter, true != this.f66015b ? 4 : 2);
        } else {
            context.registerReceiver(this, intentFilter);
        }
        this.f66014a = true;
    }

    /* renamed from: b */
    public final synchronized void m53319b(Context context, IntentFilter intentFilter, String str) {
        if (this.f66014a) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            context.registerReceiver(this, intentFilter, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST", null, true != this.f66015b ? 4 : 2);
        } else {
            context.registerReceiver(this, intentFilter, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST", null);
        }
        this.f66014a = true;
    }

    /* renamed from: c */
    public final synchronized void m53320c(Context context) {
        if (!this.f66014a) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingBroadcastManager", "Receiver is not registered.");
        } else {
            context.unregisterReceiver(this);
            this.f66014a = false;
        }
    }

    /* renamed from: d */
    public final void m53321d(Bundle bundle, BillingResult billingResult, int i) {
        fjp fjpVar;
        fjp fjpVar2;
        try {
            if (bundle.getByteArray("FAILURE_LOGGING_PAYLOAD") != null) {
                fjpVar2 = this.f66016c.f67094e;
                fjpVar2.mo54121c(zzjz.zzC(bundle.getByteArray("FAILURE_LOGGING_PAYLOAD"), zzgw.zza()));
            } else {
                fjpVar = this.f66016c.f67094e;
                fjpVar.mo54121c(zzcg.zzb(23, i, billingResult));
            }
        } catch (Throwable unused) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingBroadcastManager", "Failed parsing Api failure.");
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        PurchasesUpdatedListener purchasesUpdatedListener;
        fjp fjpVar;
        com.android.billingclient.api.zzb zzbVar;
        fjp fjpVar2;
        PurchasesUpdatedListener purchasesUpdatedListener2;
        UserChoiceBillingListener userChoiceBillingListener;
        com.android.billingclient.api.zzb zzbVar2;
        fjp fjpVar3;
        UserChoiceBillingListener userChoiceBillingListener2;
        fjp fjpVar4;
        PurchasesUpdatedListener purchasesUpdatedListener3;
        UserChoiceBillingListener userChoiceBillingListener3;
        fjp fjpVar5;
        PurchasesUpdatedListener purchasesUpdatedListener4;
        PurchasesUpdatedListener purchasesUpdatedListener5;
        fjp fjpVar6;
        PurchasesUpdatedListener purchasesUpdatedListener6;
        PurchasesUpdatedListener purchasesUpdatedListener7;
        Bundle extras = intent.getExtras();
        if (extras == null) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingBroadcastManager", "Bundle is null.");
            fjpVar6 = this.f66016c.f67094e;
            BillingResult billingResult = C1791i.f13578k;
            fjpVar6.mo54121c(zzcg.zzb(11, 1, billingResult));
            cqp cqpVar = this.f66016c;
            purchasesUpdatedListener6 = cqpVar.f67091b;
            if (purchasesUpdatedListener6 != null) {
                purchasesUpdatedListener7 = cqpVar.f67091b;
                purchasesUpdatedListener7.onPurchasesUpdated(billingResult, null);
                return;
            }
            return;
        }
        BillingResult zzf = com.google.android.gms.internal.play_billing.zze.zzf(intent, "BillingBroadcastManager");
        String action = intent.getAction();
        int i = true == Objects.equals(extras.getString("INTENT_SOURCE"), "LAUNCH_BILLING_FLOW") ? 2 : 1;
        if (action.equals("com.android.vending.billing.PURCHASES_UPDATED") || action.equals("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED")) {
            List<Purchase> zzj = com.google.android.gms.internal.play_billing.zze.zzj(extras);
            if (zzf.getResponseCode() == 0) {
                fjpVar = this.f66016c.f67094e;
                fjpVar.mo54125g(zzcg.zzd(i));
            } else {
                m53321d(extras, zzf, i);
            }
            purchasesUpdatedListener = this.f66016c.f67091b;
            purchasesUpdatedListener.onPurchasesUpdated(zzf, zzj);
            return;
        }
        if (action.equals("com.android.vending.billing.ALTERNATIVE_BILLING")) {
            if (zzf.getResponseCode() != 0) {
                m53321d(extras, zzf, i);
                purchasesUpdatedListener5 = this.f66016c.f67091b;
                purchasesUpdatedListener5.onPurchasesUpdated(zzf, zzco.zzl());
                return;
            }
            cqp cqpVar2 = this.f66016c;
            zzbVar = cqpVar2.f67092c;
            if (zzbVar == null) {
                userChoiceBillingListener3 = cqpVar2.f67093d;
                if (userChoiceBillingListener3 == null) {
                    com.google.android.gms.internal.play_billing.zze.zzl("BillingBroadcastManager", "AlternativeBillingListener and UserChoiceBillingListener is null.");
                    fjpVar5 = this.f66016c.f67094e;
                    BillingResult billingResult2 = C1791i.f13578k;
                    fjpVar5.mo54121c(zzcg.zzb(77, i, billingResult2));
                    purchasesUpdatedListener4 = this.f66016c.f67091b;
                    purchasesUpdatedListener4.onPurchasesUpdated(billingResult2, zzco.zzl());
                    return;
                }
            }
            String string = extras.getString("ALTERNATIVE_BILLING_USER_CHOICE_DATA");
            if (string == null) {
                com.google.android.gms.internal.play_billing.zze.zzl("BillingBroadcastManager", "Couldn't find alternative billing user choice data in bundle.");
                fjpVar4 = this.f66016c.f67094e;
                BillingResult billingResult3 = C1791i.f13578k;
                fjpVar4.mo54121c(zzcg.zzb(16, i, billingResult3));
                purchasesUpdatedListener3 = this.f66016c.f67091b;
                purchasesUpdatedListener3.onPurchasesUpdated(billingResult3, zzco.zzl());
                return;
            }
            try {
                userChoiceBillingListener = this.f66016c.f67093d;
                if (userChoiceBillingListener != null) {
                    UserChoiceDetails userChoiceDetails = new UserChoiceDetails(string);
                    userChoiceBillingListener2 = this.f66016c.f67093d;
                    userChoiceBillingListener2.userSelectedAlternativeBilling(userChoiceDetails);
                } else {
                    JSONArray optJSONArray = new JSONObject(string).optJSONArray("products");
                    ArrayList arrayList = new ArrayList();
                    if (optJSONArray != null) {
                        for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                            JSONObject optJSONObject = optJSONArray.optJSONObject(i2);
                            if (optJSONObject != null) {
                                arrayList.add(new com.android.billingclient.api.zzc(optJSONObject, null));
                            }
                        }
                    }
                    zzbVar2 = this.f66016c.f67092c;
                    zzbVar2.zza();
                }
                fjpVar3 = this.f66016c.f67094e;
                fjpVar3.mo54125g(zzcg.zzd(i));
            } catch (JSONException unused) {
                com.google.android.gms.internal.play_billing.zze.zzl("BillingBroadcastManager", String.format("Error when parsing invalid user choice data: [%s]", string));
                fjpVar2 = this.f66016c.f67094e;
                BillingResult billingResult4 = C1791i.f13578k;
                fjpVar2.mo54121c(zzcg.zzb(17, i, billingResult4));
                purchasesUpdatedListener2 = this.f66016c.f67091b;
                purchasesUpdatedListener2.onPurchasesUpdated(billingResult4, zzco.zzl());
            }
        }
    }
}
