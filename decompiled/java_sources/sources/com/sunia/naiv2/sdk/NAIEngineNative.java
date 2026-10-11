package com.sunia.naiv2.sdk;

import android.app.Application;
import android.content.Context;
import android.content.res.AssetManager;
import com.sunia.HTREnginev2.gon;
import com.sunia.HTREnginev2.sdk.RecognizePath;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.bean.NAIResult;
import com.sunia.commonv2.exception.NAIException;
import com.sunia.commonv2.util.HWRCommonUtil;
import com.sunia.commonv2.util.HWRUtil;
import com.sunia.naiv2.local.LocalEngineNative;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes10.dex */
public class NAIEngineNative extends NAIEngine {
    private static final String TAG = "NAIEngineNative";
    private static List<Integer> sFontInputStreamList = new ArrayList();
    private Application mContext;
    private Map<Integer, Long> mHWRStrokeIdAndHWEIdMap = new HashMap();
    private long mHandler;

    private boolean naiAddFont(byte[] bArr) {
        return LocalEngineNative.naiAddFont(bArr);
    }

    private boolean naiClearFonts() {
        return LocalEngineNative.naiClearFonts();
    }

    private boolean naiSetAAssetManager(AssetManager assetManager) {
        return LocalEngineNative.naiSetAAssetManager(assetManager);
    }

    @Override // com.sunia.naiv2.sdk.NAIEngine
    public int addRecognizePath(RecognizePath recognizePath) {
        int size = recognizePath.getPoints().size();
        int i = 0;
        if (size > 0) {
            double[] dArr = new double[size];
            double[] dArr2 = new double[size];
            while (i < size) {
                dArr[i] = r0.get(i).f84039x;
                dArr2[i] = r0.get(i).f84040y;
                i++;
            }
            i = LocalEngineNative.naiAddLine(this.mHandler, dArr, dArr2, recognizePath.getIdInt());
            recognizePath.setStrokeId(i);
            this.mHWRStrokeIdAndHWEIdMap.put(Integer.valueOf(i), Long.valueOf(recognizePath.getId()));
            if (recognizePath.getId() < 0) {
                LogUtil.m57654e(TAG, "请注意，添加到nai的RecognizePath需要设置手写的笔画id，否则会丢失不支持nai字体的渲染");
            }
            if (i <= 0) {
                LogUtil.m57657w(TAG, "strokeId: " + i);
                LogUtil.m57654e(TAG, "naiAddLineResult=" + i + ",arrayX=" + Arrays.toString(dArr) + ",arrayY=" + Arrays.toString(dArr2));
            }
        }
        return i;
    }

    @Override // com.sunia.naiv2.sdk.NAIEngine
    public String getErrorInfo() {
        return LocalEngineNative.naiGetLastErrorString();
    }

    @Override // com.sunia.naiv2.sdk.NAIEngine
    public NAIResult getNAIResult(int i) {
        int naiLayout = LocalEngineNative.naiLayout(this.mHandler, i);
        LogUtil.m57654e(TAG, "getNaiTransformResult,naiLayout=" + naiLayout + ",mode=" + i);
        if (naiLayout != 0) {
            LogUtil.m57654e(TAG, "请注意，nai转换失败，getErrorInfo()=" + getErrorInfo());
        }
        NAIResult nAIResult = new NAIResult();
        nAIResult.getHWRStrokeIdAndHWEIdMap().clear();
        nAIResult.getHWRStrokeIdAndHWEIdMap().putAll(this.mHWRStrokeIdAndHWEIdMap);
        if (naiLayout != 0) {
            if (naiLayout == NAIException.NEGATIVE6.getCode()) {
                nAIResult.setException(NAIException.NEGATIVE6);
            } else if (naiLayout == NAIException.NEGATIVE7.getCode()) {
                nAIResult.setException(NAIException.NEGATIVE7);
            } else {
                nAIResult.setException(new NAIException(naiLayout, getErrorInfo()));
                return nAIResult;
            }
        }
        long naiGetLines = LocalEngineNative.naiGetLines(this.mHandler);
        LogUtil.m57654e(TAG, "dataPointer=" + naiGetLines);
        nAIResult.setDataPointer(naiGetLines);
        return nAIResult;
    }

