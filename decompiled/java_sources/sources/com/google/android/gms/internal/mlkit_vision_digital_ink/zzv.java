package com.google.android.gms.internal.mlkit_vision_digital_ink;

import androidx.annotation.VisibleForTesting;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* loaded from: classes5.dex */
public final class zzv extends Exception {
    private final zzajm zza;

    private zzv(String str, Throwable th, zzajm zzajmVar) {
        super(str, th);
        this.zza = zzajmVar;
    }

    @VisibleForTesting
    public static Throwable zzb(Throwable th) {
        Throwable cause = th.getCause();
        return (cause != null && th.getClass().equals(ExecutionException.class)) ? zzb(cause) : th;
    }

    public static void zzc(Collection collection, zzagb zzagbVar, String str, Object... objArr) throws zzv {
        Iterator it2 = collection.iterator();
        zzaji zzajiVar = null;
        while (it2.hasNext()) {
            try {
                zzarx.zzp((zzasi) it2.next());
            } catch (CancellationException | ExecutionException e) {
                if (zzajiVar == null) {
                    zzajiVar = zzajm.zze();
                }
                zzajiVar.zze(zzb(e));
            }
        }
        if (zzajiVar == null) {
            return;
        }
        zzajm zzh = zzajiVar.zzh();
        String format = String.format(Locale.US, "Failed to download file group %s", objArr);
        if (zzh.size() > 1) {
            String str2 = format + "\n" + zzh.size() + " failure(s) in total:\n";
            try {
                StringWriter stringWriter = new StringWriter();
                try {
                    PrintWriter printWriter = new PrintWriter(stringWriter);
                    try {
                        printWriter.println(str2);
                        int i = 0;
                        while (i < zzh.size()) {
                            Throwable th = (Throwable) zzh.get(i);
                            i++;
                            printWriter.printf("--- Failure %d ----------------------------\n", Integer.valueOf(i));
                            printWriter.println(zzd(th, 1));
                        }
                        printWriter.println("-------------------------------------------");
                        format = stringWriter.toString();
                        printWriter.close();
                        stringWriter.close();
                    } finally {
                    }
                } finally {
                }
            } catch (Throwable th2) {
                format = "Failed to build string from throwables: ".concat(th2.toString());
            }
        }
        throw new zzv(format, (Throwable) zzh.get(0), zzh);
    }

    private static String zzd(Throwable th, int i) {
        String str = th.getClass().getName() + ": " + th.getMessage();
        Throwable cause = th.getCause();
        if (cause == null) {
            return str;
        }
        if (i >= 5) {
            return str.concat("\n(...)");
        }
        return str + "\nCaused by: " + zzd(cause, i + 1);
    }

    public final zzajm zza() {
        return this.zza;
    }
}
