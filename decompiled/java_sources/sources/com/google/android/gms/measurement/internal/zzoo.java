package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import androidx.core.app.NotificationCompat;
import com.bumptech.glide.load.engine.GlideException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzfo;
import com.google.android.gms.internal.measurement.zzfy;
import com.google.android.gms.internal.measurement.zzkb;
import com.google.android.gms.internal.measurement.zzov;
import com.google.android.gms.internal.measurement.zzpn;
import com.google.android.gms.internal.measurement.zzpo;
import com.google.android.gms.internal.measurement.zzpu;
import com.sunia.HTREnginev2.hgp;
import com.sunia.HTREnginev2.hlp;
import com.sunia.HTREnginev2.kqp;
import com.sunia.HTREnginev2.lrp;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.apache.commons.collections4.IteratorUtils;
import org.checkerframework.dataflow.qual.Pure;

/* loaded from: classes5.dex */
public final class zzoo extends kqp {
    public zzoo(zznv zznvVar) {
        super(zznvVar);
    }

    /* renamed from: A */
    public static void m22682A(StringBuilder sb, int i, String str, zzfo.zzd zzdVar) {
        if (zzdVar == null) {
            return;
        }
        m22699y(sb, i);
        sb.append(str);
        sb.append(" {\n");
        if (zzdVar.zzh()) {
            m22684C(sb, i, "comparison_type", zzdVar.zza().name());
        }
        if (zzdVar.zzj()) {
            m22684C(sb, i, "match_as_float", Boolean.valueOf(zzdVar.zzg()));
        }
        if (zzdVar.zzi()) {
            m22684C(sb, i, "comparison_value", zzdVar.zzd());
        }
        if (zzdVar.zzl()) {
            m22684C(sb, i, "min_comparison_value", zzdVar.zzf());
        }
        if (zzdVar.zzk()) {
            m22684C(sb, i, "max_comparison_value", zzdVar.zze());
        }
        m22699y(sb, i);
        sb.append("}\n");
    }

    /* renamed from: B */
    public static void m22683B(StringBuilder sb, int i, String str, zzfy.zzm zzmVar) {
        if (zzmVar == null) {
            return;
        }
        m22699y(sb, 3);
        sb.append(str);
        sb.append(" {\n");
        if (zzmVar.zzb() != 0) {
            m22699y(sb, 4);
            sb.append("results: ");
            int i2 = 0;
            for (Long l : zzmVar.zzi()) {
                int i3 = i2 + 1;
                if (i2 != 0) {
                    sb.append(", ");
                }
                sb.append(l);
                i2 = i3;
            }
            sb.append('\n');
        }
        if (zzmVar.zzd() != 0) {
            m22699y(sb, 4);
            sb.append("status: ");
            int i4 = 0;
            for (Long l2 : zzmVar.zzk()) {
                int i5 = i4 + 1;
                if (i4 != 0) {
                    sb.append(", ");
                }
                sb.append(l2);
                i4 = i5;
            }
            sb.append('\n');
        }
        if (zzmVar.zza() != 0) {
            m22699y(sb, 4);
            sb.append("dynamic_filter_timestamps: {");
            int i6 = 0;
            for (zzfy.zze zzeVar : zzmVar.zzh()) {
                int i7 = i6 + 1;
                if (i6 != 0) {
                    sb.append(", ");
                }
                sb.append(zzeVar.zzf() ? Integer.valueOf(zzeVar.zza()) : null);
                sb.append(":");
                sb.append(zzeVar.zze() ? Long.valueOf(zzeVar.zzb()) : null);
                i6 = i7;
            }
            sb.append("}\n");
        }
        if (zzmVar.zzc() != 0) {
            m22699y(sb, 4);
            sb.append("sequence_filter_timestamps: {");
            int i8 = 0;
            for (zzfy.zzn zznVar : zzmVar.zzj()) {
                int i9 = i8 + 1;
                if (i8 != 0) {
                    sb.append(", ");
                }
                sb.append(zznVar.zzf() ? Integer.valueOf(zznVar.zzb()) : null);
                sb.append(": [");
                Iterator<Long> it2 = zznVar.zze().iterator();
                int i10 = 0;
                while (it2.hasNext()) {
                    long longValue = it2.next().longValue();
                    int i11 = i10 + 1;
                    if (i10 != 0) {
                        sb.append(", ");
                    }
                    sb.append(longValue);
                    i10 = i11;
                }
                sb.append(IteratorUtils.f104924b);
                i8 = i9;
            }
            sb.append("}\n");
        }
        m22699y(sb, 3);
        sb.append("}\n");
    }

    /* renamed from: C */
    public static void m22684C(StringBuilder sb, int i, String str, Object obj) {
        if (obj == null) {
            return;
        }
        m22699y(sb, i + 1);
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append('\n');
    }

    @WorkerThread
    /* renamed from: F */
    public static boolean m22685F(zzbf zzbfVar, zzo zzoVar) {
        Preconditions.checkNotNull(zzbfVar);
        Preconditions.checkNotNull(zzoVar);
        return (TextUtils.isEmpty(zzoVar.zzb) && TextUtils.isEmpty(zzoVar.zzp)) ? false : true;
    }

    /* renamed from: G */
    public static boolean m22686G(List<Long> list, int i) {
        if (i < (list.size() << 6)) {
            return ((1 << (i % 64)) & list.get(i / 64).longValue()) != 0;
        }
        return false;
    }

