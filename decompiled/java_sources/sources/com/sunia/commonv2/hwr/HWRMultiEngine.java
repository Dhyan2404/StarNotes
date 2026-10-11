package com.sunia.commonv2.hwr;

import com.sunia.HTREnginev2.sdk.ERecognitionMode;
import com.sunia.HTREnginev2.sdk.Engine;
import com.sunia.HTREnginev2.sdk.EngineAuthenticateCallback;
import com.sunia.HTREnginev2.sdk.RecognizeListener;
import com.sunia.HTREnginev2.sdk.editor.Editor;
import com.sunia.commonv2.bean.ConfigBean;
import com.sunia.commonv2.callback.IHWRAuthorResultCallback;

/* loaded from: classes10.dex */
public class HWRMultiEngine {
    private static final String TAG = "HWRMultiEngine";
    private Engine mEngine;

    public HWRMultiEngine(ConfigBean configBean, RecognizeListener recognizeListener) {
        init(configBean, recognizeListener);
    }

    private void init(final ConfigBean configBean, final RecognizeListener recognizeListener) {
        HWRHelper.authorize(new IHWRAuthorResultCallback() { // from class: com.sunia.commonv2.hwr.HWRMultiEngine.1
            @Override // com.sunia.commonv2.callback.IHWRAuthorResultCallback
            public void onCallback(int i, String str, String str2) {
                HWRHelper.createEngine(new EngineAuthenticateCallback() { // from class: com.sunia.commonv2.hwr.HWRMultiEngine.1.1
                    @Override // com.sunia.HTREnginev2.sdk.EngineAuthenticateCallback
                    public void onError(Exception exc, String str3) {
                        recognizeListener.onError(null, -1, exc);
                    }

                    @Override // com.sunia.HTREnginev2.sdk.EngineAuthenticateCallback
                    public void onSuccess(Engine engine, String str3, String str4) {
                        HWRMultiEngine.this.mEngine = engine;
                        Engine engine2 = HWRMultiEngine.this.mEngine;
                        ERecognitionMode eRecognitionMode = ERecognitionMode.MODE_ECR;
                        C148331 c148331 = C148331.this;
                        HWRHelper.createEditor(engine2, eRecognitionMode, configBean, recognizeListener);
                    }
                });
            }
        });
    }

    public void release() {
        HWRHelper.release(null, this.mEngine);
    }

    public void updateEditor(Editor editor, ConfigBean configBean) {
        HWRHelper.updateEditor(editor, configBean);
    }
}
