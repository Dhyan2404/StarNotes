package com.sunia.HTREnginev2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.LongSparseArray;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.internal.mlkit_common.zzmu;
import com.google.android.gms.internal.mlkit_common.zzna;
import com.google.android.gms.internal.mlkit_common.zzry;
import com.google.android.gms.internal.mlkit_common.zzsh;
import com.google.android.gms.internal.mlkit_common.zzsi;
import com.google.android.gms.internal.mlkit_common.zzsj;
import com.google.android.gms.internal.mlkit_common.zzsk;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.model.RemoteModel;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.common.sdkinternal.model.RemoteModelDownloadManager;

@WorkerThread
/* loaded from: classes6.dex */
public final class tip extends BroadcastReceiver {

    /* renamed from: a */
    public final long f85346a;

    /* renamed from: b */
    public final TaskCompletionSource f85347b;

    /* renamed from: c */
    public final /* synthetic */ RemoteModelDownloadManager f85348c;

    public /* synthetic */ tip(RemoteModelDownloadManager remoteModelDownloadManager, long j, TaskCompletionSource taskCompletionSource, com.google.mlkit.common.sdkinternal.model.zzb zzbVar) {
        this.f85348c = remoteModelDownloadManager;
        this.f85346a = j;
        this.f85347b = taskCompletionSource;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        GmsLogger gmsLogger;
        LongSparseArray longSparseArray;
        LongSparseArray longSparseArray2;
        zzsh zzshVar;
        RemoteModel remoteModel;
        zzsh zzshVar2;
        RemoteModel remoteModel2;
        RemoteModel remoteModel3;
        zzsh zzshVar3;
        RemoteModel remoteModel4;
        MlKitException m28559k;
        MlKitContext mlKitContext;
        long longExtra = intent.getLongExtra("extra_download_id", -1L);
        if (longExtra != this.f85346a) {
            return;
        }
        RemoteModelDownloadManager remoteModelDownloadManager = this.f85348c;
        Integer downloadingModelStatusCode = remoteModelDownloadManager.getDownloadingModelStatusCode();
        synchronized (remoteModelDownloadManager) {
            try {
                mlKitContext = this.f85348c.f36604c;
                mlKitContext.getApplicationContext().unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                gmsLogger = RemoteModelDownloadManager.f36600m;
                gmsLogger.m22166w("ModelDownloadManager", "Exception thrown while trying to unregister the broadcast receiver for the download", e);
            }
            longSparseArray = this.f85348c.f36602a;
            longSparseArray.remove(this.f85346a);
            longSparseArray2 = this.f85348c.f36603b;
            longSparseArray2.remove(this.f85346a);
        }
        if (downloadingModelStatusCode != null) {
            if (downloadingModelStatusCode.intValue() == 16) {
                RemoteModelDownloadManager remoteModelDownloadManager2 = this.f85348c;
                zzshVar3 = remoteModelDownloadManager2.f36608g;
                zzry zzg = zzsk.zzg();
                remoteModel4 = remoteModelDownloadManager2.f36606e;
                Long valueOf = Long.valueOf(longExtra);
                zzshVar3.zze(zzg, remoteModel4, false, remoteModelDownloadManager2.getFailureReason(valueOf));
                TaskCompletionSource taskCompletionSource = this.f85347b;
                m28559k = this.f85348c.m28559k(valueOf);
                taskCompletionSource.setException(m28559k);
                return;
            }
            if (downloadingModelStatusCode.intValue() == 8) {
                RemoteModelDownloadManager remoteModelDownloadManager3 = this.f85348c;
                zzshVar2 = remoteModelDownloadManager3.f36608g;
                zzry zzg2 = zzsk.zzg();
                remoteModel2 = remoteModelDownloadManager3.f36606e;
                zzsi zzh = zzsj.zzh();
                zzh.zzb(zzmu.NO_ERROR);
                zzh.zze(true);
                remoteModel3 = this.f85348c.f36606e;
                zzh.zzd(remoteModel3.getModelType());
                zzh.zza(zzna.SUCCEEDED);
                zzshVar2.zzg(zzg2, remoteModel2, zzh.zzh());
                this.f85347b.setResult(null);
                return;
            }
        }
        RemoteModelDownloadManager remoteModelDownloadManager4 = this.f85348c;
        zzshVar = remoteModelDownloadManager4.f36608g;
        zzry zzg3 = zzsk.zzg();
        remoteModel = remoteModelDownloadManager4.f36606e;
        zzshVar.zze(zzg3, remoteModel, false, 0);
        this.f85347b.setException(new MlKitException("Model downloading failed", 13));
    }
}
