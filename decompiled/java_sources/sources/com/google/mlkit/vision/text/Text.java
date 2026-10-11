package com.google.mlkit.vision.text;

import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.mlkit_vision_text_common.zzbu;
import com.google.android.gms.internal.mlkit_vision_text_common.zzu;
import com.google.android.gms.internal.mlkit_vision_text_common.zzuz;
import com.google.android.gms.internal.mlkit_vision_text_common.zzvb;
import com.google.android.gms.internal.mlkit_vision_text_common.zzvd;
import com.google.android.gms.internal.mlkit_vision_text_common.zzvf;
import com.google.android.gms.internal.mlkit_vision_text_common.zzvj;
import com.google.mlkit.vision.common.internal.CommonConvertUtils;
import com.google.mlkit.vision.text.Text;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes6.dex */
public class Text {

    /* renamed from: a */
    public final List f36809a;

    /* renamed from: b */
    public final String f36810b;

    /* loaded from: classes6.dex */
    public static class Symbol extends C6629a {

        /* renamed from: e */
        public final float f36817e;

        /* renamed from: f */
        public final float f36818f;

        public Symbol(@NonNull zzvj zzvjVar, @Nullable Matrix matrix) {
            super(zzvjVar.zzd(), zzvjVar.zzc(), zzvjVar.zze(), "", matrix);
            this.f36817e = zzvjVar.zzb();
            this.f36818f = zzvjVar.zza();
        }

        public float getAngle() {
            return this.f36818f;
        }

        public float getConfidence() {
            return this.f36817e;
        }

        @NonNull
        public String getText() {
            return zza();
        }
    }

    /* renamed from: com.google.mlkit.vision.text.Text$a */
    /* loaded from: classes6.dex */
    public static class C6629a {

        /* renamed from: a */
        public final String f36820a;

        /* renamed from: b */
        public final Rect f36821b;

        /* renamed from: c */
        public final Point[] f36822c;

        /* renamed from: d */
        public final String f36823d;

        public C6629a(String str, Rect rect, List list, String str2, @Nullable Matrix matrix) {
            this.f36820a = str;
            Rect rect2 = new Rect(rect);
            if (matrix != null) {
                CommonConvertUtils.transformRect(rect2, matrix);
            }
            this.f36821b = rect2;
            Point[] pointArr = new Point[list.size()];
            for (int i = 0; i < list.size(); i++) {
                pointArr[i] = new Point((Point) list.get(i));
            }
            if (matrix != null) {
                CommonConvertUtils.transformPointArray(pointArr, matrix);
            }
            this.f36822c = pointArr;
            this.f36823d = str2;
        }

        @Nullable
        public Rect getBoundingBox() {
            return this.f36821b;
        }

        @Nullable
        public Point[] getCornerPoints() {
            return this.f36822c;
        }

        @NonNull
        public String getRecognizedLanguage() {
            return this.f36823d;
        }

        @NonNull
        public final String zza() {
            String str = this.f36820a;
            return str == null ? "" : str;
        }
    }

    public Text(@NonNull zzvf zzvfVar, @Nullable final Matrix matrix) {
        ArrayList arrayList = new ArrayList();
        this.f36809a = arrayList;
        this.f36810b = zzvfVar.zza();
        arrayList.addAll(zzbu.zza(zzvfVar.zzb(), new zzu() { // from class: com.google.mlkit.vision.text.zza
            @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzu
            public final Object zza(Object obj) {
                return new Text.TextBlock((zzuz) obj, matrix);
            }
        }));
    }

    @NonNull
    public String getText() {
        return this.f36810b;
    }

    @NonNull
    public List<TextBlock> getTextBlocks() {
        return Collections.unmodifiableList(this.f36809a);
    }

    public Text(@NonNull String str, @NonNull List list) {
        ArrayList arrayList = new ArrayList();
        this.f36809a = arrayList;
        arrayList.addAll(list);
        this.f36810b = str;
    }

    /* loaded from: classes6.dex */
    public static class Line extends C6629a {

        /* renamed from: e */
        @GuardedBy("this")
        public final List f36814e;

