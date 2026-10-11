package com.sunia.hwrv2.demo.calculator.hwr;

import android.app.Application;
import android.os.Handler;
import android.util.Log;
import com.sunia.HTREnginev2.C13750g;
import com.sunia.HTREnginev2.C14164o1;
import com.sunia.HTREnginev2.C14219p1;
import com.sunia.HTREnginev2.C14376s1;
import com.sunia.HTREnginev2.sdk.CalculateParams;
import com.sunia.HTREnginev2.sdk.ERecognitionMode;
import com.sunia.HTREnginev2.sdk.Params;
import com.sunia.HTREnginev2.sdk.RecognizePath;
import com.sunia.HTREnginev2.sdk.RecognizePoint;
import com.sunia.HTREnginev2.sdk.editor.Editor;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.callback.HWRCallback;
import com.sunia.commonv2.util.HWRUtil;
import com.sunia.hwrv2.demo.calculator.hwr.SimpleRecognize;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes10.dex */
public class SimpleRecognize {
    private static final String TAG = "SimpleRecognize";
    private static Editor editor;
    private static Application sApplication;
    private static Handler sHandler;
    private static final AtomicInteger sRecognizeCountInt = new AtomicInteger(0);

    public static String calculate(String str) {
        return C14164o1.m55882a(editor) ? "" : editor.calculate(str);
    }

    public static void enableMathDotConvertMultiplication(boolean z) {
        if (C14164o1.m55882a(editor)) {
            return;
        }
        Params obtainParams = editor.obtainParams();
        Object[] objArr = new Object[1];
        objArr[0] = z ? "true" : "false";
        obtainParams.setKeyValuesConfig(String.format("enableMathDotConvertMultiplication=%s;", objArr));
        obtainParams.setResultCalculate(z);
        editor.updateParams(obtainParams);
    }

    public static Editor getEditor() {
        return editor;
    }

