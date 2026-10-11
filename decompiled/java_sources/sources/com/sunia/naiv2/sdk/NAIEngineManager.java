package com.sunia.naiv2.sdk;

import android.content.Context;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.sunia.HTREnginev2.sdk.RecognizePath;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.bean.NAICheckResult;
import com.sunia.commonv2.bean.NAIResult;
import com.sunia.commonv2.exception.NAICheckException;
import com.sunia.commonv2.exception.NAIException;
import com.sunia.commonv2.util.HWRUtil;
import java.io.InputStream;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes10.dex */
public class NAIEngineManager {
    private static final String TAG = "NAIEngineManager";
    private static NAIEngineManager instance;
    private ExecutorService executors = Executors.newSingleThreadExecutor();
    private NAIEngine mNAIEngine;

    private NAIEngineManager() {
        LogUtil.m57653d(TAG, "NAIEngineManager init");
        this.mNAIEngine = NAIEngine.createInstance();
    }

    public static NAIEngineManager getInstance() {
        LogUtil.m57653d(TAG, "getInstance");
        if (instance == null) {
            synchronized (NAIEngineManager.class) {
                if (instance == null) {
                    instance = new NAIEngineManager();
                }
            }
        }
        return instance;
    }

    public NAICheckResult check(String str, int i) {
        NAICheckResult nAICheckResult = new NAICheckResult();
        try {
        } catch (Exception e) {
            LogUtil.m57655e(TAG, e);
            nAICheckResult.setException(new NAICheckException(0, e.getMessage()));
        }
        if (HWRUtil.isEmpty(str)) {
            throw new Exception("text is empty");
        }
        if (!isValidate()) {
            throw new Exception("nai engine is not validate");
        }
        String naiSupportLayout = this.mNAIEngine.naiSupportLayout(str, i);
        if (HWRUtil.isEmpty(naiSupportLayout)) {
            throw new Exception(this.mNAIEngine.getErrorInfo());
        }
        nAICheckResult.getResult().addAll((List) new Gson().fromJson(naiSupportLayout, new TypeToken<List<NAICheckResult.OneChar>>() { // from class: com.sunia.naiv2.sdk.NAIEngineManager.3
        }.getType()));
        return nAICheckResult;
    }

    public void clearPoints() {
        if (isValidate()) {
            LogUtil.m57653d(TAG, "clearPoints result: " + this.mNAIEngine.naiClearPoints());
        }
    }

    public void destroyEngine() {
        if (isValidate()) {
            this.mNAIEngine.naiDestroyEngine();
        }
    }