        /* renamed from: f */
        public final float f36815f;

        /* renamed from: g */
        public final float f36816g;

        public Line(@NonNull zzvd zzvdVar, @Nullable final Matrix matrix, float f, float f2) {
            super(zzvdVar.zze(), zzvdVar.zzc(), zzvdVar.zzf(), zzvdVar.zzd(), matrix);
            this.f36814e = zzbu.zza(zzvdVar.zzg(), new zzu() { // from class: com.google.mlkit.vision.text.zzc
                @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzu
                public final Object zza(Object obj) {
                    return new Text.Element((zzvb) obj, matrix);
                }
            });
            this.f36815f = f;
            this.f36816g = f2;
        }

        public float getAngle() {
            return this.f36816g;
        }

        public float getConfidence() {
            return this.f36815f;
        }

        @NonNull
        public synchronized List<Element> getElements() {
            return this.f36814e;
        }

        @NonNull
        public String getText() {
            return zza();
        }

        public Line(@NonNull String str, @NonNull Rect rect, @NonNull List list, @NonNull String str2, @Nullable Matrix matrix, @NonNull List list2, float f, float f2) {
            super(str, rect, list, str2, matrix);
            this.f36814e = list2;
            this.f36815f = f;
            this.f36816g = f2;
        }
    }

    /* loaded from: classes6.dex */
    public static class TextBlock extends C6629a {

        /* renamed from: e */
        @GuardedBy("this")
        public final List f36819e;

        public TextBlock(@NonNull zzuz zzuzVar, @Nullable final Matrix matrix) {
            super(zzuzVar.zzc(), zzuzVar.zza(), zzuzVar.zzd(), zzuzVar.zzb(), matrix);
            this.f36819e = zzbu.zza(zzuzVar.zze(), new zzu() { // from class: com.google.mlkit.vision.text.zzd
                @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzu
                public final Object zza(Object obj) {
                    zzvd zzvdVar = (zzvd) obj;
                    return new Text.Line(zzvdVar, matrix, zzvdVar.zzb(), zzvdVar.zza());
                }
            });
        }

        @NonNull
        public synchronized List<Line> getLines() {
            return this.f36819e;
        }

        @NonNull
        public String getText() {
            return zza();
        }

        public TextBlock(@NonNull String str, @NonNull Rect rect, @NonNull List list, @NonNull String str2, @Nullable Matrix matrix, @NonNull List list2) {
            super(str, rect, list, str2, matrix);
            this.f36819e = list2;
        }
    }

    /* loaded from: classes6.dex */
    public static class Element extends C6629a {

        /* renamed from: e */
        @GuardedBy("this")
        public final List f36811e;

        /* renamed from: f */
        public final float f36812f;

        /* renamed from: g */
        public final float f36813g;

        public Element(@NonNull zzvb zzvbVar, @Nullable final Matrix matrix) {
            super(zzvbVar.zze(), zzvbVar.zzc(), zzvbVar.zzf(), zzvbVar.zzd(), matrix);
            this.f36812f = zzvbVar.zzb();
            this.f36813g = zzvbVar.zza();
            List zzg = zzvbVar.zzg();
            this.f36811e = zzbu.zza(zzg == null ? new ArrayList() : zzg, new zzu() { // from class: com.google.mlkit.vision.text.zzb
                @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzu
                public final Object zza(Object obj) {
                    return new Text.Symbol((zzvj) obj, matrix);
                }
            });
        }

        public float getAngle() {
            return this.f36813g;
        }

        public float getConfidence() {
            return this.f36812f;
        }

        @NonNull
        public synchronized List<Symbol> getSymbols() {
            return this.f36811e;
        }

        @NonNull
        public String getText() {
            return zza();
        }

        public Element(@NonNull String str, @NonNull Rect rect, @NonNull List list, @NonNull String str2, @Nullable Matrix matrix, float f, float f2, @NonNull List list2) {
            super(str, rect, list, str2, matrix);
            this.f36812f = f;
            this.f36813g = f2;
            this.f36811e = list2;
        }
    }
}
