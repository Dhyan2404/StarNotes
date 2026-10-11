package com.sunia.HTREnginev2.impl_native;

import android.content.Context;
import android.text.TextUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.sunia.HTREnginev2.gon;
import com.sunia.HTREnginev2.impl_native.Local.LocalAuthenticateCallBack;
import com.sunia.HTREnginev2.impl_native.Local.LocalEngineNative;
import com.sunia.HTREnginev2.sdk.Engine;
import com.sunia.HTREnginev2.sdk.EngineAuthenticateCallback;
import com.sunia.HTREnginev2.sdk.Params;
import com.sunia.HTREnginev2.sdk.editor.Editor;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.util.HWRCommonUtil;
import io.opencensus.contrib.http.util.HttpMeasureConstants;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes10.dex */
public class EngineNative extends Engine implements LocalAuthenticateCallBack.EngineAuthorInterface {
    private static String TAG = "EngineNative";
    private LocalAuthenticateCallBack callBack;
    private String certify;
    private EngineAuthenticateCallback initializeCallback;
    private boolean isOffline;
    private String logDir;
    private int logLeve;
    Context mContext;
    private long startTime;
    private boolean mIsValid = true;
    private boolean currentModelEnable = true;
    private long lHandler = 0;
    private int authorizeCode = 0;
    private String authorize = FirebaseAnalytics.Param.SUCCESS;
    private String authentication = FirebaseAnalytics.Param.SUCCESS;
    private String authenticationCode = "0060";

    public EngineNative(Context context, String str) {
        this.mContext = HWRCommonUtil.getApplicationContent(context);
        this.certify = str;
    }

    private void createEngine() {
        LogUtil.m57653d(TAG, "createEngine");
        if (!isValidate() || TextUtils.isEmpty(this.certify)) {
            this.lHandler = 0L;
            return;
        }
        if (!new File(this.certify).exists()) {
            LogUtil.m57653d(TAG, "createEngine: certify is not file path");
        }
        this.callBack = new LocalAuthenticateCallBack(this);
        this.startTime = System.currentTimeMillis();
        this.lHandler = LocalEngineNative.createEngine(this.certify, this.mContext, this.callBack);
        if (this.initializeCallback != null) {
            if (!isValidate()) {
                this.initializeCallback.onError(new Exception(this.authentication), this.authenticationCode);
            } else if (this.lHandler != 0) {
                LocalEngineNative.setAssetManager(this.mContext.getAssets());
                this.initializeCallback.onSuccess(this, this.authenticationCode, this.authentication);
            }
        }
    }

    @Override // com.sunia.HTREnginev2.sdk.Engine
    public Editor createEditor(Params params) {
        LogUtil.m57653d(TAG, "createEditor");
        if (!isValidate()) {
            return null;
        }
        long createEditor = LocalEngineNative.createEditor(getHandler(), ((ParamsNative) params).getHandler());
        if (createEditor != 0) {
            return new EditorNative(createEditor, params);
        }
        return null;
    }

    @Override // com.sunia.HTREnginev2.sdk.Engine
    public String getAuthInfo() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("authentication", this.authentication);
            jSONObject.put("authenticationCode", this.authenticationCode);
            return jSONObject.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.sunia.HTREnginev2.sdk.Engine
    public String getEngineVersion() {
        LogUtil.m57653d(TAG, "getEngineVersion");
        return isValidate() ? LocalEngineNative.getEngineVersion(this.lHandler) : "";
    }

    public long getHandler() {
        LogUtil.m57653d(TAG, "getHandler: " + this.lHandler);
        return this.lHandler;
    }

    public boolean isModelEnable() {
        return this.currentModelEnable;
    }

    @Override // com.sunia.HTREnginev2.sdk.Engine
    public boolean isValidate() {
        LogUtil.m57653d(TAG, "isValidate: " + this.mIsValid);
        return this.mIsValid;
    }

    @Override // com.sunia.HTREnginev2.sdk.Engine
    public void release() {
        LogUtil.m57653d(TAG, "release: ");
        if (isValidate()) {
            LocalEngineNative.release(this.lHandler);
            this.lHandler = 0L;
            this.mIsValid = false;
        }
    }

    @Override // com.sunia.HTREnginev2.sdk.Engine
    public void setDebugLevel(int i) {
        LogUtil.m57653d(TAG, "setDebugLevel: " + i);
        this.logLeve = i;
        if (isValidate()) {
            LocalEngineNative.setDebugLevel(this.lHandler, this.logLeve);
        }
    }

    @Override // com.sunia.HTREnginev2.sdk.Engine
    public void setInitializeCallback(EngineAuthenticateCallback engineAuthenticateCallback) {
        LogUtil.m57653d(TAG, "setInitializeCallback");
        this.initializeCallback = engineAuthenticateCallback;
        this.startTime = System.currentTimeMillis();
    }

    @Override // com.sunia.HTREnginev2.impl_native.Local.LocalAuthenticateCallBack.EngineAuthorInterface
    public void setInvalidate(boolean z, String str, String str2) {
        LogUtil.m57653d(TAG, "setInvalidate handler:" + this.lHandler + " hashCode:" + hashCode() + " threadId:" + Thread.currentThread().getId());
        this.mIsValid = z;
        this.authenticationCode = str;
        this.authentication = str2;
        if ("Module".equals(str)) {
            this.currentModelEnable = !str2.contains("failed");
        }
        LogUtil.m57653d(TAG, "Authenticate time: " + (System.currentTimeMillis() - this.startTime) + HttpMeasureConstants.f94668b);
    }

    @Override // com.sunia.HTREnginev2.sdk.Engine
    public void setLogDir(String str) {
        LogUtil.m57653d(TAG, "setLogDir: " + str);
        this.logDir = str;
        if (isValidate()) {
            LocalEngineNative.setLogDir(this.lHandler, this.logDir);
        }
    }

    @Override // com.sunia.HTREnginev2.sdk.Engine
    public void start() {
        LogUtil.m57653d(TAG, gon.f71290o0);
        long j = this.lHandler;
        if (j != 0) {
            LocalEngineNative.stopEngine(j);
            this.lHandler = 0L;
        }
        createEngine();
    }

    @Override // com.sunia.HTREnginev2.sdk.Engine
    public void stopEngine() {
        LogUtil.m57653d(TAG, "stop");
        long j = this.lHandler;
        if (j != 0) {
            LocalEngineNative.stopEngine(j);
        }
    }
}