    /* renamed from: H */
    public static Object m22687H(zzfy.zzf zzfVar, String str) {
        zzfy.zzh m22691h = m22691h(zzfVar, str);
        if (m22691h == null) {
            return null;
        }
        if (m22691h.zzn()) {
            return m22691h.zzh();
        }
        if (m22691h.zzl()) {
            return Long.valueOf(m22691h.zzd());
        }
        if (m22691h.zzj()) {
            return Double.valueOf(m22691h.zza());
        }
        if (m22691h.zzc() > 0) {
            return m22689K(m22691h.zzi());
        }
        return null;
    }

    /* renamed from: I */
    public static boolean m22688I(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    /* renamed from: K */
    public static Bundle[] m22689K(List<zzfy.zzh> list) {
        ArrayList arrayList = new ArrayList();
        for (zzfy.zzh zzhVar : list) {
            if (zzhVar != null) {
                Bundle bundle = new Bundle();
                for (zzfy.zzh zzhVar2 : zzhVar.zzi()) {
                    if (zzhVar2.zzn()) {
                        bundle.putString(zzhVar2.zzg(), zzhVar2.zzh());
                    } else if (zzhVar2.zzl()) {
                        bundle.putLong(zzhVar2.zzg(), zzhVar2.zzd());
                    } else if (zzhVar2.zzj()) {
                        bundle.putDouble(zzhVar2.zzg(), zzhVar2.zza());
                    }
                }
                if (!bundle.isEmpty()) {
                    arrayList.add(bundle);
                }
            }
        }
        return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
    }

    /* renamed from: b */
    public static int m22690b(zzfy.zzk.zza zzaVar, String str) {
        if (zzaVar == null) {
            return -1;
        }
        for (int i = 0; i < zzaVar.zzd(); i++) {
            if (str.equals(zzaVar.zzk(i).zzg())) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: h */
    public static zzfy.zzh m22691h(zzfy.zzf zzfVar, String str) {
        for (zzfy.zzh zzhVar : zzfVar.zzh()) {
            if (zzhVar.zzg().equals(str)) {
                return zzhVar;
            }
        }
        return null;
    }

    /* renamed from: i */
    public static <BuilderT extends com.google.android.gms.internal.measurement.zzlb> BuilderT m22692i(BuilderT buildert, byte[] bArr) throws zzkb {
        com.google.android.gms.internal.measurement.zzjg zza = com.google.android.gms.internal.measurement.zzjg.zza();
        return zza != null ? (BuilderT) buildert.zza(bArr, zza) : (BuilderT) buildert.zza(bArr);
    }

    /* renamed from: l */
    public static Object m22693l(zzfy.zzf zzfVar, String str, Object obj) {
        Object m22687H = m22687H(zzfVar, str);
        return m22687H == null ? obj : m22687H;
    }

    /* renamed from: p */
    public static String m22694p(boolean z, boolean z2, boolean z3) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("Dynamic ");
        }
        if (z2) {
            sb.append("Sequence ");
        }
        if (z3) {
            sb.append("Session-Scoped ");
        }
        return sb.toString();
    }

    /* renamed from: q */
    public static List<Long> m22695q(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            long j = 0;
            for (int i2 = 0; i2 < 64; i2++) {
                int i3 = (i << 6) + i2;
                if (i3 < bitSet.length()) {
                    if (bitSet.get(i3)) {
                        j |= 1 << i2;
                    }
                }
            }
            arrayList.add(Long.valueOf(j));
        }
        return arrayList;
    }

