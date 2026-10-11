package com.sunia.commonv2.hwr;

import com.sunia.HTREnginev2.sdk.ERecognitionMode;
import com.sunia.HTREnginev2.sdk.Engine;
import com.sunia.HTREnginev2.sdk.EngineAuthenticateCallback;
import com.sunia.HTREnginev2.sdk.RecognizeListener;
import com.sunia.HTREnginev2.sdk.editor.Editor;
import com.sunia.commonv2.bean.ConfigBean;
import com.sunia.commonv2.callback.IHWRAuthorResultCallback;

/* loaded from: classes10.dex */
public class HWRSingleEngine {
    private static final String TAG = "HWRSingleEngine";
    private static HWRSingleEngine sInstance = new HWRSingleEngine();
    private Engine mEngine;

    public static HWRSingleEngine getInstance() {
        return sInstance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void release() {
        HWRHelper.release(null, this.mEngine);
    }

    public void init(final ConfigBean configBean, final RecognizeListener recognizeListener) {
        HWRHelper.authorize(new IHWRAuthorResultCallback() { // from class: com.sunia.commonv2.hwr.HWRSingleEngine.1
            @Override // com.sunia.commonv2.callback.IHWRAuthorResultCallback
            public void onCallback(int i, String str, String str2) {
                HWRSingleEngine.this.release();
                HWRHelper.createEngine(new EngineAuthenticateCallback() { // from class: com.sunia.commonv2.hwr.HWRSingleEngine.1.1
                    @Override // com.sunia.HTREnginev2.sdk.EngineAuthenticateCallback
                    public void onError(Exception exc, String str3) {
                        recognizeListener.onError(null, -1, exc);
                    }

                    @Override // com.sunia.HTREnginev2.sdk.EngineAuthenticateCallback
                    public void onSuccess(Engine engine, String str3, String str4) {
                        HWRSingleEngine.this.mEngine = engine;
                        Engine engine2 = HWRSingleEngine.this.mEngine;
                        ERecognitionMode eRecognitionMode = ERecognitionMode.MODE_ECR;
                        C148371 c148371 = C148371.this;
                        HWRHelper.createEditor(engine2, eRecognitionMode, configBean, recognizeListener);
                    }
                });
            }
        });
    }

    public void updateEditor(Editor editor, ConfigBean configBean) {
        HWRHelper.updateEditor(editor, configBean);
    }
}
