package com.sunia.commonv2.hwr;

import com.google.gson.Gson;
import com.sunia.HTREnginev2.sdk.ERecognitionMode;
import com.sunia.HTREnginev2.sdk.RecognizePath;
import com.sunia.HTREnginev2.sdk.editor.Editor;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.bean.PartiBean;
import com.sunia.commonv2.callback.CoreCommonCallback;
import com.sunia.commonv2.hwr.HWRSimpleRecognizeV2;
import com.sunia.commonv2.util.HWRUtil;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes10.dex */
public class HWRSimpleRecognizeV2 {
    private static final String TAG = "HWRSimpleRecognizeV2";
    private static final ExecutorService sExecutorSingleService = Executors.newSingleThreadExecutor();
    private static final AtomicInteger sRecognizeCountInt = new AtomicInteger(0);

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$startRecognize$0(Editor editor, int i, List list, CoreCommonCallback coreCommonCallback) {
        try {
            if (editor.obtainParams().getMode() != ERecognitionMode.MODE_ECR.getValue()) {
                LogUtil.m57654e(TAG, "识别模式需要RecognitionMode.MODE_ECR");
                throw new Exception("Recognition Mode is not RecognitionMode.MODE_ECR");
            }
            int i2 = sRecognizeCountInt.get();
            if (i2 != i) {
                LogUtil.m57654e(TAG, "任务id已经变更，忽略任务，旧的任务id=" + i + "，当前最新的任务id=" + i2);
                throw new Exception("Recognize that the task id has changed");
            }
            if (HWRUtil.isEmpty((List<?>) list)) {
                LogUtil.m57654e(TAG, "获取到的书写数据为空，忽略识别");
                coreCommonCallback.onSuccess(null);
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
            String content = editor.getContent();
            LogUtil.m57653d(TAG, "识别结束,content=" + content);
            coreCommonCallback.onSuccess((PartiBean) new Gson().fromJson(content, PartiBean.class));
        } catch (Exception e) {
            coreCommonCallback.onError(e);
        }
    }

    public static void startRecognize(final Editor editor, final List<RecognizePath> list, final CoreCommonCallback<PartiBean> coreCommonCallback) {
        final int addAndGet = sRecognizeCountInt.addAndGet(1);
        sExecutorSingleService.execute(new Runnable() { // from class: com.sunia.HTREnginev2.ffh
            @Override // java.lang.Runnable
            public final void run() {
                HWRSimpleRecognizeV2.lambda$startRecognize$0(Editor.this, addAndGet, list, coreCommonCallback);
            }
        });
    }
}