    public NAIResult getNAIResult(List<RecognizePath> list, int i) {
        if (!isValidate()) {
            NAIResult nAIResult = new NAIResult();
            nAIResult.setException(NAIException.ZERO);
            LogUtil.m57654e(TAG, nAIResult.getException().getMessage());
            return nAIResult;
        }
        if (HWRUtil.isMainThread()) {
            NAIResult nAIResult2 = new NAIResult();
            nAIResult2.setException(NAIException.ONE);
            LogUtil.m57654e(TAG, nAIResult2.getException().getMessage());
            return nAIResult2;
        }
        clearPoints();
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.mNAIEngine.addRecognizePath(list.get(i2));
        }
        NAIResult nAIResult3 = this.mNAIEngine.getNAIResult(i);
        nAIResult3.setMode(i);
        return nAIResult3;
    }

    public NAIResult getNAIResultForGraphic(List<RecognizePath> list, int i, int i2) {
        if (!isValidate()) {
            NAIResult nAIResult = new NAIResult();
            nAIResult.setException(NAIException.ZERO);
            LogUtil.m57654e(TAG, nAIResult.getException().getMessage());
            return nAIResult;
        }
        if (HWRUtil.isMainThread()) {
            NAIResult nAIResult2 = new NAIResult();
            nAIResult2.setException(NAIException.ONE);
            LogUtil.m57654e(TAG, nAIResult2.getException().getMessage());
            return nAIResult2;
        }
        clearPoints();
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.mNAIEngine.addRecognizePath(list.get(i3));
        }
        NAIResult nAIResultForGraphic = this.mNAIEngine.getNAIResultForGraphic(i, i2);
        nAIResultForGraphic.setMode(i);
        nAIResultForGraphic.setFormulaMode(i2);
        return nAIResultForGraphic;
    }

    public boolean isValidate() {
        NAIEngine nAIEngine = this.mNAIEngine;
        if (nAIEngine == null) {
            LogUtil.m57657w(TAG, "isValidate failed, mNAIEngine==null");
            return false;
        }
        if (nAIEngine.naiEngineValid()) {
            return true;
        }
        LogUtil.m57657w(TAG, "isValidate failed, naiEngineValid=false");
        return false;
    }

    public boolean naiResetConfig() {
        if (isValidate()) {
            return this.mNAIEngine.naiResetConfig();
        }
        return false;
    }

    public void naiSetConfig(String str) {
        if (isValidate()) {
            this.mNAIEngine.naiSetConfig(str);
        }
    }

    public void start(final Context context, final String str, final String str2, final String str3, final List<InputStream> list, final NAICallback nAICallback) {
        this.executors.execute(new Runnable() { // from class: com.sunia.naiv2.sdk.NAIEngineManager.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (!NAIEngineManager.this.mNAIEngine.start(context, str, str2, str3, list, false)) {
                        throw new Exception(NAIEngineManager.this.mNAIEngine.getErrorInfo());
                    }
                    if (!HWRUtil.isNotEmpty(nAICallback)) {
                        LogUtil.m57657w(NAIEngineManager.TAG, "callback is empty，onLoad callback failed");
                    } else {
                        LogUtil.m57657w(NAIEngineManager.TAG, "nai start success,callback onLoad");
                        nAICallback.onLoad();
                    }
                } catch (Exception e) {
                    LogUtil.m57655e(NAIEngineManager.TAG, e);
                    if (!HWRUtil.isNotEmpty(nAICallback)) {
                        LogUtil.m57657w(NAIEngineManager.TAG, "callback is empty，onError callback failed");
                    } else {
                        LogUtil.m57657w(NAIEngineManager.TAG, "nai start failed,callback onError");
                        nAICallback.onError(e);
                    }
                }
            }
        });
    }

    public void start(final Context context, final String str, final String str2, final String str3, final List<InputStream> list, final NAICallback nAICallback, final boolean z) {
        this.executors.execute(new Runnable() { // from class: com.sunia.naiv2.sdk.NAIEngineManager.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (!NAIEngineManager.this.mNAIEngine.start(context, str, str2, str3, list, z)) {
                        throw new Exception(NAIEngineManager.this.mNAIEngine.getErrorInfo());
                    }
                    if (!HWRUtil.isNotEmpty(nAICallback)) {
                        LogUtil.m57657w(NAIEngineManager.TAG, "callback is empty，onLoad callback failed");
                    } else {
                        LogUtil.m57657w(NAIEngineManager.TAG, "nai start success,callback onLoad");
                        nAICallback.onLoad();
                    }
                } catch (Exception e) {
                    LogUtil.m57655e(NAIEngineManager.TAG, e);
                    if (!HWRUtil.isNotEmpty(nAICallback)) {
                        LogUtil.m57657w(NAIEngineManager.TAG, "callback is empty，onError callback failed");
                    } else {
                        LogUtil.m57657w(NAIEngineManager.TAG, "nai start failed,callback onError");
                        nAICallback.onError(e);
                    }
                }
            }
        });
    }

    public NAIResult getNAIResult(String str, int i) {
        if (!isValidate()) {
            NAIResult nAIResult = new NAIResult();
            nAIResult.setException(NAIException.ZERO);
            LogUtil.m57654e(TAG, nAIResult.getException().getMessage());
            return nAIResult;
        }
        if (HWRUtil.isMainThread()) {
            NAIResult nAIResult2 = new NAIResult();
            nAIResult2.setException(NAIException.ONE);
            LogUtil.m57654e(TAG, nAIResult2.getException().getMessage());
            return nAIResult2;
        }
        clearPoints();
        NAIResult nAIResult3 = this.mNAIEngine.getNAIResult(str, i);
        nAIResult3.setMode(i);
        return nAIResult3;
    }
}
