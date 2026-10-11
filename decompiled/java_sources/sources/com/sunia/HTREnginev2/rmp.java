package com.sunia.HTREnginev2;

import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzz;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

/* loaded from: classes5.dex */
public abstract class rmp extends zzz {

    /* renamed from: a */
    public final int f83259a;

    public rmp(byte[] bArr) {
        Preconditions.checkArgument(bArr.length == 25);
        this.f83259a = Arrays.hashCode(bArr);
    }

    /* renamed from: c */
    public static byte[] m56984c(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: e */
    public abstract byte[] mo54151e();

    public final boolean equals(@Nullable Object obj) {
        IObjectWrapper zzd;
        if (obj != null && (obj instanceof zzaa)) {
            try {
                zzaa zzaaVar = (zzaa) obj;
                if (zzaaVar.zzc() == this.f83259a && (zzd = zzaaVar.zzd()) != null) {
                    return Arrays.equals(mo54151e(), (byte[]) ObjectWrapper.unwrap(zzd));
                }
                return false;
            } catch (RemoteException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f83259a;
    }

    @Override // com.google.android.gms.common.internal.zzaa
    public final int zzc() {
        return this.f83259a;
    }

    @Override // com.google.android.gms.common.internal.zzaa
    public final IObjectWrapper zzd() {
        return ObjectWrapper.wrap(mo54151e());
    }
}
