package com.google.android.gms.internal.mlkit_vision_digital_ink;

import javax.annotation.CheckForNull;
import kotlinx.coroutines.debug.internal.DebugCoroutineInfoImplKt;

/* loaded from: classes5.dex */
final class zzasu implements Runnable {

    @CheckForNull
    Runnable zza;
    final /* synthetic */ zzasv zzb;

    public /* synthetic */ zzasu(zzasv zzasvVar, zzast zzastVar) {
        this.zzb = zzasvVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0054, code lost:
    
        r1 = r1 | java.lang.Thread.interrupted();
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0056, code lost:
    
        r11.zza.run();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0061, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x008c, code lost:
    
        r11.zza = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x008e, code lost:
    
        throw r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0063, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0065, code lost:
    
        com.google.android.gms.internal.mlkit_vision_digital_ink.zzasv.zzc().logp(java.util.logging.Level.SEVERE, "com.google.common.util.concurrent.SequentialExecutor$QueueWorker", "workOnQueue", "Exception while executing runnable " + java.lang.String.valueOf(r11.zza), (java.lang.Throwable) r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0089, code lost:
    
        r11.zza = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x004e, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:?, code lost:
    
        return;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r11 = this;
            r0 = 0
            r1 = r0
        L2:
            r2 = 1
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzasv r3 = r11.zzb     // Catch: java.lang.Throwable -> L5f
            java.util.Deque r3 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzasv.zzb(r3)     // Catch: java.lang.Throwable -> L5f
            monitor-enter(r3)     // Catch: java.lang.Throwable -> L5f
            if (r0 != 0) goto L2f
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzasv r0 = r11.zzb     // Catch: java.lang.Throwable -> L8f
            int r4 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzasv.zze(r0)     // Catch: java.lang.Throwable -> L8f
            r5 = 4
            if (r4 != r5) goto L20
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L8f
            if (r1 == 0) goto L4e
            java.lang.Thread r0 = java.lang.Thread.currentThread()     // Catch: java.lang.Error -> L9c
            r0.interrupt()     // Catch: java.lang.Error -> L9c
            return
        L20:
            long r6 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzasv.zza(r0)     // Catch: java.lang.Throwable -> L8f
            r8 = 1
            long r6 = r6 + r8
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzasv.zzd(r0, r6)     // Catch: java.lang.Throwable -> L8f
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzasv r0 = r11.zzb     // Catch: java.lang.Throwable -> L8f
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzasv.zzf(r0, r5)     // Catch: java.lang.Throwable -> L8f
        L2f:
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzasv r0 = r11.zzb     // Catch: java.lang.Throwable -> L8f
            java.util.Deque r0 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzasv.zzb(r0)     // Catch: java.lang.Throwable -> L8f
            java.lang.Object r0 = r0.poll()     // Catch: java.lang.Throwable -> L8f
            java.lang.Runnable r0 = (java.lang.Runnable) r0     // Catch: java.lang.Throwable -> L8f
            r11.zza = r0     // Catch: java.lang.Throwable -> L8f
            if (r0 != 0) goto L4f
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzasv r0 = r11.zzb     // Catch: java.lang.Throwable -> L8f
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzasv.zzf(r0, r2)     // Catch: java.lang.Throwable -> L8f
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L8f
            if (r1 == 0) goto L4e
            java.lang.Thread r0 = java.lang.Thread.currentThread()     // Catch: java.lang.Error -> L9c
            r0.interrupt()     // Catch: java.lang.Error -> L9c
        L4e:
            return
        L4f:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L8f
            boolean r0 = java.lang.Thread.interrupted()     // Catch: java.lang.Throwable -> L5f
            r1 = r1 | r0
            r0 = 0
            java.lang.Runnable r3 = r11.zza     // Catch: java.lang.Throwable -> L61 java.lang.RuntimeException -> L63
            r3.run()     // Catch: java.lang.Throwable -> L61 java.lang.RuntimeException -> L63
            r11.zza = r0     // Catch: java.lang.Throwable -> L5f
        L5d:
            r0 = r2
            goto L2
        L5f:
            r0 = move-exception
            goto L92
        L61:
            r3 = move-exception
            goto L8c
        L63:
            r3 = move-exception
            r9 = r3
            java.util.logging.Logger r4 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzasv.zzc()     // Catch: java.lang.Throwable -> L61
            java.util.logging.Level r5 = java.util.logging.Level.SEVERE     // Catch: java.lang.Throwable -> L61
            java.lang.String r6 = "com.google.common.util.concurrent.SequentialExecutor$QueueWorker"
            java.lang.String r7 = "workOnQueue"
            java.lang.Runnable r3 = r11.zza     // Catch: java.lang.Throwable -> L61
            java.lang.String r3 = java.lang.String.valueOf(r3)     // Catch: java.lang.Throwable -> L61
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L61
            r8.<init>()     // Catch: java.lang.Throwable -> L61
            java.lang.String r10 = "Exception while executing runnable "
            r8.append(r10)     // Catch: java.lang.Throwable -> L61
            r8.append(r3)     // Catch: java.lang.Throwable -> L61
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L61
            r4.logp(r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L61
            r11.zza = r0     // Catch: java.lang.Throwable -> L5f
            goto L5d
        L8c:
            r11.zza = r0     // Catch: java.lang.Throwable -> L5f
            throw r3     // Catch: java.lang.Throwable -> L5f
        L8f:
            r0 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L8f
            throw r0     // Catch: java.lang.Throwable -> L5f
        L92:
            if (r1 == 0) goto L9b
            java.lang.Thread r1 = java.lang.Thread.currentThread()     // Catch: java.lang.Error -> L9c
            r1.interrupt()     // Catch: java.lang.Error -> L9c
        L9b:
            throw r0     // Catch: java.lang.Error -> L9c
        L9c:
            r0 = move-exception
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzasv r1 = r11.zzb
            java.util.Deque r1 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzasv.zzb(r1)
            monitor-enter(r1)
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzasv r11 = r11.zzb     // Catch: java.lang.Throwable -> Lab
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzasv.zzf(r11, r2)     // Catch: java.lang.Throwable -> Lab
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Lab
            throw r0
        Lab:
            r11 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Lab
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzasu.run():void");
    }

    public final String toString() {
        Runnable runnable = this.zza;
        if (runnable != null) {
            return "SequentialExecutorWorker{running=" + runnable.toString() + "}";
        }
        int zze = zzasv.zze(this.zzb);
        return "SequentialExecutorWorker{state=" + (zze != 1 ? zze != 2 ? zze != 3 ? zze != 4 ? "null" : DebugCoroutineInfoImplKt.RUNNING : "QUEUED" : "QUEUING" : "IDLE") + "}";
    }
}
