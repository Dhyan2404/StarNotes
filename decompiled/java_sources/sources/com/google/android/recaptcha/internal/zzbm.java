package com.google.android.recaptcha.internal;

import android.content.Context;
import com.onyx.android.sdk.universal.editor.action.backup.ExecuteAutoBackupTaskAction;
import com.sunia.HTREnginev2.C14063lv;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes6.dex */
public final class zzbm implements zzbh {

    @NotNull
    public static final zzbi zza = new zzbi(null);

    @Nullable
    private static Timer zzb;

    @NotNull
    private final zzbn zzc;

    @NotNull
    private final CoroutineScope zzd;

    @Nullable
    private final zzaz zze;

    public zzbm(@NotNull Context context, @NotNull zzbn zzbnVar, @NotNull CoroutineScope coroutineScope) {
        zzaz zzazVar;
        this.zzc = zzbnVar;
        this.zzd = coroutineScope;
        zzax zzaxVar = zzaz.zza;
        zzaz zzazVar2 = null;
        try {
            zzazVar = zzaz.zzc;
            zzazVar = zzazVar == null ? new zzaz(context, null) : zzazVar;
            zzaz.zzc = zzazVar;
            zzazVar2 = zzazVar;
        } catch (Exception unused) {
        }
        this.zze = zzazVar2;
        zzh();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzg() {
        List<List> windowed;
        zzaz zzazVar;
        zzpd zzk;
        int zzJ;
        int i;
        zzaz zzazVar2 = this.zze;
        if (zzazVar2 != null) {
            windowed = CollectionsKt___CollectionsKt.windowed(zzazVar2.zzd(), 20, 20, true);
            for (List<zzba> list : windowed) {
                zznh zzi = zzni.zzi();
                ArrayList arrayList = new ArrayList();
                for (zzba zzbaVar : list) {
                    try {
                        zzk = zzpd.zzk(zzfy.zzg().zzj(zzbaVar.zzc()));
                        zzJ = zzk.zzJ();
                        i = zzJ - 1;
                    } catch (Exception unused) {
                        zzaz zzazVar3 = this.zze;
                        if (zzazVar3 != null) {
                            zzazVar3.zzf(zzbaVar);
                        }
                    }
                    if (zzJ == 0) {
                        throw null;
                    }
                    if (i == 0) {
                        zzi.zzp(zzk.zzf());
                    } else if (i == 1) {
                        zzi.zzq(zzk.zzg());
                    }
                    arrayList.add(zzbaVar);
                }
                if (zzi.zzd() + zzi.zze() != 0) {
                    if (this.zzc.zza(((zzni) zzi.zzj()).zzd()) && (zzazVar = this.zze) != null) {
                        zzazVar.zza(arrayList);
                    }
                }
            }
        }
    }

    private final void zzh() {
        if (zzb == null) {
            Timer timer = new Timer();
            zzb = timer;
            timer.schedule(new zzbj(this), ExecuteAutoBackupTaskAction.f48008l, ExecuteAutoBackupTaskAction.f48008l);
        }
    }

    @Override // com.google.android.recaptcha.internal.zzbh
    public final void zza(@NotNull zzpd zzpdVar) {
        C14063lv.m55522f(this.zzd, null, null, new zzbl(this, zzpdVar, null), 3, null);
        zzh();
    }
}