    public static List<String> getResult(String str, float f) {
        ArrayList arrayList = new ArrayList(4);
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONObject jSONObject2 = jSONObject.getJSONArray("words").getJSONObject(0);
            JSONArray jSONArray = jSONObject.has("groupcandidates") ? jSONObject.getJSONArray("groupcandidates") : jSONObject2.getJSONArray("candidates");
            JSONArray jSONArray2 = jSONObject2.getJSONArray("correct_rates");
            for (int i = 0; i < jSONArray.length() && i < 4; i++) {
                if (jSONArray2.getDouble(i) >= f) {
                    arrayList.add(jSONArray.getString(i));
                }
            }
        } catch (JSONException e) {
            LogUtil.m57654e(TAG, Log.getStackTraceString(e));
        }
        while (arrayList.size() < 4) {
            arrayList.add("");
        }
        return arrayList;
    }

    public static void init(Application application) {
        sApplication = application;
        sHandler = new Handler(application.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$startRecognize$5(HWRCallback hWRCallback, String str, List list) {
        hWRCallback.onSuccess(str, (String) list.get(0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$startRecognize$7(int i, final HWRCallback hWRCallback, C13750g c13750g, List list) {
        try {
            Editor editor2 = editor;
            if (editor2 == null) {
                LogUtil.m57654e(TAG, "editor==null");
                throw new Exception("Engine is not available");
            }
            if (editor2.obtainParams().getMode() != ERecognitionMode.MODE_ECR.getValue()) {
                LogUtil.m57654e(TAG, "识别模式需要RecognitionMode.MODE_ECR");
                throw new Exception("Recognition Mode is not RecognitionMode.MODE_ECR");
            }
            int i2 = sRecognizeCountInt.get();
            if (i2 != i) {
                LogUtil.m57654e(TAG, "任务id已经变更，忽略任务，旧的任务id=" + i + "，当前最新的任务id=" + i2);
                sHandler.post(new Runnable() { // from class: com.sunia.HTREnginev2.psm
                    @Override // java.lang.Runnable
                    public final void run() {
                        HWRCallback.this.onSuccess(null, null);
                    }
                });
                return;
            }
            if (c13750g.m54215b()) {
                sHandler.post(new Runnable() { // from class: com.sunia.HTREnginev2.qsm
                    @Override // java.lang.Runnable
                    public final void run() {
                        HWRCallback.this.onSuccess(null, null);
                    }
                });
                return;
            }
            if (HWRUtil.isEmpty((List<?>) list)) {
                LogUtil.m57654e(TAG, "获取到的书写数据为空，忽略识别");
                sHandler.post(new Runnable() { // from class: com.sunia.HTREnginev2.rsm
                    @Override // java.lang.Runnable
                    public final void run() {
                        HWRCallback.this.onSuccess(null, null);
                    }
                });
                return;
            }
            editor.clearContent();
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                RecognizePath recognizePath = (RecognizePath) it2.next();
                int addStrokePoints = editor.addStrokePoints(recognizePath.getPoints());
                LogUtil.m57653d(TAG, "书写笔画 strokeID: " + addStrokePoints);
                recognizePath.setStrokeId((long) addStrokePoints);
            }
            editor.doPageRecognize(true);
            editor.waitForIdle();
            final String content = editor.getContent();
            LogUtil.m57653d(TAG, "识别结束,content=" + content);
            final List<String> result = getResult(content, 0.0f);
            sHandler.post(new Runnable() { // from class: com.sunia.HTREnginev2.ssm
                @Override // java.lang.Runnable
                public final void run() {
                    SimpleRecognize.lambda$startRecognize$5(HWRCallback.this, content, result);
                }
            });
        } catch (Exception e) {
            LogUtil.m57657w(TAG, "识别异常,Exception=" + LogUtil.getStackTraceString(e));
            sHandler.post(new Runnable() { // from class: com.sunia.HTREnginev2.tsm
                @Override // java.lang.Runnable
                public final void run() {
                    HWRCallback.this.onError(e);
                }
            });
        }
    }

    public static void setCalculateParams(String str, int i, int i2) {
        if (C14164o1.m55882a(editor)) {
            return;
        }
        Params obtainParams = editor.obtainParams();
        obtainParams.setResultCalculate(true);
        CalculateParams calculateParams = obtainParams.getCalculateParams();
        calculateParams.setMathEngineRadianOrDegree(str);
        calculateParams.setMathResultRoundingMode(i);
        calculateParams.setMathResultScale(i2);
        editor.updateParams(obtainParams);
    }

    public static void setEditor(Editor editor2) {
        editor = editor2;
    }

    public static void startRecognize(List<C14219p1> list, final C13750g c13750g, final HWRCallback hWRCallback, ExecutorService executorService) {
        final int addAndGet = sRecognizeCountInt.addAndGet(1);
        if (HWRUtil.isEmpty((List<?>) list)) {
            LogUtil.m57654e(TAG, "获取到的书写数据为空，忽略识别");
            sHandler.post(new Runnable() { // from class: com.sunia.HTREnginev2.usm
                @Override // java.lang.Runnable
                public final void run() {
                    HWRCallback.this.onSuccess(null, null);
                }
            });
            return;
        }
        final ArrayList arrayList = new ArrayList();
        try {
            for (C14219p1 c14219p1 : list) {
                RecognizePath recognizePath = new RecognizePath();
                arrayList.add(recognizePath);
                List<C14376s1> points = c14219p1.getPoints();
                for (int i = 0; i < points.size(); i++) {
                    C14376s1 c14376s1 = points.get(i);
                    RecognizePoint recognizePoint = new RecognizePoint(c14376s1.m57119b(), c14376s1.m57120c(), c14376s1.mo57118a());
                    if (i == 0) {
                        recognizePoint.down();
                    } else if (i == points.size() - 1) {
                        recognizePoint.m57152up();
                    } else {
                        recognizePoint.move();
                    }
                    recognizePath.addPoint(recognizePoint);
                }
            }
            executorService.execute(new Runnable() { // from class: com.sunia.HTREnginev2.vsm
                @Override // java.lang.Runnable
                public final void run() {
                    SimpleRecognize.lambda$startRecognize$7(addAndGet, hWRCallback, c13750g, arrayList);
                }
            });
        } catch (Exception e) {
            LogUtil.m57657w(TAG, "构建识别数据异常,Exception=" + LogUtil.getStackTraceString(e));
            sHandler.post(new Runnable() { // from class: com.sunia.HTREnginev2.wsm
                @Override // java.lang.Runnable
                public final void run() {
                    HWRCallback.this.onError(e);
                }
            });
        }
    }
}
