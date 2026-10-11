package com.google.firebase.auth.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.TotpSecret;

/* loaded from: classes6.dex */
public final class zzca implements TotpSecret {

    /* renamed from: a */
    public final String f35752a;

    /* renamed from: b */
    public final String f35753b;

    /* renamed from: c */
    public final int f35754c;

    /* renamed from: d */
    public final int f35755d;

    /* renamed from: e */
    public final long f35756e;

    /* renamed from: f */
    public String f35757f;

    /* renamed from: g */
    public FirebaseAuth f35758g;

    public zzca(String str, String str2, int i, int i2, long j, String str3, FirebaseAuth firebaseAuth) {
        Preconditions.checkNotEmpty(str3, "sessionInfo cannot be empty.");
        Preconditions.checkNotNull(firebaseAuth, "firebaseAuth cannot be null.");
        this.f35752a = Preconditions.checkNotEmpty(str, "sharedSecretKey cannot be empty. This is required to generate QR code URL.");
        this.f35753b = Preconditions.checkNotEmpty(str2, "hashAlgorithm cannot be empty.");
        this.f35754c = i;
        this.f35755d = i2;
        this.f35756e = j;
        this.f35757f = str3;
        this.f35758g = firebaseAuth;
    }

    /* renamed from: b */
    public static void m28004b(String str, Activity activity) {
        Preconditions.checkNotNull(activity, "Activity cannot be null.");
        activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)).addFlags(268435456));
    }

    /* renamed from: a */
    public final void m28005a(String str) {
        this.f35758g.getApp().getApplicationContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)).addFlags(268435456));
    }

    @Override // com.google.firebase.auth.TotpSecret
    public final String generateQrCodeUrl() {
        return generateQrCodeUrl(Preconditions.checkNotEmpty(((FirebaseUser) Preconditions.checkNotNull(this.f35758g.getCurrentUser(), "Current user cannot be null, since user is required to be logged in to enroll for TOTP MFA.")).getEmail(), "Email cannot be empty, since verified email is required to use MFA."), this.f35758g.getApp().getName());
    }

    @Override // com.google.firebase.auth.TotpSecret
    public final int getCodeIntervalSeconds() {
        return this.f35755d;
    }

    @Override // com.google.firebase.auth.TotpSecret
    public final int getCodeLength() {
        return this.f35754c;
    }

    @Override // com.google.firebase.auth.TotpSecret
    public final long getEnrollmentCompletionDeadline() {
        return this.f35756e;
    }

    @Override // com.google.firebase.auth.TotpSecret
    public final String getHashAlgorithm() {
        return this.f35753b;
    }

    @Override // com.google.firebase.auth.TotpSecret
    public final String getSessionInfo() {
        return this.f35757f;
    }

    @Override // com.google.firebase.auth.TotpSecret
    public final String getSharedSecretKey() {
        return this.f35752a;
    }

    @Override // com.google.firebase.auth.TotpSecret
    public final void openInOtpApp(String str) {
        Preconditions.checkNotEmpty(str, "qrCodeUrl cannot be empty.");
        try {
            m28005a(str);
        } catch (ActivityNotFoundException unused) {
            m28005a("https://play.google.com/store/search?q=otpauth&c=apps");
        }
    }

    @Override // com.google.firebase.auth.TotpSecret
    public final void openInOtpApp(String str, String str2, Activity activity) {
        Preconditions.checkNotEmpty(str, "QrCodeUrl cannot be empty.");
        Preconditions.checkNotEmpty(str2, "FallbackUrl cannot be empty.");
        Preconditions.checkNotNull(activity, "Activity cannot be null.");
        try {
            m28004b(str, activity);
        } catch (ActivityNotFoundException unused) {
            m28004b(str2, activity);
        }
    }

    @Override // com.google.firebase.auth.TotpSecret
    public final String generateQrCodeUrl(String str, String str2) {
        Preconditions.checkNotEmpty(str, "accountName cannot be empty.");
        Preconditions.checkNotEmpty(str2, "issuer cannot be empty.");
        return String.format(null, "otpauth://totp/%s:%s?secret=%s&issuer=%s&algorithm=%s&digits=%d", str2, str, this.f35752a, str2, this.f35753b, Integer.valueOf(this.f35754c));
    }
}