    /* renamed from: t */
    public static void m22696t(Uri.Builder builder, String str, String str2, Set<String> set) {
        if (set.contains(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        builder.appendQueryParameter(str, str2);
    }

    /* renamed from: u */
    public static void m22697u(Uri.Builder builder, String[] strArr, Bundle bundle, Set<String> set) {
        for (String str : strArr) {
            String[] split = str.split(",");
            String str2 = split[0];
            String str3 = split[split.length - 1];
            String string = bundle.getString(str2);
            if (string != null) {
                m22696t(builder, str3, string, set);
            }
        }
    }

    /* renamed from: v */
    public static void m22698v(zzfy.zzf.zza zzaVar, String str, Object obj) {
        List<zzfy.zzh> zzf = zzaVar.zzf();
        int i = 0;
        while (true) {
            if (i >= zzf.size()) {
                i = -1;
                break;
            } else if (str.equals(zzf.get(i).zzg())) {
                break;
            } else {
                i++;
            }
        }
        zzfy.zzh.zza zza = zzfy.zzh.zze().zza(str);
        if (obj instanceof Long) {
            zza.zza(((Long) obj).longValue());
        } else if (obj instanceof String) {
            zza.zzb((String) obj);
        } else if (obj instanceof Double) {
            zza.zza(((Double) obj).doubleValue());
        }
        if (i >= 0) {
            zzaVar.zza(i, zza);
        } else {
            zzaVar.zza(zza);
        }
    }

    /* renamed from: y */
    public static void m22699y(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(GlideException.C1935a.f14609h);
        }
    }

    /* renamed from: D */
    public final void m22700D(StringBuilder sb, int i, List<zzfy.zzh> list) {
        if (list == null) {
            return;
        }
        int i2 = i + 1;
        for (zzfy.zzh zzhVar : list) {
            if (zzhVar != null) {
                m22699y(sb, i2);
                sb.append("param {\n");
                m22684C(sb, i2, "name", zzhVar.zzm() ? zzi().zzb(zzhVar.zzg()) : null);
                m22684C(sb, i2, "string_value", zzhVar.zzn() ? zzhVar.zzh() : null);
                m22684C(sb, i2, "int_value", zzhVar.zzl() ? Long.valueOf(zzhVar.zzd()) : null);
                m22684C(sb, i2, "double_value", zzhVar.zzj() ? Double.valueOf(zzhVar.zza()) : null);
                if (zzhVar.zzc() > 0) {
                    m22700D(sb, i2, zzhVar.zzi());
                }
                m22699y(sb, i2);
                sb.append("}\n");
            }
        }
    }

    /* renamed from: E */
    public final boolean m22701E(long j, long j2) {
        return j == 0 || j2 <= 0 || Math.abs(zzb().currentTimeMillis() - j) > j2;
    }

    /* renamed from: J */
    public final byte[] m22702J(byte[] bArr) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            this.zzj().zzg().zza("Failed to gzip content", e);
            throw e;
        }
    }

    /* renamed from: L */
    public final byte[] m22703L(byte[] bArr) throws IOException {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[1024];
            while (true) {
                int read = gZIPInputStream.read(bArr2);
                if (read <= 0) {
                    gZIPInputStream.close();
                    byteArrayInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr2, 0, read);
            }
        } catch (IOException e) {
            this.zzj().zzg().zza("Failed to ungzip content", e);
            throw e;
        }
    }

    /* renamed from: M */
    public final List<Integer> m22704M() {
        Map<String, String> zza = zzbh.zza(this.zzg.zza());
        if (zza == null || zza.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int intValue = zzbh.zzar.zza(null).intValue();
        for (Map.Entry<String, String> entry : zza.entrySet()) {
            if (entry.getKey().startsWith("measurement.id.")) {
                try {
                    int parseInt = Integer.parseInt(entry.getValue());
                    if (parseInt != 0) {
                        arrayList.add(Integer.valueOf(parseInt));
                        if (arrayList.size() >= intValue) {
                            zzj().zzu().zza("Too many experiment IDs. Number of IDs", Integer.valueOf(arrayList.size()));
                            break;
                        }
                        continue;
                    } else {
                        continue;
                    }
                } catch (NumberFormatException e) {
                    zzj().zzu().zza("Experiment ID NumberFormatException", e);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }

    /* renamed from: c */
    public final long m22705c(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        return m22706d(str.getBytes(Charset.forName("UTF-8")));
    }

    @WorkerThread
    /* renamed from: d */
    public final long m22706d(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        zzq().zzt();
        MessageDigest m22733a0 = zzos.m22733a0();
        if (m22733a0 != null) {
            return zzos.m22734e(m22733a0.digest(bArr));
        }
        zzj().zzg().zza("Failed to get MD5");
        return 0L;
    }

    /* renamed from: e */
    public final Bundle m22707e(Map<String, Object> map, boolean z) {
        Bundle bundle = new Bundle();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj == null) {
                bundle.putString(str, null);
            } else if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else if (!(obj instanceof ArrayList)) {
                bundle.putString(str, obj.toString());
            } else if (z) {
                ArrayList arrayList = (ArrayList) obj;
                ArrayList arrayList2 = new ArrayList();
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj2 = arrayList.get(i);
                    i++;
                    arrayList2.add(m22707e((Map) obj2, false));
                }
                bundle.putParcelableArray(str, (Parcelable[]) arrayList2.toArray(new Parcelable[0]));
            }
        }
        return bundle;
    }

    /* renamed from: f */
    public final <T extends Parcelable> T m22708f(byte[] bArr, Parcelable.Creator<T> creator) {
        if (bArr == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            obtain.unmarshall(bArr, 0, bArr.length);
            obtain.setDataPosition(0);
            return creator.createFromParcel(obtain);
        } catch (SafeParcelReader.ParseException unused) {
            zzj().zzg().zza("Failed to load parcelable from buffer");
            return null;
        } finally {
            obtain.recycle();
        }
    }

    /* renamed from: g */
    public final zzfy.zzf m22709g(zzbc zzbcVar) {
        zzfy.zzf.zza zza = zzfy.zzf.zze().zza(zzbcVar.f29734e);
        Iterator<String> it2 = zzbcVar.f29735f.iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            zzfy.zzh.zza zza2 = zzfy.zzh.zze().zza(next);
            Object zzc = zzbcVar.f29735f.zzc(next);
            Preconditions.checkNotNull(zzc);
            m22717w(zza2, zzc);
            zza.zza(zza2);
        }
        if (zze().zza(zzbh.zzdi) && !TextUtils.isEmpty(zzbcVar.f29732c) && zzbcVar.f29735f.zzc("_o") == null) {
            zza.zza((zzfy.zzh) ((com.google.android.gms.internal.measurement.zzjt) zzfy.zzh.zze().zza("_o").zzb(zzbcVar.f29732c).zzai()));
        }
        return (zzfy.zzf) ((com.google.android.gms.internal.measurement.zzjt) zza.zzai());
    }

    @Override // com.sunia.HTREnginev2.lqp
    /* renamed from: g_ */
    public final /* bridge */ /* synthetic */ zzoo mo22451g_() {
        return super.mo22451g_();
    }

    /* renamed from: j */
    public final zzbf m22710j(com.google.android.gms.internal.measurement.zzad zzadVar) {
        Object obj;
        Bundle m22707e = m22707e(zzadVar.zzc(), true);
        String obj2 = (!m22707e.containsKey("_o") || (obj = m22707e.get("_o")) == null) ? "app" : obj.toString();
        String zzb = zzji.zzb(zzadVar.zzb());
        if (zzb == null) {
            zzb = zzadVar.zzb();
        }
        return new zzbf(zzb, new zzbe(m22707e), obj2, zzadVar.zza());
    }

    @TargetApi(30)
    /* renamed from: k */
    public final zzno m22711k(String str, zzfy.zzk.zza zzaVar, zzfy.zzf.zza zzaVar2, String str2) {
        int indexOf;
        if (!zzpn.zza() || !zze().zze(str, zzbh.zzch)) {
            return null;
        }
        long currentTimeMillis = zzb().currentTimeMillis();
        String[] split = zze().zzd(str, zzbh.zzbg).split(",");
        HashSet hashSet = new HashSet(split.length);
        for (String str3 : split) {
            Objects.requireNonNull(str3);
            if (!hashSet.add(str3)) {
                throw new IllegalArgumentException("duplicate element: " + ((Object) str3));
            }
        }
        Set unmodifiableSet = Collections.unmodifiableSet(hashSet);
        zznu zzo = zzo();
        String m22477q = zzo.zzm().m22477q(str);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(zzo.zze().zzd(str, zzbh.zzaz));
        if (TextUtils.isEmpty(m22477q)) {
            builder.authority(zzo.zze().zzd(str, zzbh.zzba));
        } else {
            builder.authority(m22477q + "." + zzo.zze().zzd(str, zzbh.zzba));
        }
        builder.path(zzo.zze().zzd(str, zzbh.zzbb));
        m22696t(builder, "gmp_app_id", zzaVar.zzx(), unmodifiableSet);
        m22696t(builder, "gmp_version", "106000", unmodifiableSet);
        String zzu = zzaVar.zzu();
        zzag zze = zze();
        zzfz<Boolean> zzfzVar = zzbh.zzck;
        if (zze.zze(str, zzfzVar) && zzm().m22484x(str)) {
            zzu = "";
        }
        m22696t(builder, "app_instance_id", zzu, unmodifiableSet);
        m22696t(builder, "rdid", zzaVar.zzz(), unmodifiableSet);
        m22696t(builder, "bundle_id", zzaVar.zzt(), unmodifiableSet);
        String zze2 = zzaVar2.zze();
        String zza = zzji.zza(zze2);
        if (!TextUtils.isEmpty(zza)) {
            zze2 = zza;
        }
        m22696t(builder, "app_event_name", zze2, unmodifiableSet);
        m22696t(builder, "app_version", String.valueOf(zzaVar.zzb()), unmodifiableSet);
        String zzy = zzaVar.zzy();
        if (zze().zze(str, zzfzVar) && zzm().m22463B(str) && !TextUtils.isEmpty(zzy) && (indexOf = zzy.indexOf(".")) != -1) {
            zzy = zzy.substring(0, indexOf);
        }
        m22696t(builder, "os_version", zzy, unmodifiableSet);
        m22696t(builder, NotificationCompat.CarExtender.f4980p, String.valueOf(zzaVar2.zzc()), unmodifiableSet);
        if (zzaVar.zzad()) {
            m22696t(builder, "lat", "1", unmodifiableSet);
        }
        m22696t(builder, "privacy_sandbox_version", String.valueOf(zzaVar.zza()), unmodifiableSet);
        m22696t(builder, "trigger_uri_source", "1", unmodifiableSet);
        m22696t(builder, "trigger_uri_timestamp", String.valueOf(currentTimeMillis), unmodifiableSet);
        m22696t(builder, "request_uuid", str2, unmodifiableSet);
        List<zzfy.zzh> zzf = zzaVar2.zzf();
        Bundle bundle = new Bundle();
        for (zzfy.zzh zzhVar : zzf) {
            String zzg = zzhVar.zzg();
            if (zzhVar.zzj()) {
                bundle.putString(zzg, String.valueOf(zzhVar.zza()));
            } else if (zzhVar.zzk()) {
                bundle.putString(zzg, String.valueOf(zzhVar.zzb()));
            } else if (zzhVar.zzn()) {
                bundle.putString(zzg, zzhVar.zzh());
            } else if (zzhVar.zzl()) {
                bundle.putString(zzg, String.valueOf(zzhVar.zzd()));
            }
        }
        m22697u(builder, zze().zzd(str, zzbh.zzbf).split("\\|"), bundle, unmodifiableSet);
        List<zzfy.zzo> zzab = zzaVar.zzab();
        Bundle bundle2 = new Bundle();
        for (zzfy.zzo zzoVar : zzab) {
            String zzg2 = zzoVar.zzg();
            if (zzoVar.zzi()) {
                bundle2.putString(zzg2, String.valueOf(zzoVar.zza()));
            } else if (zzoVar.zzj()) {
                bundle2.putString(zzg2, String.valueOf(zzoVar.zzb()));
            } else if (zzoVar.zzm()) {
                bundle2.putString(zzg2, zzoVar.zzh());
            } else if (zzoVar.zzk()) {
                bundle2.putString(zzg2, String.valueOf(zzoVar.zzc()));
            }
        }
        m22697u(builder, zze().zzd(str, zzbh.zzbe).split("\\|"), bundle2, unmodifiableSet);
        m22696t(builder, "dma", zzaVar.zzac() ? "1" : "0", unmodifiableSet);
        if (!zzaVar.zzw().isEmpty()) {
            m22696t(builder, "dma_cps", zzaVar.zzw(), unmodifiableSet);
        }
        if (zze().zza(zzbh.zzcm) && zzaVar.zzae()) {
            zzfy.zza zzg3 = zzaVar.zzg();
            if (!zzg3.zzh().isEmpty()) {
                m22696t(builder, "dl_gclid", zzg3.zzh(), unmodifiableSet);
            }
            if (!zzg3.zzg().isEmpty()) {
                m22696t(builder, "dl_gbraid", zzg3.zzg(), unmodifiableSet);
            }
            if (!zzg3.zzf().isEmpty()) {
                m22696t(builder, "dl_gs", zzg3.zzf(), unmodifiableSet);
            }
            if (zzg3.zza() > 0) {
                m22696t(builder, "dl_ss_ts", String.valueOf(zzg3.zza()), unmodifiableSet);
            }
            if (!zzg3.zzk().isEmpty()) {
                m22696t(builder, "mr_gclid", zzg3.zzk(), unmodifiableSet);
            }
            if (!zzg3.zzj().isEmpty()) {
                m22696t(builder, "mr_gbraid", zzg3.zzj(), unmodifiableSet);
            }
            if (!zzg3.zzi().isEmpty()) {
                m22696t(builder, "mr_gs", zzg3.zzi(), unmodifiableSet);
            }
            if (zzg3.zzb() > 0) {
                m22696t(builder, "mr_click_ts", String.valueOf(zzg3.zzb()), unmodifiableSet);
            }
        }
        return new zzno(builder.build().toString(), currentTimeMillis, 1);
    }

    /* renamed from: m */
    public final String m22712m(zzfo.zzb zzbVar) {
        if (zzbVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nevent_filter {\n");
        if (zzbVar.zzl()) {
            m22684C(sb, 0, "filter_id", Integer.valueOf(zzbVar.zzb()));
        }
        m22684C(sb, 0, "event_name", zzi().zza(zzbVar.zzf()));
        String m22694p = m22694p(zzbVar.zzh(), zzbVar.zzi(), zzbVar.zzj());
        if (!m22694p.isEmpty()) {
            m22684C(sb, 0, "filter_type", m22694p);
        }
        if (zzbVar.zzk()) {
            m22682A(sb, 1, "event_count_filter", zzbVar.zze());
        }
        if (zzbVar.zza() > 0) {
            sb.append("  filters {\n");
            Iterator<zzfo.zzc> it2 = zzbVar.zzg().iterator();
            while (it2.hasNext()) {
                m22719z(sb, 2, it2.next());
            }
        }
        m22699y(sb, 1);
        sb.append("}\n}\n");
        return sb.toString();
    }

    /* renamed from: n */
    public final String m22713n(zzfo.zze zzeVar) {
        if (zzeVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nproperty_filter {\n");
        if (zzeVar.zzi()) {
            m22684C(sb, 0, "filter_id", Integer.valueOf(zzeVar.zza()));
        }
        m22684C(sb, 0, "property_name", zzi().zzc(zzeVar.zze()));
        String m22694p = m22694p(zzeVar.zzf(), zzeVar.zzg(), zzeVar.zzh());
        if (!m22694p.isEmpty()) {
            m22684C(sb, 0, "filter_type", m22694p);
        }
        m22719z(sb, 1, zzeVar.zzb());
        sb.append("}\n");
        return sb.toString();
    }

    /* renamed from: o */
    public final String m22714o(zzfy.zzj zzjVar) {
        zzfy.zzc zzv;
        if (zzjVar == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nbatch {\n");
        if (zzpu.zza() && zze().zza(zzbh.zzbx) && zzjVar.zza() > 0) {
            zzq();
            if (zzos.m22728S(zzjVar.zza(0).zzz())) {
                if (zzjVar.zzh()) {
                    m22684C(sb, 0, "upload_subdomain", zzjVar.zze());
                }
                if (zzjVar.zzg()) {
                    m22684C(sb, 0, "sgtm_join_id", zzjVar.zzd());
                }
            }
        }
        for (zzfy.zzk zzkVar : zzjVar.zzf()) {
            if (zzkVar != null) {
                m22699y(sb, 1);
                sb.append("bundle {\n");
                if (zzkVar.zzbp()) {
                    m22684C(sb, 1, "protocol_version", Integer.valueOf(zzkVar.zzf()));
                }
                if (zzpo.zza() && zze().zze(zzkVar.zzz(), zzbh.zzbw) && zzkVar.zzbs()) {
                    m22684C(sb, 1, "session_stitching_token", zzkVar.zzao());
                }
                m22684C(sb, 1, "platform", zzkVar.zzam());
                if (zzkVar.zzbk()) {
                    m22684C(sb, 1, "gmp_version", Long.valueOf(zzkVar.zzn()));
                }
                if (zzkVar.zzbx()) {
                    m22684C(sb, 1, "uploading_gmp_version", Long.valueOf(zzkVar.zzt()));
                }
                if (zzkVar.zzbi()) {
                    m22684C(sb, 1, "dynamite_version", Long.valueOf(zzkVar.zzl()));
                }
                if (zzkVar.zzbb()) {
                    m22684C(sb, 1, "config_version", Long.valueOf(zzkVar.zzj()));
                }
                m22684C(sb, 1, "gmp_app_id", zzkVar.zzaj());
                m22684C(sb, 1, "admob_app_id", zzkVar.zzy());
                m22684C(sb, 1, "app_id", zzkVar.zzz());
                m22684C(sb, 1, "app_version", zzkVar.zzac());
                if (zzkVar.zzay()) {
                    m22684C(sb, 1, "app_version_major", Integer.valueOf(zzkVar.zzb()));
                }
                m22684C(sb, 1, "firebase_instance_id", zzkVar.zzai());
                if (zzkVar.zzbg()) {
                    m22684C(sb, 1, "dev_cert_hash", Long.valueOf(zzkVar.zzk()));
                }
                m22684C(sb, 1, "app_store", zzkVar.zzab());
                if (zzkVar.zzbw()) {
                    m22684C(sb, 1, "upload_timestamp_millis", Long.valueOf(zzkVar.zzs()));
                }
                if (zzkVar.zzbt()) {
                    m22684C(sb, 1, "start_timestamp_millis", Long.valueOf(zzkVar.zzq()));
                }
                if (zzkVar.zzbj()) {
                    m22684C(sb, 1, "end_timestamp_millis", Long.valueOf(zzkVar.zzm()));
                }
                if (zzkVar.zzbo()) {
                    m22684C(sb, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(zzkVar.zzp()));
                }
                if (zzkVar.zzbn()) {
                    m22684C(sb, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(zzkVar.zzo()));
                }
                m22684C(sb, 1, "app_instance_id", zzkVar.zzaa());
                m22684C(sb, 1, "resettable_device_id", zzkVar.zzan());
                m22684C(sb, 1, "ds_id", zzkVar.zzah());
                if (zzkVar.zzbm()) {
                    m22684C(sb, 1, "limited_ad_tracking", Boolean.valueOf(zzkVar.zzav()));
                }
                m22684C(sb, 1, "os_version", zzkVar.zzal());
                m22684C(sb, 1, "device_model", zzkVar.zzag());
                m22684C(sb, 1, "user_default_language", zzkVar.zzap());
                if (zzkVar.zzbv()) {
                    m22684C(sb, 1, "time_zone_offset_minutes", Integer.valueOf(zzkVar.zzh()));
                }
                if (zzkVar.zzba()) {
                    m22684C(sb, 1, "bundle_sequential_index", Integer.valueOf(zzkVar.zzc()));
                }
                if (zzpu.zza()) {
                    zzq();
                    if (zzos.m22728S(zzkVar.zzz()) && zze().zza(zzbh.zzbx) && zzkVar.zzbf()) {
                        m22684C(sb, 1, "delivery_index", Integer.valueOf(zzkVar.zzd()));
                    }
                }
                if (zzkVar.zzbr()) {
                    m22684C(sb, 1, "service_upload", Boolean.valueOf(zzkVar.zzaw()));
                }
                m22684C(sb, 1, "health_monitor", zzkVar.zzak());
                if (zzkVar.zzbq()) {
                    m22684C(sb, 1, "retry_counter", Integer.valueOf(zzkVar.zzg()));
                }
                if (zzkVar.zzbd()) {
                    m22684C(sb, 1, "consent_signals", zzkVar.zzae());
                }
                if (zzkVar.zzbl()) {
                    m22684C(sb, 1, "is_dma_region", Boolean.valueOf(zzkVar.zzau()));
                }
                if (zzkVar.zzbe()) {
                    m22684C(sb, 1, "core_platform_services", zzkVar.zzaf());
                }
                if (zzkVar.zzbc()) {
                    m22684C(sb, 1, "consent_diagnostics", zzkVar.zzad());
                }
                if (zzkVar.zzbu()) {
                    m22684C(sb, 1, "target_os_version", Long.valueOf(zzkVar.zzr()));
                }
                if (zzpn.zza() && zze().zze(zzkVar.zzz(), zzbh.zzch)) {
                    m22684C(sb, 1, "ad_services_version", Integer.valueOf(zzkVar.zza()));
                    if (zzkVar.zzaz() && (zzv = zzkVar.zzv()) != null) {
                        m22699y(sb, 2);
                        sb.append("attribution_eligibility_status {\n");
                        m22684C(sb, 2, "eligible", Boolean.valueOf(zzv.zzf()));
                        m22684C(sb, 2, "no_access_adservices_attribution_permission", Boolean.valueOf(zzv.zzh()));
                        m22684C(sb, 2, "pre_r", Boolean.valueOf(zzv.zzi()));
                        m22684C(sb, 2, "r_extensions_too_old", Boolean.valueOf(zzv.zzj()));
                        m22684C(sb, 2, "adservices_extension_too_old", Boolean.valueOf(zzv.zze()));
                        m22684C(sb, 2, "ad_storage_not_allowed", Boolean.valueOf(zzv.zzd()));
                        m22684C(sb, 2, "measurement_manager_disabled", Boolean.valueOf(zzv.zzg()));
                        m22699y(sb, 2);
                        sb.append("}\n");
                    }
                }
                if (zzov.zza() && zze().zza(zzbh.zzcu) && zzkVar.zzax()) {
                    zzfy.zza zzu = zzkVar.zzu();
                    m22699y(sb, 2);
                    sb.append("ad_campaign_info {\n");
                    if (zzu.zzn()) {
                        m22684C(sb, 2, "deep_link_gclid", zzu.zzh());
                    }
                    if (zzu.zzm()) {
                        m22684C(sb, 2, "deep_link_gbraid", zzu.zzg());
                    }
                    if (zzu.zzl()) {
                        m22684C(sb, 2, "deep_link_gad_source", zzu.zzf());
                    }
                    if (zzu.zzo()) {
                        m22684C(sb, 2, "deep_link_session_millis", Long.valueOf(zzu.zza()));
                    }
                    if (zzu.zzs()) {
                        m22684C(sb, 2, "market_referrer_gclid", zzu.zzk());
                    }
                    if (zzu.zzr()) {
                        m22684C(sb, 2, "market_referrer_gbraid", zzu.zzj());
                    }
                    if (zzu.zzq()) {
                        m22684C(sb, 2, "market_referrer_gad_source", zzu.zzi());
                    }
                    if (zzu.zzp()) {
                        m22684C(sb, 2, "market_referrer_click_millis", Long.valueOf(zzu.zzb()));
                    }
                    m22699y(sb, 2);
                    sb.append("}\n");
                }
                List<zzfy.zzo> zzas = zzkVar.zzas();
                if (zzas != null) {
                    for (zzfy.zzo zzoVar : zzas) {
                        if (zzoVar != null) {
                            m22699y(sb, 2);
                            sb.append("user_property {\n");
                            m22684C(sb, 2, "set_timestamp_millis", zzoVar.zzl() ? Long.valueOf(zzoVar.zzd()) : null);
                            m22684C(sb, 2, "name", zzi().zzc(zzoVar.zzg()));
                            m22684C(sb, 2, "string_value", zzoVar.zzh());
                            m22684C(sb, 2, "int_value", zzoVar.zzk() ? Long.valueOf(zzoVar.zzc()) : null);
                            m22684C(sb, 2, "double_value", zzoVar.zzi() ? Double.valueOf(zzoVar.zza()) : null);
                            m22699y(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<zzfy.zzd> zzaq = zzkVar.zzaq();
                zzkVar.zzz();
                if (zzaq != null) {
                    for (zzfy.zzd zzdVar : zzaq) {
                        if (zzdVar != null) {
                            m22699y(sb, 2);
                            sb.append("audience_membership {\n");
                            if (zzdVar.zzg()) {
                                m22684C(sb, 2, "audience_id", Integer.valueOf(zzdVar.zza()));
                            }
                            if (zzdVar.zzh()) {
                                m22684C(sb, 2, "new_audience", Boolean.valueOf(zzdVar.zzf()));
                            }
                            m22683B(sb, 2, "current_data", zzdVar.zzd());
                            if (zzdVar.zzi()) {
                                m22683B(sb, 2, "previous_data", zzdVar.zze());
                            }
                            m22699y(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<zzfy.zzf> zzar = zzkVar.zzar();
                if (zzar != null) {
                    for (zzfy.zzf zzfVar : zzar) {
                        if (zzfVar != null) {
                            m22699y(sb, 2);
                            sb.append("event {\n");
                            m22684C(sb, 2, "name", zzi().zza(zzfVar.zzg()));
                            if (zzfVar.zzk()) {
                                m22684C(sb, 2, "timestamp_millis", Long.valueOf(zzfVar.zzd()));
                            }
                            if (zzfVar.zzj()) {
                                m22684C(sb, 2, "previous_timestamp_millis", Long.valueOf(zzfVar.zzc()));
                            }
                            if (zzfVar.zzi()) {
                                m22684C(sb, 2, "count", Integer.valueOf(zzfVar.zza()));
                            }
                            if (zzfVar.zzb() != 0) {
                                m22700D(sb, 2, zzfVar.zzh());
                            }
                            m22699y(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                m22699y(sb, 1);
                sb.append("}\n");
            }
        }
        sb.append("} // End-of-batch\n");
        return sb.toString();
    }

    /* renamed from: r */
    public final List<Long> m22715r(List<Long> list, List<Integer> list2) {
        int i;
        ArrayList arrayList = new ArrayList(list);
        for (Integer num : list2) {
            if (num.intValue() < 0) {
                zzj().zzu().zza("Ignoring negative bit index to be cleared", num);
            } else {
                int intValue = num.intValue() / 64;
                if (intValue >= arrayList.size()) {
                    zzj().zzu().zza("Ignoring bit index greater than bitSet size", num, Integer.valueOf(arrayList.size()));
                } else {
                    arrayList.set(intValue, Long.valueOf(((Long) arrayList.get(intValue)).longValue() & (~(1 << (num.intValue() % 64)))));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (true) {
            int i2 = size2;
            i = size;
            size = i2;
            if (size < 0 || ((Long) arrayList.get(size)).longValue() != 0) {
                break;
            }
            size2 = size - 1;
        }
        return arrayList.subList(0, i);
    }

    /* renamed from: s */
    public final Map<String, Object> m22716s(Bundle bundle, boolean z) {
        HashMap hashMap = new HashMap();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            boolean z2 = obj instanceof Parcelable[];
            if (z2 || (obj instanceof ArrayList) || (obj instanceof Bundle)) {
                if (z) {
                    ArrayList arrayList = new ArrayList();
                    if (z2) {
                        for (Parcelable parcelable : (Parcelable[]) obj) {
                            if (parcelable instanceof Bundle) {
                                arrayList.add(m22716s((Bundle) parcelable, false));
                            }
                        }
                    } else if (obj instanceof ArrayList) {
                        ArrayList arrayList2 = (ArrayList) obj;
                        int size = arrayList2.size();
                        int i = 0;
                        while (i < size) {
                            Object obj2 = arrayList2.get(i);
                            i++;
                            if (obj2 instanceof Bundle) {
                                arrayList.add(m22716s((Bundle) obj2, false));
                            }
                        }
                    } else if (obj instanceof Bundle) {
                        arrayList.add(m22716s((Bundle) obj, false));
                    }
                    hashMap.put(str, arrayList);
                }
            } else if (obj != null) {
                hashMap.put(str, obj);
            }
        }
        return hashMap;
    }

    /* renamed from: w */
    public final void m22717w(zzfy.zzh.zza zzaVar, Object obj) {
        Preconditions.checkNotNull(obj);
        zzaVar.zze().zzc().zzb().zzd();
        if (obj instanceof String) {
            zzaVar.zzb((String) obj);
            return;
        }
        if (obj instanceof Long) {
            zzaVar.zza(((Long) obj).longValue());
            return;
        }
        if (obj instanceof Double) {
            zzaVar.zza(((Double) obj).doubleValue());
            return;
        }
        if (!(obj instanceof Bundle[])) {
            zzj().zzg().zza("Ignoring invalid (type) event param value", obj);
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : (Bundle[]) obj) {
            if (bundle != null) {
                zzfy.zzh.zza zze = zzfy.zzh.zze();
                for (String str : bundle.keySet()) {
                    zzfy.zzh.zza zza = zzfy.zzh.zze().zza(str);
                    Object obj2 = bundle.get(str);
                    if (obj2 instanceof Long) {
                        zza.zza(((Long) obj2).longValue());
                    } else if (obj2 instanceof String) {
                        zza.zzb((String) obj2);
                    } else if (obj2 instanceof Double) {
                        zza.zza(((Double) obj2).doubleValue());
                    }
                    zze.zza(zza);
                }
                if (zze.zza() > 0) {
                    arrayList.add((zzfy.zzh) ((com.google.android.gms.internal.measurement.zzjt) zze.zzai()));
                }
            }
        }
        zzaVar.zza(arrayList);
    }

    /* renamed from: x */
    public final void m22718x(zzfy.zzo.zza zzaVar, Object obj) {
        Preconditions.checkNotNull(obj);
        zzaVar.zzc().zzb().zza();
        if (obj instanceof String) {
            zzaVar.zzb((String) obj);
            return;
        }
        if (obj instanceof Long) {
            zzaVar.zza(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            zzaVar.zza(((Double) obj).doubleValue());
        } else {
            zzj().zzg().zza("Ignoring invalid (type) user attribute value", obj);
        }
    }

    /* renamed from: z */
    public final void m22719z(StringBuilder sb, int i, zzfo.zzc zzcVar) {
        if (zzcVar == null) {
            return;
        }
        m22699y(sb, i);
        sb.append("filter {\n");
        if (zzcVar.zzg()) {
            m22684C(sb, i, "complement", Boolean.valueOf(zzcVar.zzf()));
        }
        if (zzcVar.zzi()) {
            m22684C(sb, i, "param_name", zzi().zzb(zzcVar.zze()));
        }
        if (zzcVar.zzj()) {
            int i2 = i + 1;
            zzfo.zzf zzd = zzcVar.zzd();
            if (zzd != null) {
                m22699y(sb, i2);
                sb.append("string_filter");
                sb.append(" {\n");
                if (zzd.zzj()) {
                    m22684C(sb, i2, "match_type", zzd.zzb().name());
                }
                if (zzd.zzi()) {
                    m22684C(sb, i2, "expression", zzd.zze());
                }
                if (zzd.zzh()) {
                    m22684C(sb, i2, "case_sensitive", Boolean.valueOf(zzd.zzg()));
                }
                if (zzd.zza() > 0) {
                    m22699y(sb, i2 + 1);
                    sb.append("expression_list {\n");
                    for (String str : zzd.zzf()) {
                        m22699y(sb, i2 + 2);
                        sb.append(str);
                        sb.append("\n");
                    }
                    sb.append("}\n");
                }
                m22699y(sb, i2);
                sb.append("}\n");
            }
        }
        if (zzcVar.zzh()) {
            m22682A(sb, i + 1, "number_filter", zzcVar.zzc());
        }
        m22699y(sb, i);
        sb.append("}\n");
    }

    @Override // com.google.android.gms.measurement.internal.C5116d, com.sunia.HTREnginev2.anp
    @Pure
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d, com.sunia.HTREnginev2.anp
    @Pure
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    @Override // com.sunia.HTREnginev2.kqp
    public final boolean zzc() {
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.C5116d, com.sunia.HTREnginev2.anp
    @Pure
    public final /* bridge */ /* synthetic */ zzab zzd() {
        return super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    @Pure
    public final /* bridge */ /* synthetic */ zzag zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    @Pure
    public final /* bridge */ /* synthetic */ zzaz zzf() {
        return super.zzf();
    }

    @Override // com.sunia.HTREnginev2.lqp
    public final /* bridge */ /* synthetic */ lrp zzg() {
        return super.zzg();
    }

    @Override // com.sunia.HTREnginev2.lqp
    public final /* bridge */ /* synthetic */ hgp zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    @Pure
    public final /* bridge */ /* synthetic */ zzgh zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d, com.sunia.HTREnginev2.anp
    @Pure
    public final /* bridge */ /* synthetic */ zzgo zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    @Pure
    public final /* bridge */ /* synthetic */ hlp zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d, com.sunia.HTREnginev2.anp
    @Pure
    public final /* bridge */ /* synthetic */ zzhv zzl() {
        return super.zzl();
    }

    @Override // com.sunia.HTREnginev2.lqp
    public final /* bridge */ /* synthetic */ zzhl zzm() {
        return super.zzm();
    }

    @Override // com.sunia.HTREnginev2.lqp
    public final /* bridge */ /* synthetic */ zzmw zzn() {
        return super.zzn();
    }

    @Override // com.sunia.HTREnginev2.lqp
    public final /* bridge */ /* synthetic */ zznu zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    @Pure
    public final /* bridge */ /* synthetic */ zzos zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    public final /* bridge */ /* synthetic */ void zzr() {
        super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    public final /* bridge */ /* synthetic */ void zzs() {
        super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    public static Bundle zza(List<zzfy.zzh> list) {
        Bundle bundle = new Bundle();
        for (zzfy.zzh zzhVar : list) {
            String zzg = zzhVar.zzg();
            if (zzhVar.zzj()) {
                bundle.putDouble(zzg, zzhVar.zza());
            } else if (zzhVar.zzk()) {
                bundle.putFloat(zzg, zzhVar.zzb());
            } else if (zzhVar.zzn()) {
                bundle.putString(zzg, zzhVar.zzh());
            } else if (zzhVar.zzl()) {
                bundle.putLong(zzg, zzhVar.zzd());
            }
        }
        return bundle;
    }
}
