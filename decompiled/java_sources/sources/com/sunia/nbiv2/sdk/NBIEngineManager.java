package com.sunia.nbiv2.sdk;

import android.content.Context;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sunia.HTREnginev2.sdk.RecognizePath;
import com.sunia.HTREnginev2.sdk.RecognizePoint;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.bean.NAIResult;
import com.sunia.commonv2.util.HWRUtil;
import com.sunia.naiv2.sdk.NAIPath;
import com.sunia.nbiv2.local.LocalNBIListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes10.dex */
public class NBIEngineManager implements LocalNBIListener {
    private static final String TAG = "NBIEngineManager";
    private static NBIEngineManager instance;
    private WeakReference<NBICallback> callback;
    private NBIEngine mNBIEngine;
    private NAIResult naiResult;
    private Map<Long, List<NAIPath>> unsupportedRecognizePathMap = new HashMap();
    private List<NBIAxisPath> nbiAxisPathList = new ArrayList();
    private List<NBIAxisPath> unsupportedNBIAxisPathList = new ArrayList();
    private List<RecognizePath> nbiOutlinePathList = new ArrayList();

    private NBIEngineManager() {
        LogUtil.m57653d(TAG, "NBIEngineManager init");
        this.mNBIEngine = NBIEngine.createInstance();
    }

    public static NBIEngineManager getInstance() {
        if (instance == null) {
            synchronized (NBIEngineManager.class) {
                if (instance == null) {
                    instance = new NBIEngineManager();
                }
            }
        }
        return instance;
    }

    private void onDrawNBIPath(long j) {
        if (HWRUtil.isEmpty(this.callback)) {
            return;
        }
        NBICallback nBICallback = this.callback.get();
        if (HWRUtil.isEmpty(nBICallback)) {
            return;
        }
        if (HWRUtil.isEmpty((List<?>) this.unsupportedNBIAxisPathList) && HWRUtil.isNotEmpty(this.unsupportedRecognizePathMap)) {
            List<NAIPath> list = this.unsupportedRecognizePathMap.get(Long.valueOf(j));
            if (HWRUtil.isNotEmpty((List<?>) list)) {
                ArrayList arrayList = new ArrayList();
                for (NAIPath nAIPath : list) {
                    NBIAxisPath nBIAxisPath = new NBIAxisPath();
                    nBIAxisPath.getAddIdListLong().add(Long.valueOf(nAIPath.getId()));
                    nBIAxisPath.getPoints().addAll(nAIPath.getPoints());
                    arrayList.add(nBIAxisPath);
                }
                this.unsupportedNBIAxisPathList.addAll(arrayList);
            }
        }
        nBICallback.onDrawNBIPath(j, this.nbiAxisPathList, this.nbiOutlinePathList, this.unsupportedNBIAxisPathList);
    }

    private void resetData() {
        this.nbiAxisPathList.clear();
        this.unsupportedNBIAxisPathList.clear();
        this.nbiOutlinePathList.clear();
    }

    public void clearPoints() {
        this.unsupportedRecognizePathMap.clear();
        if (isValidate()) {
            LogUtil.m57653d(TAG, "clearPoints result: " + this.mNBIEngine.clearPoints());
        }
    }

    public void destroyEngine() {
        this.callback = null;
        if (isValidate()) {
            this.mNBIEngine.setCallback(null);
            this.mNBIEngine.destroyBeatifyEngine();
        }
    }

    public void doBeautifyTransform(List<NAIPath> list, List<NAIPath> list2, long j) {
        if (isValidate()) {
            stop();
            clearPoints();
            if (HWRUtil.isEmpty((List<?>) list)) {
                LogUtil.m57657w(TAG, "nai3,doBeautifyTransform naiTransformResult is empty");
            }
            if (HWRUtil.isNotEmpty((List<?>) list2)) {
                this.unsupportedRecognizePathMap.put(Long.valueOf(j), list2);
            }
            LogUtil.m57653d(TAG, "nai3,doBeautifyTransform start");
            LogUtil.m57653d(TAG, "nai3,doBeautifyTransform end, result: " + this.mNBIEngine.doBeautifyTransform(list, 1L, j));
        }
    }

    public boolean isValidate() {
        NBIEngine nBIEngine = this.mNBIEngine;
        if (nBIEngine == null) {
            LogUtil.m57657w(TAG, "isValidate failed, mNBIEngine==null");
            return false;
        }
        if (nBIEngine.isValidate()) {
            return true;
        }
        LogUtil.m57657w(TAG, "isValidate failed, isEngineValid=false");
        return false;
    }

