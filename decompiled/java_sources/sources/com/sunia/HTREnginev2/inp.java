package com.sunia.HTREnginev2;

import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.C4649C;
import com.google.android.gms.internal.mlkit_vision_text_common.zzbh;
import com.google.android.gms.internal.mlkit_vision_text_common.zzbk;
import com.google.android.gms.internal.mlkit_vision_text_common.zzbu;
import com.google.android.gms.internal.mlkit_vision_text_common.zzcp;
import com.google.android.gms.internal.mlkit_vision_text_common.zzu;
import com.google.android.gms.internal.mlkit_vision_text_common.zzv;
import com.google.android.gms.internal.mlkit_vision_text_common.zzy;
import com.google.mlkit.vision.text.Text;
import com.sunia.HTREnginev2.afp;
import com.sunia.HTREnginev2.inp;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes6.dex */
public final class inp {

    /* renamed from: a */
    @VisibleForTesting
    public static final zzv f73426a = zzv.zza("\n");

    /* renamed from: b */
    public static final Comparator f73427b = new Comparator() { // from class: com.google.mlkit.vision.text.internal.zzf
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int i = inp.f73428c;
            return ((Integer) ((Map.Entry) obj).getValue()).compareTo((Integer) ((Map.Entry) obj2).getValue());
        }
    };

    /* renamed from: c */
    public static final /* synthetic */ int f73428c = 0;

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static Text m54734a(com.google.android.gms.internal.mlkit_vision_text_common.zzl[] zzlVarArr, @Nullable final Matrix matrix) {
        SparseArray sparseArray = new SparseArray();
        int i = 0;
        for (com.google.android.gms.internal.mlkit_vision_text_common.zzl zzlVar : zzlVarArr) {
            SparseArray sparseArray2 = (SparseArray) sparseArray.get(zzlVar.zzj);
            if (sparseArray2 == null) {
                sparseArray2 = new SparseArray();
                sparseArray.append(zzlVar.zzj, sparseArray2);
            }
            sparseArray2.append(zzlVar.zzk, zzlVar);
        }
        zzbh zzbhVar = new zzbh();
        int i2 = 0;
        while (i2 < sparseArray.size()) {
            SparseArray sparseArray3 = (SparseArray) sparseArray.valueAt(i2);
            zzbh zzbhVar2 = new zzbh();
            for (int i3 = i; i3 < sparseArray3.size(); i3++) {
                zzbhVar2.zza((com.google.android.gms.internal.mlkit_vision_text_common.zzl) sparseArray3.valueAt(i3));
            }
            zzbk zzb = zzbhVar2.zzb();
            List zza = zzbu.zza(zzb, new zzu() { // from class: com.google.mlkit.vision.text.internal.zzh
                @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzu
                public final Object zza(Object obj) {
                    com.google.android.gms.internal.mlkit_vision_text_common.zzl zzlVar2 = (com.google.android.gms.internal.mlkit_vision_text_common.zzl) obj;
                    int i4 = inp.f73428c;
                    List m53015b = afp.m53015b(zzlVar2.zzb);
                    String str = zzy.zzb(zzlVar2.zze) ? "" : zzlVar2.zze;
                    Rect m53014a = afp.m53014a(m53015b);
                    String str2 = zzy.zzb(zzlVar2.zzg) ? C4649C.LANGUAGE_UNDETERMINED : zzlVar2.zzg;
                    final Matrix matrix2 = matrix;
                    return new Text.Line(str, m53014a, m53015b, str2, matrix2, zzbu.zza(Arrays.asList(zzlVar2.zza), new zzu() { // from class: com.google.mlkit.vision.text.internal.zzj
                        @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzu
                        public final Object zza(Object obj2) {
                            com.google.android.gms.internal.mlkit_vision_text_common.zzr zzrVar = (com.google.android.gms.internal.mlkit_vision_text_common.zzr) obj2;
                            int i5 = inp.f73428c;
                            List m53015b2 = afp.m53015b(zzrVar.zzb);
                            return new Text.Element(zzy.zzb(zzrVar.zzd) ? "" : zzrVar.zzd, afp.m53014a(m53015b2), m53015b2, zzy.zzb(zzrVar.zzf) ? C4649C.LANGUAGE_UNDETERMINED : zzrVar.zzf, matrix2, zzrVar.zze, zzrVar.zzb.zze, zzbk.zzh());
                        }
                    }), zzlVar2.zzf, zzlVar2.zzb.zze);
                }
            });
            com.google.android.gms.internal.mlkit_vision_text_common.zzf zzfVar = ((com.google.android.gms.internal.mlkit_vision_text_common.zzl) zzb.get(i)).zzb;
            zzcp listIterator = zzb.listIterator(i);
            int i4 = Integer.MIN_VALUE;
            int i5 = Integer.MAX_VALUE;
            int i6 = Integer.MAX_VALUE;
            int i7 = Integer.MIN_VALUE;
            while (listIterator.hasNext()) {
                com.google.android.gms.internal.mlkit_vision_text_common.zzf zzfVar2 = ((com.google.android.gms.internal.mlkit_vision_text_common.zzl) listIterator.next()).zzb;
                int i8 = -zzfVar.zza;
                int i9 = -zzfVar.zzb;
                zzcp zzcpVar = listIterator;
                double sin = Math.sin(Math.toRadians(zzfVar.zze));
                SparseArray sparseArray4 = sparseArray;
                int i10 = i2;
                double cos = Math.cos(Math.toRadians(zzfVar.zze));
                zzbh zzbhVar3 = zzbhVar;
                List list = zza;
                Point point = new Point(zzfVar2.zza, zzfVar2.zzb);
                point.offset(i8, i9);
                Point point2 = r13[0];
                int i11 = point2.x;
                int i12 = point2.y;
                int i13 = (int) ((i11 * cos) + (i12 * sin));
                point2.x = i13;
                int i14 = (int) (((-i11) * sin) + (i12 * cos));
                point2.y = i14;
                Point[] pointArr = {point, new Point(zzfVar2.zzc + i13, i14), new Point(zzfVar2.zzc + i13, zzfVar2.zzd + i14), new Point(i13, i14 + zzfVar2.zzd)};
                i4 = i4;
                i7 = i7;
                i5 = i5;
                i6 = i6;
                for (int i15 = 0; i15 < 4; i15++) {
                    Point point3 = pointArr[i15];
                    i5 = Math.min(i5, point3.x);
                    i4 = Math.max(i4, point3.x);
                    i6 = Math.min(i6, point3.y);
                    i7 = Math.max(i7, point3.y);
                }
                listIterator = zzcpVar;
                sparseArray = sparseArray4;
                i2 = i10;
                zzbhVar = zzbhVar3;
                zza = list;
            }
            zzbh zzbhVar4 = zzbhVar;
            SparseArray sparseArray5 = sparseArray;
            int i16 = i2;
            int i17 = i4;
            int i18 = i7;
            List list2 = zza;
            int i19 = zzfVar.zza;
            int i20 = zzfVar.zzb;
            double sin2 = Math.sin(Math.toRadians(zzfVar.zze));
            double cos2 = Math.cos(Math.toRadians(zzfVar.zze));
            Point[] pointArr2 = {new Point(i5, i6), new Point(i17, i6), new Point(i17, i18), new Point(i5, i18)};
            int i21 = 0;
            for (int i22 = 4; i21 < i22; i22 = 4) {
                Point point4 = pointArr2[i21];
                int i23 = point4.x;
                int i24 = point4.y;
                point4.x = (int) ((i23 * cos2) - (i24 * sin2));
                point4.y = (int) ((i23 * sin2) + (i24 * cos2));
                point4.offset(i19, i20);
                i21++;
                pointArr2 = pointArr2;
            }
            List asList = Arrays.asList(pointArr2);
            zzbhVar4.zza(new Text.TextBlock(f73426a.zzb(zzbu.zza(list2, new zzu() { // from class: com.google.mlkit.vision.text.internal.zzi
                @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzu
                public final Object zza(Object obj) {
                    return ((Text.Line) obj).getText();
                }
            })), afp.m53014a(asList), asList, m54735b(list2), matrix, list2));
            i2 = i16 + 1;
            zzbhVar = zzbhVar4;
            sparseArray = sparseArray5;
            i = 0;
        }
        zzbk zzb2 = zzbhVar.zzb();
        return new Text(f73426a.zzb(zzbu.zza(zzb2, new zzu() { // from class: com.google.mlkit.vision.text.internal.zzg
            @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzu
            public final Object zza(Object obj) {
                return ((Text.TextBlock) obj).getText();
            }
        })), zzb2);
    }

    /* renamed from: b */
    public static String m54735b(List list) {
        HashMap hashMap = new HashMap();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            String recognizedLanguage = ((Text.Line) it2.next()).getRecognizedLanguage();
            hashMap.put(recognizedLanguage, Integer.valueOf((hashMap.containsKey(recognizedLanguage) ? ((Integer) hashMap.get(recognizedLanguage)).intValue() : 0) + 1));
        }
        Set entrySet = hashMap.entrySet();
        if (entrySet.isEmpty()) {
            return C4649C.LANGUAGE_UNDETERMINED;
        }
        String str = (String) ((Map.Entry) Collections.max(entrySet, f73427b)).getKey();
        return !zzy.zzb(str) ? str : C4649C.LANGUAGE_UNDETERMINED;
    }
}
