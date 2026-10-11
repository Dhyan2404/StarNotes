package com.sunia.commonv2.hwr;

import android.util.Log;
import com.google.gson.JsonObject;
import com.sunia.HTREnginev2.sdk.ERecognitionMode;
import com.sunia.HTREnginev2.sdk.Engine;
import com.sunia.HTREnginev2.sdk.EngineAuthenticateCallback;
import com.sunia.HTREnginev2.sdk.Params;
import com.sunia.HTREnginev2.sdk.RecognizeListener;
import com.sunia.HTREnginev2.sdk.editor.Editor;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.bean.ConfigBean;
import com.sunia.commonv2.callback.IHWRAuthorResultCallback;
import com.sunia.commonv2.enum2.EEngineVersion;
import com.sunia.commonv2.global.HWREngineConstant;
import com.sunia.commonv2.global.HWREngineVariable;
import com.sunia.commonv2.module.CommonModule;
import com.sunia.commonv2.util.HWRUtil;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes10.dex */
public class HWRHelper {
    private static final String TAG = "HWRHelper";
    private static Map<String, WeakReference<Engine>> cacheEngineMap = new HashMap();
    private static Map<String, WeakReference<Editor>> cacheEditorMap = new HashMap();

    /* renamed from: com.sunia.commonv2.hwr.HWRHelper$1 */
    /* loaded from: classes10.dex */
    public class C148301 implements IHWRAuthorResultCallback {
        final /* synthetic */ ConfigBean val$configBean;
        final /* synthetic */ ERecognitionMode val$eRecognitionMode;
        final /* synthetic */ RecognizeListener val$recognizeListener;
        final /* synthetic */ String val$tag;

        public C148301(String str, ERecognitionMode eRecognitionMode, ConfigBean configBean, RecognizeListener recognizeListener) {
            this.val$tag = str;
            this.val$eRecognitionMode = eRecognitionMode;
            this.val$configBean = configBean;
            this.val$recognizeListener = recognizeListener;
        }

        @Override // com.sunia.commonv2.callback.IHWRAuthorResultCallback
        public void onCallback(int i, String str, String str2) {
            HWRHelper.release(this.val$tag);
            HWRHelper.createEngine(new EngineAuthenticateCallback() { // from class: com.sunia.commonv2.hwr.HWRHelper.1.1
                @Override // com.sunia.HTREnginev2.sdk.EngineAuthenticateCallback
                public void onError(Exception exc, String str3) {
                    C148301.this.val$recognizeListener.onError(null, -1, exc);
                }

                @Override // com.sunia.HTREnginev2.sdk.EngineAuthenticateCallback
                public void onSuccess(Engine engine, String str3, String str4) {
                    HWRHelper.cacheEngineMap.put(C148301.this.val$tag, new WeakReference(engine));
                    C148301 c148301 = C148301.this;
                    HWRHelper.createEditor(engine, c148301.val$eRecognitionMode, c148301.val$configBean, new RecognizeListener() { // from class: com.sunia.commonv2.hwr.HWRHelper.1.1.1
                        @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
                        public void onAssociationalChanged(Editor editor, String str5) {
                            C148301.this.val$recognizeListener.onAssociationalChanged(editor, str5);
                        }

                        @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
                        public void onCandidateChanged(Editor editor, String str5) {
                            C148301.this.val$recognizeListener.onCandidateChanged(editor, str5);
                        }

                        @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
                        public void onChemicalStructureChanged(Editor editor, String str5) {
                            C148301.this.val$recognizeListener.onChemicalStructureChanged(editor, str5);
                        }

                        @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
                        public void onContentChanged(Editor editor, String str5) {
                            C148301.this.val$recognizeListener.onContentChanged(editor, str5);
                        }

                        @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
                        public void onError(Editor editor, int i2, Exception exc) {
                            C148301.this.val$recognizeListener.onError(editor, i2, exc);
                        }

                        @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
                        public void onLoaded(Editor editor) {
                            HWRHelper.cacheEditorMap.put(C148301.this.val$tag, new WeakReference(editor));
                            editor.setRecognizeEngineListener(C148301.this.val$recognizeListener);
                            C148301.this.val$recognizeListener.onLoaded(editor);
                        }

                        @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
                        public void onSyntheseChanged(Editor editor, String str5) {
                            C148301.this.val$recognizeListener.onSyntheseChanged(editor, str5);
                        }
                    });
                }
            });
        }
    }

    public static void authorize(IHWRAuthorResultCallback iHWRAuthorResultCallback) {
        AuthHelper.authorize(iHWRAuthorResultCallback);
    }

    private static String buildParamsStr() {
        return (HWREngineConstant.Constant.NGRAM_PARAMS_STR + HWREngineConstant.Constant.POST_PARAMS_STR + HWREngineConstant.Constant.MERGE_PARAMS_STR + HWREngineConstant.Constant.ENABLE_MATH_COVERING + HWREngineConstant.Constant.ENABLE_DOT_CONVERT_MULTIPLICATION + String.format("dpi=%f;", Float.valueOf(CommonModule.getCommonModule().getApplication().getResources().getDisplayMetrics().xdpi))).trim();
    }

