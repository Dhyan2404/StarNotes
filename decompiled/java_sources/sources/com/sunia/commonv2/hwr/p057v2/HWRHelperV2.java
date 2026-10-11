package com.sunia.commonv2.hwr.p057v2;

import android.util.Log;
import com.sunia.HTREnginev2.sdk.ERecognitionMode;
import com.sunia.HTREnginev2.sdk.Engine;
import com.sunia.HTREnginev2.sdk.EngineAuthenticateCallback;
import com.sunia.HTREnginev2.sdk.Params;
import com.sunia.HTREnginev2.sdk.RecognizeListener;
import com.sunia.HTREnginev2.sdk.editor.Editor;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.auth.HWRURLType;
import com.sunia.commonv2.bean.ConfigBean;
import com.sunia.commonv2.callback.IHWRAuthorResultCallback;
import com.sunia.commonv2.global.HWREngineConstant;
import com.sunia.commonv2.module.CommonModule;
import com.sunia.commonv2.util.HWRUtil;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes10.dex */
public class HWRHelperV2 {
    private static final String TAG = "HWRHelperV2";
    private static Map<String, WeakReference<Engine>> cacheEngineMap = new HashMap();
    private static Map<String, WeakReference<Editor>> cacheEditorMap = new HashMap();

    public static void authorizeAndCreateEngine(String str, String str2, HWRURLType hWRURLType, final EngineAuthenticateCallback engineAuthenticateCallback) {
        try {
            if (!HWRUtil.isHWRDemo(CommonModule.getCommonModule().getApplication()) && hWRURLType == HWRURLType.TEST) {
                throw new RuntimeException("test url type not support");
            }
            AuthHelperV2.authorizeV2(str, str2, "", hWRURLType, new IHWRAuthorResultCallback() { // from class: com.sunia.commonv2.hwr.v2.HWRHelperV2.1
                @Override // com.sunia.commonv2.callback.IHWRAuthorResultCallback
                public void onCallback(int i, String str3, String str4) {
                    Engine createInstance = Engine.createInstance(CommonModule.getCommonModule().getApplication(), str4);
                    createInstance.setInitializeCallback(new EngineAuthenticateCallback() { // from class: com.sunia.commonv2.hwr.v2.HWRHelperV2.1.1
                        @Override // com.sunia.HTREnginev2.sdk.EngineAuthenticateCallback
                        public void onError(Exception exc, String str5) {
                            Log.e(HWRHelperV2.TAG, "识别引擎初始化失败：" + Log.getStackTraceString(exc));
                            EngineAuthenticateCallback.this.onError(exc, str5);
                        }

                        @Override // com.sunia.HTREnginev2.sdk.EngineAuthenticateCallback
                        public void onSuccess(Engine engine, String str5, String str6) {
                            EngineAuthenticateCallback.this.onSuccess(engine, str5, str6);
                        }
                    });
                    createInstance.setLogDir(CommonModule.getCommonModule().getEngineLogDir());
                    createInstance.setDebugLevel(HWRUtil.andLogLevel2EngineLogLevel(CommonModule.getCommonModule().getAndroidLogLevel()));
                    createInstance.start();
                }
            });
        } catch (Exception e) {
            engineAuthenticateCallback.onError(e, "-100");
        }
    }

    private static String buildParamsStr() {
        return (HWREngineConstant.Constant.NGRAM_PARAMS_STR + HWREngineConstant.Constant.POST_PARAMS_STR + HWREngineConstant.Constant.MERGE_PARAMS_STR + HWREngineConstant.Constant.ENABLE_MATH_COVERING + HWREngineConstant.Constant.ENABLE_DOT_CONVERT_MULTIPLICATION + String.format("dpi=%f;", Float.valueOf(CommonModule.getCommonModule().getApplication().getResources().getDisplayMetrics().xdpi))).trim();
    }

