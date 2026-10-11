package com.sunia.commonv2.hwr;

import android.util.Log;
import com.google.gson.Gson;
import com.sunia.HTREnginev2.sdk.ERecognitionMode;
import com.sunia.HTREnginev2.sdk.Engine;
import com.sunia.HTREnginev2.sdk.EngineAuthenticateCallback;
import com.sunia.HTREnginev2.sdk.RecognizeListener;
import com.sunia.HTREnginev2.sdk.RecognizePath;
import com.sunia.HTREnginev2.sdk.editor.Editor;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.bean.ConfigBean;
import com.sunia.commonv2.bean.HWRSimpleResult;
import com.sunia.commonv2.callback.CoreCommonCallback;
import com.sunia.commonv2.callback.IHWRAuthorResultCallback;
import com.sunia.commonv2.hwr.HWRSimpleRecognize;
import com.sunia.commonv2.module.CommonModule;
import com.sunia.commonv2.util.HWRCommonUtil;
import com.sunia.commonv2.util.HWRSimpleResultUtil;
import com.sunia.commonv2.util.HWRUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

@Deprecated
/* loaded from: classes10.dex */
public class HWRSimpleRecognize {
    private static final String TAG = "HWRSimpleRecognize";
    private static volatile Editor sEditor;
    private static volatile Engine sEngine;
    private static final ExecutorService sExecutorSingleService = Executors.newSingleThreadExecutor();
    private static volatile long sTaskId = 1;
    private static volatile Exception sEditorException = null;
    private static RecognizeListener sRecognizeListener = new RecognizeListener() { // from class: com.sunia.commonv2.hwr.HWRSimpleRecognize.1
        @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
        public void onAssociationalChanged(Editor editor, String str) {
        }

        @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
        public void onCandidateChanged(Editor editor, String str) {
        }

        @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
        public void onContentChanged(Editor editor, String str) {
        }

        @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
        public void onError(Editor editor, int i, Exception exc) {
            LogUtil.m57655e(HWRSimpleRecognize.TAG, exc);
            Exception unused = HWRSimpleRecognize.sEditorException = exc;
            synchronized (HWRSimpleRecognize.TAG) {
                HWRSimpleRecognize.TAG.notifyAll();
            }
        }

        @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
        public void onLoaded(Editor editor) {
            LogUtil.m57653d(HWRSimpleRecognize.TAG, "createEditor,onLoaded");
            if (HWRSimpleRecognize.sEditor == null) {
                LogUtil.m57657w(HWRSimpleRecognize.TAG, "createEditor,sEditor == null");
                Editor unused = HWRSimpleRecognize.sEditor = editor;
                HWRSimpleRecognize.sEditor.setRecognizeEngineListener(HWRSimpleRecognize.sRecognizeListener);
            }
            Exception unused2 = HWRSimpleRecognize.sEditorException = null;
            synchronized (HWRSimpleRecognize.TAG) {
                HWRSimpleRecognize.TAG.notifyAll();
            }
        }

        @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
        public void onSyntheseChanged(Editor editor, String str) {
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static void createEditor(final ConfigBean configBean) {
        LogUtil.m57657w(TAG, "createEditor,configBean=" + configBean);
        HWRHelper.authorize(new IHWRAuthorResultCallback() { // from class: com.sunia.commonv2.hwr.HWRSimpleRecognize.3
            @Override // com.sunia.commonv2.callback.IHWRAuthorResultCallback
            public void onCallback(int i, String str, String str2) {
                HWRHelper.createEngine(new EngineAuthenticateCallback() { // from class: com.sunia.commonv2.hwr.HWRSimpleRecognize.3.1
                    @Override // com.sunia.HTREnginev2.sdk.EngineAuthenticateCallback
                    public void onError(Exception exc, String str3) {
                        LogUtil.m57657w(HWRSimpleRecognize.TAG, "onError,createEngine exception=" + Log.getStackTraceString(exc) + ",errorCode=" + str3);
                        HWRSimpleRecognize.sRecognizeListener.onError(null, -1, exc);
                    }

                    @Override // com.sunia.HTREnginev2.sdk.EngineAuthenticateCallback
                    public void onSuccess(Engine engine, String str3, String str4) {
                        Engine unused = HWRSimpleRecognize.sEngine = engine;
                        HWRHelper.createEditor(engine, ERecognitionMode.MODE_ECR, ConfigBean.this, HWRSimpleRecognize.sRecognizeListener);
                    }
                });
            }
        });
    }

    private static boolean initEditor(final ConfigBean configBean, CoreCommonCallback<HWRSimpleResult> coreCommonCallback, int i) {
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        boolean z = sEditor == null;
        new Thread() { // from class: com.sunia.commonv2.hwr.HWRSimpleRecognize.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                while (!atomicBoolean.get()) {
                    try {
                        LogUtil.m57654e(HWRSimpleRecognize.TAG, "线程等待");
                        try {
                            Thread.sleep(10L);
                        } catch (InterruptedException e) {
                            LogUtil.m57658w(HWRSimpleRecognize.TAG, e);
                        }
                    } catch (Exception e2) {
                        LogUtil.m57655e(HWRSimpleRecognize.TAG, e2);
                        Exception unused = HWRSimpleRecognize.sEditorException = e2;
                        synchronized (HWRSimpleRecognize.TAG) {
                            HWRSimpleRecognize.TAG.notifyAll();
                            return;
                        }
                    }
                }
                if (HWRSimpleRecognize.sEditor == null) {
                    HWRSimpleRecognize.createEditor(configBean);
                } else {
                    HWRSimpleRecognize.updateEditor(configBean);
                }
            }
        }.start();
        synchronized (TAG) {
            try {
                atomicBoolean.set(true);
                TAG.wait();
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        }
        if (sEditorException != null) {
            if (i >= 1) {
                coreCommonCallback.onError(sEditorException);
                return false;
            }
            LogUtil.m57654e(TAG, "editor初始化重试" + i);
            release();
            return initEditor(configBean, coreCommonCallback, i + 1);
        }
        if (sEditor.obtainParams().getMode() != ERecognitionMode.MODE_ECR.getValue()) {
            LogUtil.m57654e(TAG, "识别模式需要RecognitionMode.MODE_ECR");
            coreCommonCallback.onError(new RuntimeException("Recognition Mode is not RecognitionMode.MODE_ECR"));
            return false;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("editor准备完成:");
        sb.append(z ? "createEditor" : "updateEditor");
        LogUtil.m57654e(TAG, sb.toString());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$startRecognize$0(List list, ConfigBean configBean, CoreCommonCallback coreCommonCallback, List list2) {
        long j = sTaskId;
        sTaskId = 1 + j;
        String str = "";
        try {
            LogUtil.m57653d(TAG, "任务开始" + j);
            if (LogUtil.canLogD()) {
                str = HWRCommonUtil.saveTestToolPoints(CommonModule.getCommonModule(), (List<RecognizePath>) list);
                LogUtil.m57653d(TAG, "保存点位地址：" + str);
            }
            boolean z = false;
            if (!initEditor(configBean, coreCommonCallback, 0)) {
                LogUtil.m57654e(TAG, "引擎初始化失败，忽略本次任务");
                coreCommonCallback.onError(new Exception("引擎初始化失败，忽略本次任务"));
                return;
            }
            if (HWRUtil.isEmpty((List<?>) list2)) {
                LogUtil.m57654e(TAG, "tempRecognizePathList为空，忽略本次任务");
                coreCommonCallback.onError(new Exception("点位数据为空1，忽略本次任务"));
                return;
            }
            Iterator it2 = list2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                } else if (HWRUtil.isNotEmpty((List<?>) ((RecognizePath) it2.next()).getPoints())) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                LogUtil.m57654e(TAG, "tempRecognizePathList为空，忽略本次任务");
                coreCommonCallback.onError(new Exception("点位数据为空2，忽略本次任务"));
            }
            sEditor.clearContent();
            Iterator it3 = list2.iterator();
            while (it3.hasNext()) {
                RecognizePath recognizePath = (RecognizePath) it3.next();
                int addStrokePoints = sEditor.addStrokePoints(recognizePath.getPoints());
                LogUtil.m57653d(TAG, "书写笔画 strokeID: " + addStrokePoints);
                if (addStrokePoints == -1) {
                    LogUtil.m57654e(TAG, "添加笔画失败 strokeID: " + addStrokePoints + ",path.getPoints().size()=" + recognizePath.getPoints().size());
                }
                recognizePath.setStrokeId(addStrokePoints);
            }
            sEditor.doPageRecognize(true);
            String content = sEditor.getContent();
            LogUtil.m57653d(TAG, "保存识别结果，处理前：" + content);
            HWRSimpleResult result = HWRSimpleResultUtil.getResult(content);
            LogUtil.m57653d(TAG, "保存识别结果，处理后：" + new Gson().toJson(result));
            coreCommonCallback.onSuccess(result);
        } catch (Exception e) {
            LogUtil.m57654e(TAG, "任务异常:tempTaskId=" + j + ",temConfigBean=" + configBean);
            LogUtil.m57655e(TAG, e);
            if (HWRUtil.isEmpty(coreCommonCallback)) {
                LogUtil.m57654e(TAG, "callback为空，忽略回调通知");
            } else {
                coreCommonCallback.onError(e);
            }
        } finally {
            LogUtil.m57653d(TAG, "数据分析开始：任务id=" + j + TAG + "temConfigBean=" + configBean + TAG + "保存点位地址=数据分析结束");
            StringBuilder sb = new StringBuilder();
            sb.append("任务结束");
            sb.append(j);
            LogUtil.m57653d(TAG, sb.toString());
        }
    }

    public static void release() {
        LogUtil.m57654e(TAG, "release Editor an Engine");
        HWRHelper.release(sEditor, sEngine);
        sEditor = null;
        sEngine = null;
        System.gc();
    }

    public static void startRecognize(ConfigBean configBean, final List<RecognizePath> list, final CoreCommonCallback<HWRSimpleResult> coreCommonCallback) {
        final ConfigBean configBean2 = new ConfigBean(configBean.getFilePath(), configBean.getFileName(), configBean.getShowName());
        final ArrayList arrayList = new ArrayList();
        Iterator<RecognizePath> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().mo72427clone());
        }
        sExecutorSingleService.execute(new Runnable() { // from class: com.sunia.HTREnginev2.efh
            @Override // java.lang.Runnable
            public final void run() {
                HWRSimpleRecognize.lambda$startRecognize$0(list, configBean2, coreCommonCallback, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean updateEditor(ConfigBean configBean) {
        LogUtil.m57657w(TAG, "updateEditor,configBean=" + configBean);
        return HWRHelper.updateEditor(sEditor, configBean);
    }
}