    @Deprecated
    public static void createEditor(ERecognitionMode eRecognitionMode, ConfigBean configBean, RecognizeListener recognizeListener) {
        createEditor(TAG, eRecognitionMode, configBean, recognizeListener);
    }

    public static void createEngine(final EngineAuthenticateCallback engineAuthenticateCallback) {
        Engine createInstance = HWREngineVariable.sEngineVersion == EEngineVersion.v521 ? Engine.createInstance(CommonModule.getCommonModule().getApplication(), HWREngineVariable.appId, HWREngineVariable.publicKey, CommonModule.getCommonModule().getApplication().getPackageName(), CommonModule.getCommonModule().getAuthorizeFile(), HWREngineVariable.offlineStr, "", null) : Engine.createInstance(CommonModule.getCommonModule().getApplication(), CommonModule.getCommonModule().getAuthorizeFile());
        createInstance.setInitializeCallback(new EngineAuthenticateCallback() { // from class: com.sunia.commonv2.hwr.HWRHelper.2
            @Override // com.sunia.HTREnginev2.sdk.EngineAuthenticateCallback
            public void onError(Exception exc, String str) {
                Log.e(HWRHelper.TAG, "识别引擎初始化失败：" + Log.getStackTraceString(exc));
                EngineAuthenticateCallback.this.onError(exc, str);
            }

            @Override // com.sunia.HTREnginev2.sdk.EngineAuthenticateCallback
            public void onSuccess(Engine engine, String str, String str2) {
                EngineAuthenticateCallback.this.onSuccess(engine, str, str2);
            }
        });
        createInstance.setLogDir(CommonModule.getCommonModule().getEngineLogDir());
        createInstance.setDebugLevel(HWRUtil.andLogLevel2EngineLogLevel(CommonModule.getCommonModule().getAndroidLogLevel()));
        createInstance.start();
    }

    public static String getAssociate(String str) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("type", "associationalWord");
        jsonObject.addProperty("content", str);
        LogUtil.m57653d(TAG, jsonObject.toString());
        return jsonObject.toString();
    }

    public static ConfigBean getDefaultConfigBean() {
        ConfigBean configBean = new ConfigBean();
        configBean.setFilePath("math/conf/math_calculator/");
        configBean.setFileName("math_calculator.conf");
        configBean.setShowName("math_calculator");
        return configBean;
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

    public static void createEditor(String str, ERecognitionMode eRecognitionMode, ConfigBean configBean, RecognizeListener recognizeListener) {
        authorize(new C148301(str, eRecognitionMode, configBean, recognizeListener));
    }

    public static void createEditor(Engine engine, ERecognitionMode eRecognitionMode, ConfigBean configBean, final RecognizeListener recognizeListener) {
        LogUtil.m57653d(TAG, "createEditor");
        if (engine == null) {
            throw new RuntimeException("parameter engine is null");
        }
        if (configBean == null) {
            throw new RuntimeException("parameter configBean is null");
        }
        if (recognizeListener != null) {
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
            createEditor.setRecognizeEngineListener(new RecognizeListener() { // from class: com.sunia.commonv2.hwr.HWRHelper.3
                @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
                public void onAssociationalChanged(Editor editor, String str) {
                    LogUtil.m57656i(HWRHelper.TAG, "联想词:onAssociationalChanged");
                    RecognizeListener.this.onAssociationalChanged(editor, str);
                }

                @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
                public void onCandidateChanged(Editor editor, String str) {
                    LogUtil.m57656i(HWRHelper.TAG, "候选词:onCandidateChanged");
                    RecognizeListener.this.onCandidateChanged(editor, str);
                }

                @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
                public void onChemicalStructureChanged(Editor editor, String str) {
                    LogUtil.m57656i(HWRHelper.TAG, "化学公式:onChemicalStructureChanged");
                    RecognizeListener.this.onChemicalStructureChanged(editor, str);
                }

                @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
                public void onContentChanged(Editor editor, String str) {
                    LogUtil.m57656i(HWRHelper.TAG, "识别结果正常,onContentChanged");
                    RecognizeListener.this.onContentChanged(editor, str);
                }

                @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
                public void onError(Editor editor, int i, Exception exc) {
                    LogUtil.m57654e(HWRHelper.TAG, "识别结果异常:i=" + i + Log.getStackTraceString(exc));
                    RecognizeListener.this.onError(editor, i, exc);
                }

                @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
                public void onLoaded(Editor editor) {
                    LogUtil.m57653d(HWRHelper.TAG, "识别引擎加载完毕:onLoaded");
                    LogUtil.m57653d(HWRHelper.TAG, "耗时分析,创建引擎结束");
                    RecognizeListener.this.onLoaded(editor);
                }

                @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
                public void onSyntheseChanged(Editor editor, String str) {
                    LogUtil.m57656i(HWRHelper.TAG, "联想句:onSyntheseChanged");
                    RecognizeListener.this.onSyntheseChanged(editor, str);
                }
            });
            createEditor.open(createInstance);
            return;
        }
        throw new RuntimeException("parameter recognizeListener is null");
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