    public static void createEditor(Engine engine, ERecognitionMode eRecognitionMode, ConfigBean configBean, final RecognizeListener recognizeListener) {
        LogUtil.m57653d(TAG, "createEditor");
        if (engine == null) {
            throw new RuntimeException("parameter engine is null");
        }
        if (configBean == null) {
            throw new RuntimeException("parameter configBean is null");
        }
        if (recognizeListener == null) {
            throw new RuntimeException("parameter recognizeListener is null");
        }
        if (!engine.isValidate()) {
            recognizeListener.onError(null, -2, new Exception("create Editor Exception,engine.isValidate() is false"));
            return;
        }
        Params createInstance = Params.createInstance();
        if (createInstance == null) {
            recognizeListener.onError(null, -3, new Exception("create Editor Exception,Params is null"));
            return;
        }
        Editor createEditor = engine.createEditor(createInstance);
        if (createEditor == null) {
            recognizeListener.onError(null, -4, new Exception("create Editor Exception,editor is null"));
            return;
        }
        createInstance.setMode(eRecognitionMode.getValue());
        createInstance.setDataDir(configBean.getFilePath());
        createInstance.setConfigName(configBean.getFileName());
        createInstance.setResultCalculate(false);
        createInstance.setResultCoordinate(true);
        createInstance.setWordSplitTimeLot(500L);
        createInstance.setResultAssociational(true);
        createInstance.setResultCandidate(true);
        createInstance.setResultPartitionCoordinate(true);
        createInstance.setResultSpanProcessed(true);
        createInstance.setKeyValuesConfig(buildParamsStr());
        createEditor.setRecognizeEngineListener(new RecognizeListener() { // from class: com.sunia.commonv2.hwr.v2.HWRHelperV2.2
            @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
            public void onAssociationalChanged(Editor editor, String str) {
                LogUtil.m57656i(HWRHelperV2.TAG, "联想词:onAssociationalChanged");
                RecognizeListener.this.onAssociationalChanged(editor, str);
            }

            @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
            public void onCandidateChanged(Editor editor, String str) {
                LogUtil.m57656i(HWRHelperV2.TAG, "候选词:onCandidateChanged");
                RecognizeListener.this.onCandidateChanged(editor, str);
            }

            @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
            public void onChemicalStructureChanged(Editor editor, String str) {
                LogUtil.m57656i(HWRHelperV2.TAG, "化学公式:onChemicalStructureChanged");
                RecognizeListener.this.onChemicalStructureChanged(editor, str);
            }

            @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
            public void onContentChanged(Editor editor, String str) {
                LogUtil.m57656i(HWRHelperV2.TAG, "识别结果正常,onContentChanged");
                RecognizeListener.this.onContentChanged(editor, str);
            }

            @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
            public void onError(Editor editor, int i, Exception exc) {
                LogUtil.m57654e(HWRHelperV2.TAG, "识别结果异常:i=" + i + Log.getStackTraceString(exc));
                RecognizeListener.this.onError(editor, i, exc);
            }

            @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
            public void onLoaded(Editor editor) {
                LogUtil.m57653d(HWRHelperV2.TAG, "识别引擎加载完毕:onLoaded");
                LogUtil.m57653d(HWRHelperV2.TAG, "耗时分析,创建引擎结束");
                RecognizeListener.this.onLoaded(editor);
            }

            @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
            public void onSyntheseChanged(Editor editor, String str) {
                LogUtil.m57656i(HWRHelperV2.TAG, "联想句:onSyntheseChanged");
                RecognizeListener.this.onSyntheseChanged(editor, str);
            }
        });
        createEditor.open(createInstance);
    }

    public static void release(Editor editor, Engine engine) {
        releaseEditor(editor);
        releaseEngine(engine);
    }

    public static void releaseEditor(Editor editor) {
        if (HWRUtil.isEmpty(editor)) {
            return;
        }
        try {
            editor.editorPause();
            editor.close();
        } catch (Exception e) {
            e.printStackTrace();
            LogUtil.m57655e(TAG, e);
        }
    }

    public static void releaseEngine(Engine engine) {
        if (HWRUtil.isEmpty(engine)) {
            return;
        }
        try {
            engine.stopEngine();
            engine.release();
        } catch (Exception e) {
            e.printStackTrace();
            LogUtil.m57655e(TAG, e);
        }
    }

    public static boolean updateEditor(Editor editor, ConfigBean configBean) {
        if (editor == null) {
            throw new RuntimeException("parameter engine is null");
        }
        if (configBean != null) {
            Params obtainParams = editor.obtainParams();
            obtainParams.setDataDir(configBean.getFilePath());
            obtainParams.setConfigName(configBean.getFileName());
            return updateEditor(editor, obtainParams);
        }
        throw new RuntimeException("parameter configBean is null");
    }

    public static void release(String str) {
        WeakReference<Editor> weakReference = cacheEditorMap.get(str);
        if (HWRUtil.isNotEmpty(weakReference)) {
            releaseEditor(weakReference.get());
        }
        WeakReference<Engine> weakReference2 = cacheEngineMap.get(str);
        if (HWRUtil.isNotEmpty(weakReference2)) {
            releaseEngine(weakReference2.get());
        }
    }

    private static boolean updateEditor(Editor editor, Params params) {
        if (editor == null) {
            throw new RuntimeException("parameter engine is null");
        }
        if (params != null) {
            return editor.updateParams(params);
        }
        throw new RuntimeException("parameter params is null");
    }
}
