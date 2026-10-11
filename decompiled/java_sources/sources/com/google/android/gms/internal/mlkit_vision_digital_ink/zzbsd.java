package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsc;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsd;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* loaded from: classes5.dex */
public abstract class zzbsd<MessageType extends zzbsd<MessageType, BuilderType>, BuilderType extends zzbsc<MessageType, BuilderType>> implements zzbvu {
    protected int zzb = 0;

    public static void zzI(Iterable iterable, List list) {
        zzbur.zze(iterable);
        if (iterable instanceof zzbvb) {
            List zzh = ((zzbvb) iterable).zzh();
            zzbvb zzbvbVar = (zzbvb) list;
            int size = list.size();
            for (Object obj : zzh) {
                if (obj == null) {
                    String str = "Element at index " + (zzbvbVar.size() - size) + " is null.";
                    int size2 = zzbvbVar.size();
                    while (true) {
                        size2--;
                        if (size2 < size) {
                            break;
                        } else {
                            zzbvbVar.remove(size2);
                        }
                    }
                    throw new NullPointerException(str);
                }
                if (obj instanceof zzbsz) {
                    zzbvbVar.zzi((zzbsz) obj);
                } else {
                    zzbvbVar.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof zzbwd) {
            list.addAll((Collection) iterable);
            return;
        }
        if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) list).ensureCapacity(list.size() + ((Collection) iterable).size());
        }
        int size3 = list.size();
        for (Object obj2 : iterable) {
            if (obj2 == null) {
                String str2 = "Element at index " + (list.size() - size3) + " is null.";
                int size4 = list.size();
                while (true) {
                    size4--;
                    if (size4 < size3) {
                        break;
                    } else {
                        list.remove(size4);
                    }
                }
                throw new NullPointerException(str2);
            }
            list.add(obj2);
        }
    }

    public int zzG(zzbwi zzbwiVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvu
    public final zzbsz zzH() {
        try {
            int zzM = zzM();
            zzbsz zzbszVar = zzbsz.zzb;
            byte[] bArr = new byte[zzM];
            zzbtm zzO = zzbtm.zzO(bArr);
            zzaj(zzO);
            return zzbsu.zza(zzO, bArr);
        } catch (IOException e) {
            throw new RuntimeException("Serializing " + this.getClass().getName() + " to a ByteString threw an IOException (should never happen).", e);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvu
    public final void zzJ(OutputStream outputStream) throws IOException {
        zzbtm zzP = zzbtm.zzP(outputStream, zzbtm.zzJ(zzM()));
        zzaj(zzP);
        zzP.zzW();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvu
    public final byte[] zzK() {
        try {
            byte[] bArr = new byte[zzM()];
            zzbtm zzO = zzbtm.zzO(bArr);
            zzaj(zzO);
            zzO.zzR();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException("Serializing " + getClass().getName() + " to a byte array threw an IOException (should never happen).", e);
        }
    }
}
