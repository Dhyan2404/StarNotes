package com.google.android.gms.auth.api.accounttransfer;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.ApiExceptionMapper;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.auth.zzaq;
import com.google.android.gms.internal.auth.zzav;
import com.google.android.gms.internal.auth.zzax;
import com.google.android.gms.internal.auth.zzaz;
import com.google.android.gms.internal.auth.zzbb;
import com.google.android.gms.tasks.Task;
import com.sunia.HTREnginev2.bkp;
import com.sunia.HTREnginev2.ejp;
import com.sunia.HTREnginev2.lhp;
import com.sunia.HTREnginev2.plp;
import com.sunia.HTREnginev2.qkp;
import com.sunia.HTREnginev2.zkp;

/* loaded from: classes5.dex */
public class AccountTransferClient extends GoogleApi<zzr> {

    /* renamed from: a */
    public static final Api.ClientKey f28866a;

    /* renamed from: b */
    public static final Api.AbstractClientBuilder f28867b;

    /* renamed from: c */
    public static final Api f28868c;
    public static final /* synthetic */ int zza = 0;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        f28866a = clientKey;
        lhp lhpVar = new lhp();
        f28867b = lhpVar;
        f28868c = new Api("AccountTransfer.ACCOUNT_TRANSFER_API", lhpVar, clientKey);
    }

    public AccountTransferClient(@NonNull Activity activity, @Nullable zzr zzrVar) {
        super(activity, (Api<zzr>) f28868c, zzr.zza, new GoogleApi.Settings.Builder().setMapper(new ApiExceptionMapper()).build());
    }

    @NonNull
    public Task<DeviceMetaData> getDeviceMetaData(@NonNull String str) {
        Preconditions.checkNotNull(str);
        return doRead(new qkp(this, 1608, new zzaq(str)));
    }

    @NonNull
    public Task<Void> notifyCompletion(@NonNull String str, int i) {
        Preconditions.checkNotNull(str);
        return doWrite(new plp(this, 1610, new zzav(str, i)));
    }

    @NonNull
    public Task<byte[]> retrieveData(@NonNull String str) {
        Preconditions.checkNotNull(str);
        return doRead(new bkp(this, 1607, new zzax(str)));
    }

    @NonNull
    public Task<Void> sendData(@NonNull String str, @NonNull byte[] bArr) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(bArr);
        return doWrite(new ejp(this, 1606, new zzaz(str, bArr)));
    }

    @NonNull
    public Task<Void> showUserChallenge(@NonNull String str, @NonNull PendingIntent pendingIntent) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(pendingIntent);
        return doWrite(new zkp(this, 1609, new zzbb(str, pendingIntent)));
    }

    public AccountTransferClient(@NonNull Context context, @Nullable zzr zzrVar) {
        super(context, (Api<zzr>) f28868c, zzr.zza, new GoogleApi.Settings.Builder().setMapper(new ApiExceptionMapper()).build());
    }
}
