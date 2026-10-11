package com.google.mlkit.vision.text.pipeline;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.Image;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbabj;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbbb;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbbe;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbiu;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbix;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbkf;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbki;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbku;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbkx;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zblc;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbnx;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zboe;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbog;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zboi;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbok;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zboo;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbpb;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbpf;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbpg;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbpi;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbpk;
import com.google.android.libraries.vision.visionkit.pipeline.AndroidAssetUtil;
import com.google.android.libraries.vision.visionkit.pipeline.alt.PipelineException;
import com.google.android.libraries.vision.visionkit.pipeline.zbbz;
import com.google.android.libraries.vision.visionkit.pipeline.zbca;
import com.google.android.libraries.vision.visionkit.pipeline.zbct;
import com.google.android.libraries.vision.visionkit.pipeline.zbcv;
import com.google.android.libraries.vision.visionkit.pipeline.zbcw;
import com.google.android.libraries.vision.visionkit.pipeline.zbcz;
import com.google.android.libraries.vision.visionkit.pipeline.zbdl;
import com.google.android.libraries.vision.visionkit.pipeline.zbdo;
import com.google.android.libraries.vision.visionkit.pipeline.zbfb;
import com.google.android.libraries.vision.visionkit.pipeline.zbfc;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.vision.common.internal.ImageConvertUtils;
import com.google.mlkit.vision.common.internal.ImageUtils;
import com.sunia.HTREnginev2.cep;
import com.sunia.HTREnginev2.fcp;
import com.sunia.HTREnginev2.fep;
import com.sunia.HTREnginev2.iep;
import com.sunia.HTREnginev2.lep;
import com.sunia.HTREnginev2.rcp;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

@WorkerThread
/* loaded from: classes6.dex */
public final class zbi {

    /* renamed from: a */
    public final Context f36856a;

    /* renamed from: b */
    public final VkpTextRecognizerOptions f36857b;

    /* renamed from: c */
    @Nullable
    public iep f36858c;

    /* renamed from: d */
    public boolean f36859d;

    /* renamed from: e */
    public boolean f36860e = true;

    public zbi(Context context, VkpTextRecognizerOptions vkpTextRecognizerOptions) {
        this.f36856a = context;
        this.f36857b = vkpTextRecognizerOptions;
    }

    public static zbi zba(Context context, VkpTextRecognizerOptions vkpTextRecognizerOptions) {
        return new zbi(context, vkpTextRecognizerOptions);
    }

