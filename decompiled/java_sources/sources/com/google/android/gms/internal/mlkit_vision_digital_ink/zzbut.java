package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;

/* loaded from: classes5.dex */
public class zzbut extends IOException {
    private zzbvu zza;
    private boolean zzb;

    public zzbut(IOException iOException) {
        super(iOException.getMessage(), iOException);
        this.zza = null;
    }

    public static zzbus zza() {
        return new zzbus("Protocol message tag had invalid wire type.");
    }

    public static zzbut zzb() {
        return new zzbut("Protocol message end-group tag did not match expected tag.");
    }

    public static zzbut zzc() {
        return new zzbut("Protocol message contained an invalid tag (zero).");
    }

    public static zzbut zzd() {
        return new zzbut("Protocol message had invalid UTF-8.");
    }

    public static zzbut zze() {
        return new zzbut("CodedInputStream encountered a malformed varint.");
    }

    public static zzbut zzf() {
        return new zzbut("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static zzbut zzg() {
        return new zzbut("Failed to parse the message.");
    }

    public static zzbut zzi() {
        return new zzbut("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    public static zzbut zzj() {
        return new zzbut("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public final zzbut zzh(zzbvu zzbvuVar) {
        this.zza = zzbvuVar;
        return this;
    }

    public final void zzk() {
        this.zzb = true;
    }

    public final boolean zzl() {
        return this.zzb;
    }

    public zzbut(String str) {
        super(str);
        this.zza = null;
    }

    public zzbut(String str, IOException iOException) {
        super("Unable to decode to byte array", iOException);
        this.zza = null;
    }
}
