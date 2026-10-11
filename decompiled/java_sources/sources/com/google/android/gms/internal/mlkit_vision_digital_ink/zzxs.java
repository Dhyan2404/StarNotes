package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.TrafficStats;
import android.util.Log;
import androidx.core.content.ContextCompat;
import androidx.core.net.ConnectivityManagerCompat;
import com.bumptech.glide.manager.DefaultConnectivityMonitorFactory;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* loaded from: classes5.dex */
public final class zzxs {
    private static final String zzb = "zzxs";
    private static final zzagn zzc = new zzxi();
    private static final zzagn zzd = new zzxj();
    private static final zzagn zze = new zzxk();

    @GuardedBy("this")
    protected final List zza;
    private final Context zzf;
    private final Executor zzg;
    private final zzxt zzh;
    private final ConnectivityManager zzi;
    private final zzxn zzj;

    @GuardedBy("this")
    private final Map zzk;

    @GuardedBy("this")
    private final Map zzl;

    @GuardedBy("this")
    private final Queue zzm;
    private boolean zzn;
    private final BroadcastReceiver zzo;

    public zzxs(zzxt zzxtVar, Context context, Executor executor) {
        zzxn zzxnVar = new zzxn();
        this.zzk = new HashMap();
        this.zzl = new HashMap();
        this.zzm = new ConcurrentLinkedQueue();
        this.zza = new ArrayList();
        this.zzn = false;
        this.zzo = new zzxl(this);
        this.zzf = context;
        this.zzh = zzxtVar;
        this.zzg = executor;
        this.zzj = zzxnVar;
        this.zzi = (ConnectivityManager) context.getSystemService("connectivity");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:310:0x04d9
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1166)
        	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1022)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
        */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.google.android.gms.internal.mlkit_vision_digital_ink.zzxu] */
    /* JADX WARN: Type inference failed for: r12v31 */
    /* JADX WARN: Type inference failed for: r12v32 */
    /* JADX WARN: Type inference failed for: r12v33 */
    /* JADX WARN: Type inference failed for: r12v34 */
    /* JADX WARN: Type inference failed for: r12v35 */
    /* JADX WARN: Type inference failed for: r12v37 */
    /* JADX WARN: Type inference failed for: r12v50, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r12v51, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r12v52, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r12v71 */
    /* JADX WARN: Type inference failed for: r12v79 */
    /* JADX WARN: Type inference failed for: r12v80 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3, types: [int] */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference failed for: r9v35 */
    /* JADX WARN: Type inference failed for: r9v37, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v44, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v47, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v51, types: [java.lang.String] */
    public static /* synthetic */ void zzc(com.google.android.gms.internal.mlkit_vision_digital_ink.zzxs r30, com.google.android.gms.internal.mlkit_vision_digital_ink.zzxh r31) {
        /*
            Method dump skipped, instructions count: 1443
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzxs.zzc(com.google.android.gms.internal.mlkit_vision_digital_ink.zzxs, com.google.android.gms.internal.mlkit_vision_digital_ink.zzxh):void");
    }

    private static String zzf(File file, String str) {
        return file.getAbsolutePath() + "/" + str;
    }

    private final synchronized HttpURLConnection zzg(String str, String str2) throws IOException {
        HttpURLConnection zza;
        if (!zzo(this.zzf, "android.permission.INTERNET")) {
            throw new IllegalStateException("Missing INTERNET permission, can't start download");
        }
        zzagg.zzj(!((zzxh) this.zzk.get(str)).zzn());
        zza = this.zzh.zza(str2);
        zzxn.zzb(this.zzj);
        this.zzl.put(str, zza);
        return zza;
    }

    private final synchronized void zzh() {
        TrafficStats.clearThreadStatsTag();
        TrafficStats.clearThreadStatsUid();
    }

    private final void zzi(zzxh zzxhVar) {
        List zza;
        zzxhVar.zzk();
        synchronized (this) {
            boolean isEmpty = this.zzm.isEmpty();
            this.zzm.add(zzxhVar);
            if (isEmpty) {
                this.zzf.registerReceiver(this.zzo, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                this.zzn = true;
                zzj();
            }
            zza = this.zzm.containsAll(this.zzk.values()) ? zza() : null;
        }
        if (zza != null) {
            zzq(zza, zzc);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzj() {
        Log.d(zzb, "Running " + this.zzm.size() + " requests pending connectivity");
        Iterator it2 = this.zzm.iterator();
        while (it2.hasNext()) {
            zzxh zzxhVar = (zzxh) it2.next();
            if (zzxhVar.zzn() || zzn(zzxhVar.zzb())) {
                it2.remove();
                zzxhVar.zzj();
                zzk(zzxhVar);
            }
        }
        if (this.zzm.isEmpty() && this.zzn) {
            this.zzf.unregisterReceiver(this.zzo);
            this.zzn = false;
        }
    }

    private final void zzk(zzxh zzxhVar) {
        zzq(zza(), zzd);
        this.zzg.execute(new zzxm(this, zzxhVar));
    }

    private final synchronized void zzl(HttpURLConnection httpURLConnection, int i, int i2) throws IOException {
        if (i != -1) {
            TrafficStats.setThreadStatsTag(i);
        }
    }

    private static void zzm(@Nullable HttpURLConnection httpURLConnection) {
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (IllegalStateException | NullPointerException unused) {
            }
        }
    }

    private final synchronized boolean zzn(zzxg zzxgVar) {
        if (zzxgVar == zzxg.NONE) {
            return true;
        }
        if (!zzo(this.zzf, DefaultConnectivityMonitorFactory.f15198b)) {
            throw new IllegalStateException("Attempting to determine connectivity without the ACCESS_NETWORK_STATE permission.");
        }
        NetworkInfo activeNetworkInfo = this.zzi.getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            Log.d(zzb, "No current network, connectivity cannot be satisfied.");
            return false;
        }
        if (!activeNetworkInfo.isConnected()) {
            Log.d(zzb, "Network disconnected, connectivity cannot be satisfied.");
            return false;
        }
        int ordinal = zzxgVar.ordinal();
        if (ordinal == 0) {
            return !ConnectivityManagerCompat.isActiveNetworkMetered(this.zzi) || activeNetworkInfo.getType() == 1 || activeNetworkInfo.getType() == 9 || activeNetworkInfo.getType() == 17;
        }
        if (ordinal == 1) {
            return activeNetworkInfo.getType() == 0 || activeNetworkInfo.getType() == 4 || activeNetworkInfo.getType() == 6 || activeNetworkInfo.getType() == 7 || activeNetworkInfo.getType() == 1 || activeNetworkInfo.getType() == 9 || activeNetworkInfo.getType() == 16 || activeNetworkInfo.getType() == 17;
        }
        Log.e(zzb, "Unknown connectivity type checked: ".concat(String.valueOf(zzxgVar.name())));
        return true;
    }

    private static boolean zzo(Context context, String str) {
        return ContextCompat.checkSelfPermission(context, str) == 0;
    }

    private final void zzp(File file, String str, zzbpt zzbptVar, @Nullable zzxe zzxeVar, File file2, long j) {
        List list;
        List zza;
        String zzf = zzf(file, str);
        synchronized (this) {
            this.zzk.remove(zzf);
            this.zzl.remove(zzf);
            list = null;
            if (this.zzk.isEmpty()) {
                list = zza();
                zza = null;
            } else {
                zza = this.zzm.containsAll(this.zzk.values()) ? zza() : null;
            }
        }
        if (zzxeVar == null) {
            zzbptVar.zza(file2, j);
        } else {
            zzbptVar.zzb(file2, zzxeVar);
        }
        if (list != null) {
            zzq(list, zze);
        } else if (zza != null) {
            zzq(zza, zzc);
        }
    }

    private static final void zzq(List list, zzagn zzagnVar) {
        zzaly listIterator = ((zzajm) list).listIterator(0);
        while (listIterator.hasNext()) {
            zzagnVar.zza((zzwl) listIterator.next());
        }
    }

    public final synchronized List zza() {
        zzaji zze2;
        zze2 = zzajm.zze();
        Iterator it2 = this.zza.iterator();
        while (it2.hasNext()) {
            zzwl zzwlVar = (zzwl) ((WeakReference) it2.next()).get();
            if (zzwlVar == null) {
                it2.remove();
            } else {
                zze2.zze(zzwlVar);
            }
        }
        return zze2.zzh();
    }

    public final synchronized void zzd(File file, String str) {
        String zzf = zzf(file, str);
        zzxh zzxhVar = (zzxh) this.zzk.get(zzf);
        if (zzxhVar != null) {
            zzxhVar.zzl();
        } else {
            Log.v(zzb, "Attempted to setCanceled unknown request: ".concat(zzf));
        }
        zzm((HttpURLConnection) this.zzl.get(zzf));
        if (zzxhVar != null) {
            zzj();
        }
    }

    public final synchronized boolean zze(zzxh zzxhVar) {
        String zzf = zzf(zzxhVar.zzg(), zzxhVar.zzh());
        if (this.zzk.containsKey(zzf)) {
            Log.i(zzb, "Request is already being executed for key: ".concat(zzf));
            return false;
        }
        this.zzk.put(zzf, zzxhVar);
        zzk(zzxhVar);
        return true;
    }
}
