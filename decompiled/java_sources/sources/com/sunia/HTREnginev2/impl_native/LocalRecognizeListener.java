package com.sunia.HTREnginev2.impl_native;

import android.text.TextUtils;
import androidx.core.app.C0619b;
import com.sunia.HTREnginev2.sdk.RecognizeListener;
import com.sunia.HTREnginev2.sdk.RecognizePath;
import com.sunia.HTREnginev2.sdk.RecognizePoint;
import com.sunia.HTREnginev2.utils.LogUtil;
import org.json.JSONObject;

/* loaded from: classes10.dex */
public class LocalRecognizeListener {
    private static final String TAG = "LocalRecognizeListener";
    private EditorNative editorNative;
    private RecognizeListener innerListener;
    private RecognizePath recognizePath;

    public LocalRecognizeListener(EditorNative editorNative, RecognizeListener recognizeListener) {
        this.editorNative = editorNative;
        this.innerListener = recognizeListener;
    }

    public void onAssociationalChanged(long j, String str) {
        RecognizeListener recognizeListener = this.innerListener;
        if (recognizeListener != null) {
            recognizeListener.onAssociationalChanged(this.editorNative, str);
        }
    }

    public void onCandidateChanged(long j, String str) {
        RecognizeListener recognizeListener = this.innerListener;
        if (recognizeListener != null) {
            recognizeListener.onCandidateChanged(this.editorNative, str);
        }
    }

    public void onChemicalStructureChanged(long j, String str) {
        RecognizeListener recognizeListener = this.innerListener;
        if (recognizeListener != null) {
            recognizeListener.onChemicalStructureChanged(this.editorNative, str);
        }
    }

    public void onContentChanged(long j, String str) {
        if (this.innerListener != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if ("gesture".equals(jSONObject.optString("type"))) {
                    LogUtil.m57653d(TAG, "type is gesture ");
                    String string = jSONObject.getString(C0619b.f5199k);
                    if (!TextUtils.isEmpty(string) && string.split(",").length == 1 && Integer.parseInt(string) != 0) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(string);
                        sb.append(",");
                        LogUtil.m57653d(TAG, "recognizePath size: " + this.recognizePath.size());
                        if (this.recognizePath != null) {
                            for (int i = 0; i < this.recognizePath.getPoints().size(); i++) {
                                RecognizePoint recognizePoint = this.recognizePath.getPoints().get(i);
                                sb.append(recognizePoint.f84039x);
                                sb.append(",");
                                sb.append(recognizePoint.f84040y);
                                sb.append(",");
                                if (i < this.recognizePath.size() - 1) {
                                    sb.append(recognizePoint.f84039x);
                                    sb.append(",");
                                    sb.append(recognizePoint.f84040y);
                                    sb.append(",");
                                } else {
                                    sb.append(recognizePoint.f84039x);
                                    sb.append(",");
                                    sb.append(recognizePoint.f84040y);
                                }
                            }
                        } else {
                            LogUtil.m57653d(TAG, "contentJson: " + str);
                        }
                        String sb2 = sb.toString();
                        LogUtil.m57653d(TAG, "label: " + sb2);
                        jSONObject.put(C0619b.f5199k, sb2);
                        str = jSONObject.toString();
                    }
                }
            } catch (Exception e) {
                LogUtil.m57654e(TAG, e.getMessage());
            }
            this.innerListener.onContentChanged(this.editorNative, str);
        }
    }

    public void onError(long j, int i, String str) {
        LogUtil.m57653d(TAG, "onLoaded onError errorCode：" + i + " ErrorMsg:" + str);
        RecognizeListener recognizeListener = this.innerListener;
        if (recognizeListener != null) {
            recognizeListener.onError(this.editorNative, i, new Exception(str));
        }
    }

    public void onErrorReplaceChanged(long j, String str) {
        RecognizeListener recognizeListener = this.innerListener;
        if (recognizeListener != null) {
            recognizeListener.onErrorReplaceChanged(this.editorNative, str);
        }
    }

    public void onLoaded(long j) {
        LogUtil.m57653d(TAG, "onLoaded lEditorHandler=" + j);
        EditorNative editorNative = this.editorNative;
        if (editorNative != null) {
            LogUtil.m57653d(TAG, "onLoaded,getHdbModelVersion=" + editorNative.commonInterface("getHdbModelVersion"));
        }
        RecognizeListener recognizeListener = this.innerListener;
        if (recognizeListener != null) {
            recognizeListener.onLoaded(this.editorNative);
        }
    }

    public void onSyntheseChanged(long j, String str) {
        RecognizeListener recognizeListener = this.innerListener;
        if (recognizeListener != null) {
            recognizeListener.onSyntheseChanged(this.editorNative, str);
        }
    }

    public void setRecognizePath(RecognizePath recognizePath) {
        this.recognizePath = recognizePath;
    }
}