    public boolean nbiSetAxisOutput(boolean z) {
        if (isValidate()) {
            return this.mNBIEngine.nbiSetAxisOutput(z);
        }
        return false;
    }

    public boolean nbiSetOutlineOutput(boolean z) {
        if (isValidate()) {
            return this.mNBIEngine.nbiSetOutlineOutput(z);
        }
        return false;
    }

    @Override // com.sunia.nbiv2.local.LocalNBIListener
    public void onNBICallback(long j, long j2, double[] dArr, double[] dArr2, double[] dArr3, byte[] bArr, double[] dArr4, double[] dArr5, byte[] bArr2, String str, int i, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        String[] strArr;
        byte[] bArr3 = bArr;
        byte[] bArr4 = bArr2;
        LogUtil.m57653d(TAG, "nai4,onNBICallback status: " + i3 + " index:" + i + ",total=" + i2 + ",param=" + j2 + ",axish.length=" + bArr3.length + ",outlineh.length=" + bArr4.length);
        synchronized (this) {
            try {
                try {
                } catch (Exception e) {
                    LogUtil.m57654e(TAG, "nbi parse exception=" + LogUtil.getStackTraceString(e));
                    resetData();
                    if (HWRUtil.isNotEmpty(this.callback) && HWRUtil.isNotEmpty(this.callback.get())) {
                        this.callback.get().onError(e);
                    }
                }
                if (i3 == NBIStatus.START.getStatus()) {
                    resetData();
                    return;
                }
                if (i3 != NBIStatus.HANDING.getStatus()) {
                    if (i3 == NBIStatus.FINISHED.getStatus()) {
                        HWRUtil.filterEmptyPoints(this.nbiOutlinePathList);
                        HWRUtil.filterEmptyPointsByNBIAxisPath(this.nbiAxisPathList);
                        LogUtil.m57653d(TAG, "nai5,nbi finished,nbiAxisPathList.size()=" + this.nbiAxisPathList.size() + ",nbiOutlinePathList.size()=" + this.nbiOutlinePathList.size());
                        onDrawNBIPath(j2);
                        return;
                    }
                    if (i3 != NBIStatus.INVALID_POINTER.getStatus()) {
                        if (i3 == NBIStatus.EMPTY.getStatus()) {
                            resetData();
                            onDrawNBIPath(j2);
                            return;
                        }
                        if (i3 == NBIStatus.STOPPED.getStatus()) {
                            resetData();
                            if (HWRUtil.isNotEmpty(this.callback) && HWRUtil.isNotEmpty(this.callback.get())) {
                                this.callback.get().onCancel();
                            }
                            return;
                        }
                        return;
                    }
                    LogUtil.m57654e(TAG, "nai INVALID_POINTER，this.naiResult.getDataPointer()=" + this.naiResult.getDataPointer());
                    resetData();
                    if (HWRUtil.isNotEmpty(this.callback) && HWRUtil.isNotEmpty(this.callback.get())) {
                        this.callback.get().onError(new Exception("INVALID POINTER :" + this.naiResult.getDataPointer()));
                    }
                    return;
                }
                int length = bArr3.length;
                long currentTimeMillis = System.currentTimeMillis();
                int i7 = 0;
                NBIAxisPath nBIAxisPath = null;
                while (i7 < length) {
                    float f = (float) dArr3[i7];
                    float f2 = (float) dArr[i7];
                    float f3 = (float) dArr2[i7];
                    currentTimeMillis++;
                    if (bArr3[i7] == 1) {
                        nBIAxisPath = new NBIAxisPath();
                        nBIAxisPath.setExt(str);
                        String[] split = str.split(AndroidTreeView.f47214k);
                        int i8 = 0;
                        boolean z = false;
                        for (int length2 = split.length; i8 < length2; length2 = i6) {
                            String str2 = split[i8];
                            if (HWRUtil.isEmpty(str2)) {
                                i5 = length;
                                i6 = length2;
                                strArr = split;
                            } else {
                                i5 = length;
                                if (str2.startsWith("relationship=")) {
                                    String[] split2 = str2.split("relationship=");
                                    i6 = length2;
                                    strArr = split;
                                    if (split2.length >= 2) {
                                        String[] split3 = split2[1].split(",");
                                        int length3 = split3.length;
                                        int i9 = 0;
                                        while (i9 < length3) {
                                            String[] strArr2 = split3;
                                            int i10 = length3;
                                            Long l = this.naiResult.getHWRStrokeIdAndHWEIdMap().get(Integer.valueOf(Integer.parseInt(split3[i9])));
                                            if (HWRUtil.isNotEmpty(l)) {
                                                nBIAxisPath.getAddIdListLong().add(l);
                                            }
                                            i9++;
                                            split3 = strArr2;
                                            length3 = i10;
                                        }
                                    } else {
                                        LogUtil.m57653d(TAG, "Please note that you can't find the strokes id，ext=" + str);
                                    }
                                } else {
                                    i6 = length2;
                                    strArr = split;
                                }
                                if (str2.startsWith("valid=")) {
                                    z = "1".equals(str2.split("valid=")[1]);
                                }
                            }
                            i8++;
                            length = i5;
                            split = strArr;
                        }
                        i4 = length;
                        if (z) {
                            this.nbiAxisPathList.add(nBIAxisPath);
                        } else {
                            this.unsupportedNBIAxisPathList.add(nBIAxisPath);
                        }
                    } else {
                        i4 = length;
                    }
                    nBIAxisPath.getNbiAxisPointList().add(new NBIAxisPoint(f2, f3, f, currentTimeMillis));
                    i7++;
                    length = i4;
                    bArr3 = bArr;
                    bArr4 = bArr2;
                }
                byte[] bArr5 = bArr4;
                int length4 = bArr5.length;
                RecognizePath recognizePath = null;
                for (int i11 = 0; i11 < length4; i11++) {
                    float f4 = (float) dArr4[i11];
                    float f5 = (float) dArr5[i11];
                    currentTimeMillis++;
                    if (bArr5[i11] == 1) {
                        recognizePath = new RecognizePath();
                        this.nbiOutlinePathList.add(recognizePath);
                    }
                    recognizePath.addPoint(new RecognizePoint(f4, f5, currentTimeMillis));
                }
                this.nbiOutlinePathList.add(recognizePath);
                NBICallback nBICallback = this.callback.get();
                if (HWRUtil.isNotEmpty(nBICallback)) {
                    nBICallback.onProgress(i, i2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean setParameters(NBIParameter nBIParameter) {
        if (!isValidate()) {
            return false;
        }
        int[] iArr = {0, nBIParameter.getContinuity(), 1, nBIParameter.getCursive(), 2, nBIParameter.getLightBrush(), 3, nBIParameter.getWidth(), 4, nBIParameter.getBrushTexture(), 5, nBIParameter.getFeiBai(), 6, nBIParameter.getYiYang(), 7, nBIParameter.getSmooth(), 8, 3, 9, 0};
        boolean parameters = this.mNBIEngine.setParameters(iArr);
        LogUtil.m57657w(TAG, "setParameters result: " + parameters + ",para=" + Arrays.toString(iArr));
        return parameters;
    }

    public void start(final Context context, final String str, final NBIParameter nBIParameter, final NBICallback nBICallback) {
        this.callback = new WeakReference<>(nBICallback);
        new Thread() { // from class: com.sunia.nbiv2.sdk.NBIEngineManager.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    if (!NBIEngineManager.this.mNBIEngine.start(context, str)) {
                        throw new Exception(NBIEngineManager.this.mNBIEngine.getErrorInfo());
                    }
                    boolean callback = NBIEngineManager.this.mNBIEngine.setCallback(NBIEngineManager.this);
                    LogUtil.m57653d(NBIEngineManager.TAG, "setCallback result: " + callback);
                    if (!callback) {
                        throw new Exception(NBIEngineManager.this.mNBIEngine.getErrorInfo());
                    }
                    if (!NBIEngineManager.this.setParameters(nBIParameter)) {
                        throw new Exception(NBIEngineManager.this.mNBIEngine.getErrorInfo());
                    }
                    NBIEngineManager.this.nbiSetOutlineOutput(false);
                    nBICallback.onLoad();
                } catch (Exception e) {
                    LogUtil.m57655e(NBIEngineManager.TAG, e);
                    if (HWRUtil.isNotEmpty(NBIEngineManager.this.callback) && HWRUtil.isNotEmpty(NBIEngineManager.this.callback.get())) {
                        ((NBICallback) NBIEngineManager.this.callback.get()).onError(e);
                    }
                }
            }
        }.start();
    }

    public void stop() {
        if (isValidate()) {
            this.mNBIEngine.stopBeautify();
        }
    }

    public void doBeautifyTransform(NAIResult nAIResult, long j) {
        if (isValidate()) {
            stop();
            clearPoints();
            LogUtil.m57653d(TAG, "nai3,doBeautifyTransform start");
            this.naiResult = nAIResult;
            LogUtil.m57653d(TAG, "nai3,doBeautifyTransform end, result: " + this.mNBIEngine.doBeautifyTransform(nAIResult, 1L, j));
        }
    }
}