    @Override // com.sunia.naiv2.sdk.NAIEngine
    public NAIResult getNAIResultForGraphic(int i, int i2) {
        int naiLayoutGraphic = LocalEngineNative.naiLayoutGraphic(this.mHandler, i, i2);
        LogUtil.m57654e(TAG, "getNaiTransformResult,naiLayout=" + naiLayoutGraphic + ",textMode=" + i + ",formulaMode=" + i2);
        if (naiLayoutGraphic != 0) {
            LogUtil.m57654e(TAG, "请注意，nai转换失败，getErrorInfo()=" + getErrorInfo());
        }
        NAIResult nAIResult = new NAIResult();
        nAIResult.getHWRStrokeIdAndHWEIdMap().clear();
        nAIResult.getHWRStrokeIdAndHWEIdMap().putAll(this.mHWRStrokeIdAndHWEIdMap);
        if (naiLayoutGraphic != 0) {
            if (naiLayoutGraphic == NAIException.NEGATIVE6.getCode()) {
                nAIResult.setException(NAIException.NEGATIVE6);
            } else {
                if (naiLayoutGraphic != NAIException.NEGATIVE7.getCode()) {
                    nAIResult.setException(new NAIException(naiLayoutGraphic, getErrorInfo()));
                    return nAIResult;
                }
                nAIResult.setException(NAIException.NEGATIVE7);
            }
        }
        long naiGetLines = LocalEngineNative.naiGetLines(this.mHandler);
        LogUtil.m57654e(TAG, "dataPointer=" + naiGetLines);
        nAIResult.setDataPointer(naiGetLines);
        return nAIResult;
    }

    @Override // com.sunia.naiv2.sdk.NAIEngine
    public boolean naiClearPoints() {
        this.mHWRStrokeIdAndHWEIdMap.clear();
        return LocalEngineNative.naiClearPoints(this.mHandler);
    }

    @Override // com.sunia.naiv2.sdk.NAIEngine
    public boolean naiDestroyEngine() {
        LogUtil.m57653d(TAG, "naiDestroyEngine");
        LocalEngineNative.naiDestroyEngine(this.mHandler);
        return true;
    }

    @Override // com.sunia.naiv2.sdk.NAIEngine
    public boolean naiEngineValid() {
        return LocalEngineNative.naiEngineValid(this.mHandler);
    }

    @Override // com.sunia.naiv2.sdk.NAIEngine
    public boolean naiRemoveLines(int[] iArr) {
        return LocalEngineNative.naiRemoveLines(this.mHandler, iArr);
    }

    @Override // com.sunia.naiv2.sdk.NAIEngine
    public boolean naiResetConfig() {
        return LocalEngineNative.naiResetConfig(this.mHandler);
    }

    @Override // com.sunia.naiv2.sdk.NAIEngine
    public void naiSetConfig(String str) {
        naiSetAAssetManager(this.mContext.getAssets());
        LocalEngineNative.naiSetConfig(this.mHandler, str);
    }

    @Override // com.sunia.naiv2.sdk.NAIEngine
    public String naiSupportLayout(String str, int i) {
        return LocalEngineNative.naiSupportLayout(this.mHandler, str, i);
    }

