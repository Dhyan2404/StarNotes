package com.sunia.HTREnginev2;

import com.google.gson.reflect.TypeToken;
import com.sunia.HTREnginev2.C13647e;
import com.sunia.HTREnginev2.C13698f;
import com.sunia.HTREnginev2.sdk.RecognizePath;
import com.sunia.HTREnginev2.sdk.RecognizePoint;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.global.HWREngineConstant;
import com.sunia.commonv2.util.HWRCommonUtil;
import com.sunia.commonv2.util.HWRUtil;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.sunia.HTREnginev2.d */
/* loaded from: classes10.dex */
public class C13596d {

    /* renamed from: com.sunia.HTREnginev2.d$a */
    /* loaded from: classes10.dex */
    public class a extends TypeToken<List<C13647e>> {
    }

    /* renamed from: com.sunia.HTREnginev2.d$b */
    /* loaded from: classes10.dex */
    public class b extends TypeToken<C13698f> {
    }

    /* renamed from: a */
    public static void m53563a(String str) {
        C13698f c13698f = (C13698f) HWREngineConstant.Constant.GSON.fromJson(str, new b().getType());
        if (HWRUtil.isEmpty((List<?>) c13698f.m54053a())) {
            LogUtil.m57654e("BBKHelper", "handwritingInfoList is empty，忽略导出点位");
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (C13698f.b bVar : c13698f.m54053a()) {
            RecognizePath recognizePath = new RecognizePath();
            arrayList.add(recognizePath);
            for (C13698f.a aVar : bVar.m54057a()) {
                recognizePath.addPoint(new RecognizePoint(aVar.m54055b(), aVar.m54056c(), RecognizePoint.androidAction2HWRAction(aVar.m54054a())));
            }
        }
        LogUtil.m57653d("BBKHelper", arrayList.size() + "");
        HWRCommonUtil.saveTestToolPoints(arrayList);
    }

    /* renamed from: b */
    public static void m53564b(String str) {
        List<C13647e> list = (List) HWREngineConstant.Constant.GSON.fromJson(str, new a().getType());
        ArrayList arrayList = new ArrayList();
        for (C13647e c13647e : list) {
            RecognizePath recognizePath = new RecognizePath();
            arrayList.add(recognizePath);
            for (C13647e.a aVar : c13647e.m53876a()) {
                recognizePath.addPoint(new RecognizePoint(aVar.m53878b(), aVar.m53879c(), RecognizePoint.androidAction2HWRAction(aVar.m53877a())));
            }
        }
        LogUtil.m57653d("BBKHelper", arrayList.size() + "");
        HWRCommonUtil.saveTestToolPoints(arrayList);
    }
}
