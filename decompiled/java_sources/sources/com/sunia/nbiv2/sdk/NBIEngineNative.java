package com.sunia.nbiv2.sdk;

import android.app.Application;
import android.content.Context;
import com.sunia.HTREnginev2.gon;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.bean.NAIResult;
import com.sunia.commonv2.util.HWRCommonUtil;
import com.sunia.naiv2.sdk.NAIPath;
import com.sunia.nbiv2.local.LocalEngineNative;
import com.sunia.nbiv2.local.LocalNBIListener;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes10.dex */
public class NBIEngineNative extends NBIEngine {
    private static final String TAG = "NBIEngineNative";
    private Application mContext;
    private long mHandler;

    private boolean createEngine(String str) {
        LogUtil.m57653d(TAG, "createEngine");
        boolean nbiAuthorizeFromFile = LocalEngineNative.nbiAuthorizeFromFile(this.mContext, str);
        if (!nbiAuthorizeFromFile && "Unable to find corresponding module, authentication failed".equals(getErrorInfo())) {
            LogUtil.m57657w(TAG, "nbi获取授权失败，稍后重试");
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException e) {
                LogUtil.m57658w(TAG, e);
            }
            nbiAuthorizeFromFile = LocalEngineNative.nbiAuthorizeFromFile(this.mContext, str);
            if (nbiAuthorizeFromFile) {
                LogUtil.m57657w(TAG, "nbi获取授权重试成功");
            }
        }
        if (!nbiAuthorizeFromFile) {
            LogUtil.m57653d(TAG, "naiAuthorizeFromFile error=" + LocalEngineNative.nbiGetLastErrorString() + "\r,certifyFilePath=" + str);
        }
        long nbiCreateEngine = LocalEngineNative.nbiCreateEngine();
        this.mHandler = nbiCreateEngine;
        if (nbiCreateEngine == 0) {
            LogUtil.m57654e(TAG, "nbi引擎创建失败:" + getErrorInfo());
        }
        return nbiAuthorizeFromFile;
    }

    public int addStrokePoints(NAIPath nAIPath) {
        int size = nAIPath.getPoints().size();
        int i = 0;
        if (size > 0) {
            double[] dArr = new double[size];
            double[] dArr2 = new double[size];
            while (i < size) {
                dArr[i] = nAIPath.getPoints().get(i).f84039x;
                dArr2[i] = nAIPath.getPoints().get(i).f84040y;
                i++;
            }
            i = LocalEngineNative.nbiAddLine(this.mHandler, dArr, dArr2, nAIPath.getIdInt(), nAIPath.getGroupId());
            if (i <= 0) {
                LogUtil.m57654e(TAG, "nbi,addLine strokeId: " + i);
            }
        }
        return i;
    }

    @Override // com.sunia.nbiv2.sdk.NBIEngine
    public boolean clearPoints() {
        return LocalEngineNative.nbiClearPoints(this.mHandler);
    }

    @Override // com.sunia.nbiv2.sdk.NBIEngine
    public void destroyBeatifyEngine() {
        LogUtil.m57653d(TAG, "destroyBeatifyEngine");
        LocalEngineNative.nbiDestroyEngine(this.mHandler);
    }

    @Override // com.sunia.nbiv2.sdk.NBIEngine
    public boolean doBeautifyTransform(List<NAIPath> list, long j, long j2) {
        nbiSetAxisOutput(true);
        Iterator<NAIPath> it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next().setStrokeId(addStrokePoints(r0));
        }
        return LocalEngineNative.nbiTransform(this.mHandler, j, j2);
    }

    @Override // com.sunia.nbiv2.sdk.NBIEngine
    public String getErrorInfo() {
        return LocalEngineNative.nbiGetLastErrorString();
    }

    @Override // com.sunia.nbiv2.sdk.NBIEngine
    public boolean isValidate() {
        return LocalEngineNative.nbiEngineValid(this.mHandler);
    }

    @Override // com.sunia.nbiv2.sdk.NBIEngine
    public boolean nbiSetAxisOutput(boolean z) {
        return LocalEngineNative.nbiSetAxisOutput(this.mHandler, z);
    }

    @Override // com.sunia.nbiv2.sdk.NBIEngine
    public boolean nbiSetOutlineOutput(boolean z) {
        return LocalEngineNative.nbiSetOutlineOutput(this.mHandler, z);
    }

    @Override // com.sunia.nbiv2.sdk.NBIEngine
    public boolean setCallback(LocalNBIListener localNBIListener) {
        return LocalEngineNative.nbiSetCallback(this.mHandler, localNBIListener);
    }

    @Override // com.sunia.nbiv2.sdk.NBIEngine
    public boolean setParameters(int[] iArr) {
        return LocalEngineNative.nbiSetParameters(this.mHandler, iArr);
    }

    @Override // com.sunia.nbiv2.sdk.NBIEngine
    public boolean start(Context context, String str) {
        LogUtil.m57653d(TAG, gon.f71290o0);
        this.mContext = (Application) HWRCommonUtil.getApplicationContent(context);
        long j = this.mHandler;
        if (j != 0) {
            LocalEngineNative.nbiStopTransform(j);
            LocalEngineNative.nbiDestroyEngine(this.mHandler);
            this.mHandler = 0L;
        }
        return createEngine(str);
    }

    @Override // com.sunia.nbiv2.sdk.NBIEngine
    public void stopBeautify() {
        LocalEngineNative.nbiStopTransform(this.mHandler);
    }

    @Override // com.sunia.nbiv2.sdk.NBIEngine
    public boolean doBeautifyTransform(NAIResult nAIResult, long j, long j2) {
        nbiSetAxisOutput(true);
        return LocalEngineNative.nbiTransformPointer(this.mHandler, nAIResult.getDataPointer(), j, j2);
    }
}