    @Override // com.sunia.naiv2.sdk.NAIEngine
    public boolean start(Context context, String str, String str2, String str3, List<InputStream> list, boolean z) {
        LogUtil.m57653d(TAG, gon.f71290o0);
        Application application = (Application) HWRCommonUtil.getApplicationContent(context);
        this.mContext = application;
        naiSetAAssetManager(application.getAssets());
        long j = this.mHandler;
        if (j != 0) {
            LocalEngineNative.naiDestroyEngine(j);
            this.mHandler = 0L;
        }
        boolean naiAuthorizeFromFile = LocalEngineNative.naiAuthorizeFromFile(this.mContext, str, str);
        if (!naiAuthorizeFromFile && "Unable to find corresponding module, authentication failed".equals(getErrorInfo())) {
            LogUtil.m57657w(TAG, "nai获取授权失败，稍后重试");
            try {
                Thread.sleep(2000L);
            } catch (InterruptedException e) {
                LogUtil.m57658w(TAG, e);
            }
            naiAuthorizeFromFile = LocalEngineNative.naiAuthorizeFromFile(this.mContext, str, str);
            if (naiAuthorizeFromFile) {
                LogUtil.m57657w(TAG, "nai获取授权重试成功");
            }
        }
        if (!naiAuthorizeFromFile) {
            LogUtil.m57653d(TAG, "naiAuthorizeFromFile error=" + LocalEngineNative.naiGetLastErrorString() + "\r,certifyFilePath=" + str);
            return false;
        }
        this.mHandler = LocalEngineNative.naiCreateEngine(str2, str3);
        LogUtil.m57653d(TAG, "naiCreateEngine result=" + this.mHandler + ",dataDir=" + str2 + ",configName=" + str3 + ",getErrorInfo=" + getErrorInfo());
        if (this.mHandler == 0) {
            LogUtil.m57653d(TAG, "naiCreateEngine result failed=" + this.mHandler);
            return false;
        }
        if (z) {
            LogUtil.m57657w(TAG, "强制清除字体1");
            LogUtil.m57657w(TAG, "强制清除字体2");
            LogUtil.m57657w(TAG, "强制清除字体3");
            LogUtil.m57657w(TAG, "强制清除字体4");
            sFontInputStreamList.clear();
            naiClearFonts();
        }
        if (HWRUtil.isNotEmpty((List<?>) sFontInputStreamList)) {
            LogUtil.m57653d(TAG, "不是第一次启动nai，字体文件已经存在，之前加载的字体数量=" + sFontInputStreamList.size());
            return true;
        }
        LogUtil.m57653d(TAG, "第一次初始化字体");
        if (HWRUtil.isEmpty((List<?>) list)) {
            LogUtil.m57653d(TAG, "please add nai font");
            return false;
        }
        LogUtil.m57653d(TAG, "fontInputStreamList.size()=" + list.size());
        Iterator<InputStream> it2 = list.iterator();
        while (it2.hasNext()) {
            if (!naiAddFont(HWRUtil.readAssetsFileToByte(it2.next()))) {
                LogUtil.m57653d(TAG, "naiAddFont is false,getErrorInfo()=" + getErrorInfo());
                return false;
            }
            List<Integer> list2 = sFontInputStreamList;
            list2.add(Integer.valueOf(list2.size()));
        }
        LogUtil.m57653d(TAG, "字体初始化成功");
        return true;
    }

    @Override // com.sunia.naiv2.sdk.NAIEngine
    public NAIResult getNAIResult(String str, int i) {
        int naiLayoutText = LocalEngineNative.naiLayoutText(this.mHandler, str, i);
        LogUtil.m57654e(TAG, "getNaiTransformResult,naiLayout=" + naiLayoutText + ",mode=" + i);
        if (naiLayoutText != 0) {
            LogUtil.m57654e(TAG, "请注意，nai转换失败，getErrorInfo()=" + getErrorInfo());
        }
        NAIResult nAIResult = new NAIResult();
        nAIResult.getHWRStrokeIdAndHWEIdMap().clear();
        nAIResult.getHWRStrokeIdAndHWEIdMap().putAll(this.mHWRStrokeIdAndHWEIdMap);
        if (naiLayoutText != 0) {
            if (naiLayoutText == NAIException.NEGATIVE6.getCode()) {
                nAIResult.setException(NAIException.NEGATIVE6);
            } else if (naiLayoutText == NAIException.NEGATIVE7.getCode()) {
                nAIResult.setException(NAIException.NEGATIVE7);
            } else {
                nAIResult.setException(new NAIException(naiLayoutText, getErrorInfo()));
                return nAIResult;
            }
        }
        long naiGetLines = LocalEngineNative.naiGetLines(this.mHandler);
        LogUtil.m57654e(TAG, "dataPointer=" + naiGetLines);
        nAIResult.setDataPointer(naiGetLines);
        return nAIResult;
    }
}
