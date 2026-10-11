package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.apps.common.proguard.UsedByReflection;

@UsedByReflection("PlatformActivityProxy")
@zzl
/* loaded from: classes3.dex */
public class ProxyBillingActivity extends Activity {

    /* renamed from: j */
    public static final String f13459j = "result_receiver";

    /* renamed from: k */
    public static final String f13460k = "in_app_message_result_receiver";

    /* renamed from: l */
    public static final String f13461l = "ProxyBillingActivity";

    /* renamed from: m */
    public static final int f13462m = 100;

    /* renamed from: n */
    public static final int f13463n = 101;

    /* renamed from: o */
    public static final int f13464o = 110;

    /* renamed from: p */
    public static final String f13465p = "send_cancelled_broadcast_if_finished";

    /* renamed from: q */
    public static final String f13466q = "activity_code";

    /* renamed from: e */
    @Nullable
    public ResultReceiver f13467e;

    /* renamed from: f */
    @Nullable
    public ResultReceiver f13468f;

    /* renamed from: g */
    public boolean f13469g;

    /* renamed from: h */
    public boolean f13470h;

    /* renamed from: i */
    public int f13471i;

    /* renamed from: a */
    public final Intent m7771a(String str) {
        Intent intent = new Intent("com.android.vending.billing.ALTERNATIVE_BILLING");
        intent.setPackage(getApplicationContext().getPackageName());
        intent.putExtra("ALTERNATIVE_BILLING_USER_CHOICE_DATA", str);
        return intent;
    }

    /* renamed from: b */
    public final Intent m7772b() {
        Intent intent = new Intent("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED");
        intent.setPackage(getApplicationContext().getPackageName());
        return intent;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0080  */
    @Override // android.app.Activity
    @com.android.billingclient.api.zzl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onActivityResult(int r8, int r9, @androidx.annotation.Nullable android.content.Intent r10) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.ProxyBillingActivity.onActivityResult(int, int, android.content.Intent):void");
    }

    @Override // android.app.Activity
    @zzl
    public void onCreate(@Nullable Bundle bundle) {
        PendingIntent pendingIntent;
        super.onCreate(bundle);
        if (bundle != null) {
            com.google.android.gms.internal.play_billing.zze.zzk(f13461l, "Launching Play Store billing flow from savedInstanceState");
            this.f13469g = bundle.getBoolean(f13465p, false);
            if (bundle.containsKey(f13459j)) {
                this.f13467e = (ResultReceiver) bundle.getParcelable(f13459j);
            } else if (bundle.containsKey(f13460k)) {
                this.f13468f = (ResultReceiver) bundle.getParcelable(f13460k);
            }
            this.f13470h = bundle.getBoolean("IS_FLOW_FROM_FIRST_PARTY_CLIENT", false);
            this.f13471i = bundle.getInt(f13466q, 100);
            return;
        }
        com.google.android.gms.internal.play_billing.zze.zzk(f13461l, "Launching Play Store billing flow");
        this.f13471i = 100;
        if (getIntent().hasExtra("BUY_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("BUY_INTENT");
            if (getIntent().hasExtra("IS_FLOW_FROM_FIRST_PARTY_CLIENT") && getIntent().getBooleanExtra("IS_FLOW_FROM_FIRST_PARTY_CLIENT", false)) {
                this.f13470h = true;
                this.f13471i = 110;
            }
        } else if (getIntent().hasExtra("SUBS_MANAGEMENT_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("SUBS_MANAGEMENT_INTENT");
            this.f13467e = (ResultReceiver) getIntent().getParcelableExtra(f13459j);
        } else if (getIntent().hasExtra("IN_APP_MESSAGE_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("IN_APP_MESSAGE_INTENT");
            this.f13468f = (ResultReceiver) getIntent().getParcelableExtra(f13460k);
            this.f13471i = 101;
        } else {
            pendingIntent = null;
        }
        try {
            this.f13469g = true;
            startIntentSenderForResult(pendingIntent.getIntentSender(), this.f13471i, new Intent(), 0, 0, 0);
        } catch (IntentSender.SendIntentException e) {
            com.google.android.gms.internal.play_billing.zze.zzm(f13461l, "Got exception while trying to start a purchase flow.", e);
            ResultReceiver resultReceiver = this.f13467e;
            if (resultReceiver != null) {
                resultReceiver.send(6, null);
            } else {
                ResultReceiver resultReceiver2 = this.f13468f;
                if (resultReceiver2 != null) {
                    resultReceiver2.send(0, null);
                } else {
                    Intent m7772b = m7772b();
                    if (this.f13470h) {
                        m7772b.putExtra("IS_FIRST_PARTY_PURCHASE", true);
                    }
                    m7772b.putExtra("RESPONSE_CODE", 6);
                    m7772b.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
                    sendBroadcast(m7772b);
                }
            }
            this.f13469g = false;
            finish();
        }
    }

    @Override // android.app.Activity
    @zzl
    public void onDestroy() {
        super.onDestroy();
        if (isFinishing() && this.f13469g) {
            Intent m7772b = m7772b();
            m7772b.putExtra("RESPONSE_CODE", 1);
            m7772b.putExtra("DEBUG_MESSAGE", "Billing dialog closed.");
            int i = this.f13471i;
            if (i == 110 || i == 100) {
                m7772b.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
            }
            sendBroadcast(m7772b);
        }
    }

    @Override // android.app.Activity
    @zzl
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ResultReceiver resultReceiver = this.f13467e;
        if (resultReceiver != null) {
            bundle.putParcelable(f13459j, resultReceiver);
        }
        ResultReceiver resultReceiver2 = this.f13468f;
        if (resultReceiver2 != null) {
            bundle.putParcelable(f13460k, resultReceiver2);
        }
        bundle.putBoolean(f13465p, this.f13469g);
        bundle.putBoolean("IS_FLOW_FROM_FIRST_PARTY_CLIENT", this.f13470h);
        bundle.putInt(f13466q, this.f13471i);
    }
}