    public final zbn zbb(IObjectWrapper iObjectWrapper, zbnx zbnxVar, boolean z) {
        zbki zbe;
        zbku zbkuVar;
        zbku zbkuVar2;
        zbku zbkuVar3;
        zbo zbc = zbc();
        if (!zbc.zbd()) {
            return zbn.zbe(zbc);
        }
        try {
            int i = 3;
            int i2 = 1;
            if (zbnxVar.zbb() == -1) {
                Log.d("PipelineManager", "Start process bitmap");
                Bitmap bitmap = (Bitmap) Preconditions.checkNotNull((Bitmap) ObjectWrapper.unwrap(iObjectWrapper));
                if (bitmap.getConfig() != Bitmap.Config.ARGB_8888) {
                    Log.d("PipelineManager", "Input bitmap is not ARGB_8888 config. Converting it to ARGB_8888 from " + String.valueOf(bitmap.getConfig()));
                    bitmap = bitmap.copy(Bitmap.Config.ARGB_8888, bitmap.isMutable());
                }
                zbe = ((iep) Preconditions.checkNotNull(this.f36858c)).zbi(SystemClock.elapsedRealtime() * 1000, bitmap, lep.m55414b(zbnxVar.zbc()));
            } else if (zbnxVar.zbb() == 35) {
                Log.d("PipelineManager", "Start process YUV");
                Image.Plane[] planes = ((Image) Preconditions.checkNotNull(ObjectWrapper.unwrap(iObjectWrapper))).getPlanes();
                zbe = ((iep) Preconditions.checkNotNull(this.f36858c)).zbj(SystemClock.elapsedRealtime() * 1000, ((Image.Plane) Preconditions.checkNotNull(planes[0])).getBuffer(), ((Image.Plane) Preconditions.checkNotNull(planes[1])).getBuffer(), ((Image.Plane) Preconditions.checkNotNull(planes[2])).getBuffer(), zbnxVar.zbd(), zbnxVar.zba(), ((Image.Plane) Preconditions.checkNotNull(planes[0])).getRowStride(), ((Image.Plane) Preconditions.checkNotNull(planes[1])).getRowStride(), ((Image.Plane) Preconditions.checkNotNull(planes[1])).getPixelStride(), lep.m55414b(zbnxVar.zbc()));
            } else if (zbnxVar.zbb() == 17) {
                Log.d("PipelineManager", "Start process NV21");
                zbe = ((iep) Preconditions.checkNotNull(this.f36858c)).zbe(lep.m55413a(ImageConvertUtils.bufferWithBackingArray((ByteBuffer) Preconditions.checkNotNull((ByteBuffer) ObjectWrapper.unwrap(iObjectWrapper))), zbnxVar));
            } else {
                if (zbnxVar.zbb() != 842094169) {
                    throw new MlKitException("Unsupported image format: " + zbnxVar.zbb(), 3);
                }
                Log.d("PipelineManager", "Start process YV12");
                zbe = ((iep) Preconditions.checkNotNull(this.f36858c)).zbe(lep.m55413a(ImageConvertUtils.yv12ToNv21Buffer((ByteBuffer) Preconditions.checkNotNull(ObjectWrapper.unwrap(iObjectWrapper)), true), zbnxVar));
            }
            if (!zbe.zbc()) {
                return zbn.zbe(zbo.m28596a(3, new RemoteException("VisionKit pipeline returns empty result.")));
            }
            Log.d("PipelineManager", "OCR process succeeded via visionkit pipeline.");
            zbcz zbczVar = (zbcz) zbe.zba();
            Matrix uprightRotationMatrix = ImageUtils.getInstance().getUprightRotationMatrix(zbnxVar.zbd(), zbnxVar.zba(), zbnxVar.zbc());
            boolean z2 = this.f36860e;
            rcp rcpVar = new rcp(0, zbki.zbd());
            List<zbabj> zbf = zbczVar.zbe().zbf();
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = new HashMap();
            for (zbabj zbabjVar : zbf) {
                if (zbabjVar.zbI() == 6) {
                    zbpb m53437b = cep.m53437b(zbabjVar.zbf());
                    List m53438c = cep.m53438c(m53437b);
                    zboo zbooVar = new zboo(zbabjVar.zbH(), cep.m53436a(m53438c, uprightRotationMatrix), m53438c, zbabjVar.zbc(), m53437b.zba());
                    Integer valueOf = Integer.valueOf(zbabjVar.zbe());
                    if (hashMap2.containsKey(valueOf)) {
                        zbkuVar3 = (zbku) hashMap2.get(valueOf);
                    } else {
                        zbku zbkuVar4 = new zbku();
                        hashMap2.put(valueOf, zbkuVar4);
                        zbkuVar3 = zbkuVar4;
                    }
                    ((zbku) Preconditions.checkNotNull(zbkuVar3)).zba(zbooVar);
                }
            }
            int i3 = 0;
            while (i3 < zbf.size()) {
                zbabj zbabjVar2 = (zbabj) zbf.get(i3);
                if (zbabjVar2.zbI() == i2) {
                    zbpb m53437b2 = cep.m53437b(zbabjVar2.zbf());
                    List m53438c2 = cep.m53438c(m53437b2);
                    Integer valueOf2 = Integer.valueOf(i3);
                    zbog zbogVar = new zbog(zbabjVar2.zbH(), cep.m53436a(m53438c2, uprightRotationMatrix), m53438c2, fep.m54095a(zbabjVar2.zbh().zbf()), zbabjVar2.zbc(), m53437b2.zba(), (List) Preconditions.checkNotNull(hashMap2.containsKey(valueOf2) ? ((zbku) Preconditions.checkNotNull((zbku) hashMap2.get(valueOf2))).zbb() : zbkx.zbh()));
                    Integer valueOf3 = Integer.valueOf(zbabjVar2.zbe());
                    if (hashMap.containsKey(valueOf3)) {
                        zbkuVar2 = (zbku) hashMap.get(valueOf3);
                    } else {
                        zbku zbkuVar5 = new zbku();
                        hashMap.put(valueOf3, zbkuVar5);
                        zbkuVar2 = zbkuVar5;
                    }
                    ((zbku) Preconditions.checkNotNull(zbkuVar2)).zba(zbogVar);
                }
                i3++;
                i2 = 1;
            }
            int i4 = 0;
            while (i4 < zbf.size()) {
                zbabj zbabjVar3 = (zbabj) zbf.get(i4);
                if (zbabjVar3.zbI() == i) {
                    zbpb m53437b3 = cep.m53437b(zbabjVar3.zbf());
                    List m53438c3 = cep.m53438c(m53437b3);
                    Integer valueOf4 = Integer.valueOf(i4);
                    zboi zboiVar = new zboi(zbabjVar3.zbH(), cep.m53436a(m53438c3, uprightRotationMatrix), m53438c3, fep.m54095a(zbabjVar3.zbh().zbf()), (List) Preconditions.checkNotNull(hashMap.containsKey(valueOf4) ? ((zbku) Preconditions.checkNotNull((zbku) hashMap.get(valueOf4))).zbb() : zbkx.zbh()), zbabjVar3.zbc(), m53437b3.zba());
                    Integer valueOf5 = Integer.valueOf(zbabjVar3.zbe());
                    if (hashMap3.containsKey(valueOf5)) {
                        zbkuVar = (zbku) hashMap3.get(valueOf5);
                    } else {
                        zbku zbkuVar6 = new zbku();
                        hashMap3.put(Integer.valueOf(zbabjVar3.zbe()), zbkuVar6);
                        zbkuVar = zbkuVar6;
                    }
                    ((zbku) Preconditions.checkNotNull(zbkuVar)).zba(zboiVar);
                }
                i4++;
                i = 3;
            }
            zbku zbkuVar7 = new zbku();
            for (int i5 = 0; i5 < zbf.size(); i5++) {
                zbabj zbabjVar4 = (zbabj) zbf.get(i5);
                if (zbabjVar4.zbI() == 4) {
                    List m53438c4 = cep.m53438c(cep.m53437b(zbabjVar4.zbf()));
                    zbkx zbh = zbkx.zbh();
                    Integer valueOf6 = Integer.valueOf(i5);
                    if (hashMap3.containsKey(valueOf6)) {
                        zbh = ((zbku) Preconditions.checkNotNull((zbku) hashMap3.get(valueOf6))).zbb();
                        hashMap3.remove(valueOf6);
                    }
                    zbkuVar7.zba(new zboe(zbm.f36861a.zbb(zblc.zba(zbh, new zbkf() { // from class: com.google.mlkit.vision.text.pipeline.zbk
                        @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbkf
                        public final Object zba(Object obj) {
                            return ((zboi) obj).zbc();
                        }
                    })), cep.m53436a(m53438c4, uprightRotationMatrix), m53438c4, fep.m54095a(zbabjVar4.zbh().zbf()), (List) Preconditions.checkNotNull(zbh)));
                }
            }
            Iterator it2 = hashMap3.values().iterator();
            while (it2.hasNext()) {
                zbkx zbb = ((zbku) it2.next()).zbb();
                int size = zbb.size();
                int i6 = 0;
                while (i6 < size) {
                    zboi zboiVar2 = (zboi) zbb.get(i6);
                    zbkuVar7.zba(new zboe(zboiVar2.zbc(), zboiVar2.zba(), zboiVar2.zbd(), zboiVar2.zbb(), zbkx.zbi(zboiVar2)));
                    i6++;
                    it2 = it2;
                }
            }
            zbkx zbb2 = zbkuVar7.zbb();
            fcp fcpVar = new fcp(rcpVar, new zbok(zbm.f36861a.zbb(zblc.zba(zbb2, new zbkf() { // from class: com.google.mlkit.vision.text.pipeline.zbl
                @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbkf
                public final Object zba(Object obj) {
                    return ((zboe) obj).zba();
                }
            })), zbb2), zbkx.zbh(), z2);
            this.f36860e = false;
            return fcpVar;
        } catch (MlKitException e) {
            return zbn.zbe(zbo.m28596a(2, new RemoteException("Failed to process input image.".concat(String.valueOf(e.getMessage())))));
        }
    }

