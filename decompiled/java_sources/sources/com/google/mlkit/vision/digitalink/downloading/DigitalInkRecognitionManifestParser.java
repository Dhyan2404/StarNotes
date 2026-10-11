package com.google.mlkit.vision.digitalink.downloading;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzaq;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzas;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzbhm;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzbht;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzbhu;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzbhz;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzbif;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzbnw;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzbny;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzbob;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzcam;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzcan;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzcao;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzcap;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzcaq;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzcar;
import com.google.mlkit.common.sdkinternal.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes6.dex */
public final class DigitalInkRecognitionManifestParser {

    /* renamed from: a */
    public final Context f36768a;

    /* renamed from: b */
    public final zzbhu f36769b;

    /* renamed from: c */
    public final zzbht f36770c;

    /* loaded from: classes6.dex */
    public @interface KeepForGsonParsing {
    }

    @KeepForGsonParsing
    /* loaded from: classes6.dex */
    public static final class Manifest {
        List<Pack> packs;

        private Manifest() {
        }
    }

    @KeepForGsonParsing
    /* loaded from: classes6.dex */
    public static final class Pack {
        int compressedSize;
        String downloadPackingScheme;
        List<String> downloadUrls;
        String md5Checksum;
        String name;
        String sha1Checksum;
        int size;

        private Pack() {
        }

        public boolean isValid() {
            String str;
            List<String> list = this.downloadUrls;
            return (list == null || list.isEmpty() || this.compressedSize <= 0 || (str = this.name) == null || str.isEmpty()) ? false : true;
        }

        public zzas toDataFile() {
            zzaq zza = zzas.zza();
            zza.zze(this.downloadUrls.get(0));
            zza.zza(this.compressedSize);
            zza.zzc(this.sha1Checksum);
            zzcao zzg = zzcap.zzg();
            zzcam zzg2 = zzcan.zzg();
            zzcaq zzc = zzcar.zzc();
            zzc.zza("*");
            zzg2.zzd((zzcar) zzc.zzx());
            zzg.zza(zzg2);
            zza.zzb((zzcap) zzg.zzx());
            zza.zzd(this.name);
            return (zzas) zza.zzx();
        }
    }

    public DigitalInkRecognitionManifestParser(Context context) {
        zzbhu zzbhuVar = new zzbhu();
        this.f36769b = zzbhuVar;
        this.f36768a = context;
        zzbhuVar.zzb(zzbhm.LOWER_CASE_WITH_UNDERSCORES);
        this.f36770c = zzbhuVar.zza();
    }

    /* renamed from: a */
    public final Map m28580a() throws IOException {
        Manifest manifest;
        List<Pack> list;
        InputStream open = this.f36768a.getAssets().open(Constants.AUTOML_IMAGE_LABELING_MANIFEST_JSON_FILE_NAME);
        if (Log.isLoggable("DIRecoDownload", 4)) {
            Log.i("DIRecoDownload", "DigitalInkRecognitionManifestParser.parseManifest()");
        }
        HashMap hashMap = new HashMap();
        try {
            zzbht zzbhtVar = this.f36770c;
            InputStreamReader inputStreamReader = new InputStreamReader(open);
            Class cls = Manifest.class;
            zzbnw zza = zzbnw.zza(cls);
            zzbny zzbnyVar = new zzbny(inputStreamReader);
            zzbnyVar.zzo(false);
            Object zzc = zzbhtVar.zzc(zzbnyVar, zza);
            if (zzc != null) {
                try {
                    try {
                        if (zzbnyVar.zzt() != 10) {
                            throw new zzbif("JSON document was not fully consumed.");
                        }
                    } catch (zzbob e) {
                        throw new zzbif(e);
                    }
                } catch (IOException e2) {
                    throw new zzbhz(e2);
                }
            }
            if (Integer.TYPE == cls) {
                cls = Integer.class;
            } else if (Float.TYPE == cls) {
                cls = Float.class;
            } else if (Byte.TYPE == cls) {
                cls = Byte.class;
            } else if (Double.TYPE == cls) {
                cls = Double.class;
            } else if (Long.TYPE == cls) {
                cls = Long.class;
            } else if (Character.TYPE == cls) {
                cls = Character.class;
            } else if (Boolean.TYPE == cls) {
                cls = Boolean.class;
            } else if (Short.TYPE == cls) {
                cls = Short.class;
            } else if (Void.TYPE == cls) {
                cls = Void.class;
            }
            manifest = (Manifest) cls.cast(zzc);
        } catch (zzbif e3) {
            Log.e("DIRecoDownload", "Failed parsing manifest:", e3);
            manifest = null;
        }
        if (manifest != null && (list = manifest.packs) != null) {
            for (Pack pack : list) {
                if (pack.isValid()) {
                    hashMap.put(pack.name, pack.toDataFile());
                } else {
                    Log.e("DIRecoDownload", "Skip invalid pack.");
                }
            }
        }
        if (Log.isLoggable("DIRecoDownload", 4)) {
            Log.i("DIRecoDownload", "DigitalInkRecognitionManifestParser.parseManifestFromAsset(): read " + hashMap.size() + " manifest entries");
        }
        return hashMap;
    }
}
