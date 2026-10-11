package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.opencensus.contrib.http.util.HttpMeasureConstants;
import java.util.concurrent.TimeUnit;

/* loaded from: classes5.dex */
public final class zzagy {
    private final zzahg zza;
    private boolean zzb;
    private long zzc;

    public zzagy() {
        this.zza = zzahg.zzb();
    }

    public static zzagy zzb(zzahg zzahgVar) {
        zzagy zzagyVar = new zzagy(zzahgVar);
        zzagyVar.zzd();
        return zzagyVar;
    }

    private final long zze() {
        if (this.zzb) {
            return this.zza.zza() - this.zzc;
        }
        return 0L;
    }

    public final String toString() {
        String str;
        long zze = zze();
        TimeUnit timeUnit = TimeUnit.DAYS;
        TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
        if (timeUnit.convert(zze, timeUnit2) <= 0) {
            timeUnit = TimeUnit.HOURS;
            if (timeUnit.convert(zze, timeUnit2) <= 0) {
                timeUnit = TimeUnit.MINUTES;
                if (timeUnit.convert(zze, timeUnit2) <= 0) {
                    timeUnit = TimeUnit.SECONDS;
                    if (timeUnit.convert(zze, timeUnit2) <= 0) {
                        timeUnit = TimeUnit.MILLISECONDS;
                        if (timeUnit.convert(zze, timeUnit2) <= 0) {
                            timeUnit = TimeUnit.MICROSECONDS;
                            if (timeUnit.convert(zze, timeUnit2) <= 0) {
                                timeUnit = timeUnit2;
                            }
                        }
                    }
                }
            }
        }
        double convert = timeUnit2.convert(1L, timeUnit);
        StringBuilder sb = new StringBuilder();
        sb.append(zzagf.zzd(zze / convert));
        sb.append(" ");
        switch (zzagx.zza[timeUnit.ordinal()]) {
            case 1:
                str = Constants.ATTRNAME_NS;
                break;
            case 2:
                str = "μs";
                break;
            case 3:
                str = HttpMeasureConstants.f94668b;
                break;
            case 4:
                str = "s";
                break;
            case 5:
                str = "min";
                break;
            case 6:
                str = C6999h.f39688c;
                break;
            case 7:
                str = "d";
                break;
            default:
                throw new AssertionError();
        }
        sb.append(str);
        return sb.toString();
    }

    public final long zza(TimeUnit timeUnit) {
        return timeUnit.convert(zze(), TimeUnit.NANOSECONDS);
    }

    public final zzagy zzc() {
        this.zzb = false;
        return this;
    }

    public final zzagy zzd() {
        zzagg.zzk(!this.zzb, "This stopwatch is already running.");
        this.zzb = true;
        this.zzc = this.zza.zza();
        return this;
    }

    public zzagy(zzahg zzahgVar) {
        zzagg.zzc(zzahgVar, "ticker");
        this.zza = zzahgVar;
    }
}