    public final zbo zbc() {
        if (this.f36859d) {
            return new rcp(0, zbki.zbd());
        }
        if (this.f36858c == null) {
            if (!AndroidAssetUtil.zba(this.f36856a)) {
                Log.d("PipelineManager", "Failed to initiate native asset manager.");
            }
            VkpTextRecognizerOptions vkpTextRecognizerOptions = this.f36857b;
            String mo28591a = vkpTextRecognizerOptions.mo28591a();
            String mo28593c = vkpTextRecognizerOptions.mo28593c();
            String mo28592b = vkpTextRecognizerOptions.mo28592b();
            boolean mo28594d = vkpTextRecognizerOptions.mo28594d();
            zbbz zbc = zbca.zbc();
            int i = mo28594d ? 4 : 0;
            zbdl zba = zbdo.zba();
            zbbb zba2 = zbbe.zba();
            zba2.zbd(mo28593c);
            zba2.zba(mo28591a);
            zba2.zbe(true);
            zba2.zbb(true);
            if (!mo28592b.isEmpty()) {
                zbpf zba3 = zbpg.zba();
                zbpi zba4 = zbpk.zba();
                zba4.zba(mo28592b);
                zba3.zba(zba4);
                zba2.zbc(zba3);
            }
            zba.zbb(zba2);
            int zba5 = zbcv.zba(i);
            zbct zba6 = zbcw.zba();
            zba6.zba(zba5);
            zba.zbc(zba6);
            zbiu zba7 = zbix.zba();
            zba7.zba("PassThroughCoarseClassifier");
            zba.zba(zba7);
            zbc.zba(zba);
            zbfb zba8 = zbfc.zba();
            zba8.zba(2);
            zbc.zbb(zba8);
            this.f36858c = new iep((zbca) zbc.zbk(), this.f36857b.mo28591a(), "mlkit_google_ocr_pipeline");
        }
        try {
            ((iep) Preconditions.checkNotNull(this.f36858c)).zbg();
            this.f36859d = true;
            return new rcp(0, zbki.zbd());
        } catch (PipelineException e) {
            return zbo.m28596a(1, new RemoteException("Failed to initialize detector. ".concat((String) e.getRootCauseMessage().zbb(""))));
        }
    }

    public final void zbd() {
        iep iepVar = this.f36858c;
        if (iepVar != null) {
            if (this.f36859d) {
                iepVar.zbh();
            }
            this.f36858c.zbf();
            this.f36858c = null;
        }
        this.f36859d = false;
        this.f36860e = true;
    }
}
