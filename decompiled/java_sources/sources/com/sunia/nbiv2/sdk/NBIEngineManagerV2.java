package com.sunia.nbiv2.sdk;

import android.content.Context;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.bean.NAIResult;
import com.sunia.commonv2.util.HWRCommonUtil;
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
public class NBIEngineManagerV2 implements LocalNBIListener {
    private static final String TAG = "NBIEngineManagerV2";
    private static NBIEngineManagerV2 instance;
    private WeakReference<NBICallbackV2> callback;
    private NBIEngine mNBIEngine;
    private NAIResult naiResult;
    private Map<Long, List<NAIPath>> unsupportedRecognizePathMap = new HashMap();
    private List<NBIAxisPath> nbiAxisPathList = new ArrayList();
    private List<NBIAxisPath> nbiOutlinePathList = new ArrayList();
    private boolean showLogDetails = false;

    private NBIEngineManagerV2() {
        LogUtil.m57653d(TAG, "NBIEngineManagerV2 init");
        this.mNBIEngine = NBIEngine.createInstance();
    }

    public static NBIEngineManagerV2 getInstance() {
        if (instance == null) {
            synchronized (NBIEngineManagerV2.class) {
                if (instance == null) {
                    instance = new NBIEngineManagerV2();
                }
            }
        }
        return instance;
    }

    private void onDrawNBIPath(long j) {
        if (HWRUtil.isEmpty(this.callback)) {
            LogUtil.m57657w(TAG, "onDrawNBIPath callback is empty");
            return;
        }
        NBICallbackV2 nBICallbackV2 = this.callback.get();
        if (HWRUtil.isEmpty(nBICallbackV2)) {
            LogUtil.m57657w(TAG, "onDrawNBIPath nbiCallback is empty");
        } else {
            nBICallbackV2.onDrawNBIPath(j, this.nbiAxisPathList, this.nbiOutlinePathList);
        }
    }

    private void resetData() {
        this.nbiAxisPathList.clear();
        this.nbiOutlinePathList.clear();
    }

    public void clearPoints() {
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
        String[] strArr;
        int i5;
        synchronized (this) {
            try {
                try {
                    if (i3 == NBIStatus.HANDING.getStatus()) {
                        int i6 = 0;
                        for (byte b : bArr) {
                            if (b == 1) {
                                i6++;
                            }
                        }
                        if (!HWRCommonUtil.isWhileList() && !this.showLogDetails) {
                            LogUtil.m57653d(TAG, "nai4,onNBICallback status: " + i3 + " index:" + i + ",total=" + i2 + ",param=" + j2 + ",axish.length=" + bArr.length + ",outlineh.length=" + bArr2.length + ",nbi path size=" + i6);
                        }
                        LogUtil.m57653d(TAG, "nai4,onNBICallback status: " + i3 + " index:" + i + ",total=" + i2 + ",param=" + j2 + ",axish.length=" + bArr.length + ",outlineh.length=" + bArr2.length + ",nbi path size=" + i6 + ",ext=" + str);
                    } else {
                        LogUtil.m57653d(TAG, "nai4,onNBICallback status: " + i3 + " index:" + i + ",total=" + i2 + ",param=" + j2 + ",axish.length=" + bArr.length + ",outlineh.length=" + bArr2.length);
                    }
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
                        HWRUtil.filterEmptyPointsByNBIAxisPath(this.nbiOutlinePathList);
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
                boolean z = false;
                for (String str2 : str.split(AndroidTreeView.f47214k)) {
                    if (!HWRUtil.isEmpty(str2) && str2.startsWith("valid=")) {
                        z = "1".equals(str2.split("valid=")[1]);
                    }
                }
                int length = bArr.length;
                long currentTimeMillis = System.currentTimeMillis();
                int i7 = 0;
                NBIAxisPath nBIAxisPath = null;
                while (i7 < length) {
                    float f = (float) dArr3[i7];
                    float f2 = (float) dArr[i7];
                    float f3 = (float) dArr2[i7];
                    currentTimeMillis++;
                    if (bArr[i7] == 1) {
                        nBIAxisPath = new NBIAxisPath();
                        nBIAxisPath.setExt(str);
                        String[] split = str.split(AndroidTreeView.f47214k);
                        int length2 = split.length;
                        int i8 = 0;
                        while (i8 < length2) {
                            int i9 = length;
                            String str3 = split[i8];
                            if (HWRUtil.isEmpty(str3)) {
                                strArr = split;
                            } else {
                                strArr = split;
                                if (str3.startsWith("relationship=")) {
                                    String[] split2 = str3.split("relationship=");
                                    i5 = length2;
                                    if (split2.length >= 2) {
                                        String[] split3 = split2[1].split(",");
                                        int length3 = split3.length;
                                        int i10 = 0;
                                        while (i10 < length3) {
                                            String[] strArr2 = split3;
                                            int i11 = length3;
                                            Long l = this.naiResult.getHWRStrokeIdAndHWEIdMap().get(Integer.valueOf(Integer.parseInt(split3[i10])));
                                            if (HWRUtil.isNotEmpty(l)) {
                                                nBIAxisPath.getAddIdListLong().add(l);
                                            }
                                            i10++;
                                            split3 = strArr2;
                                            length3 = i11;
                                        }
                                    } else {
                                        LogUtil.m57653d(TAG, "Please note that you can't find the strokes id，ext=" + str);
                                    }
                                    i8++;
                                    length = i9;
                                    split = strArr;
                                    length2 = i5;
                                }
                            }
                            i5 = length2;
                            i8++;
                            length = i9;
                            split = strArr;
                            length2 = i5;
                        }
                        i4 = length;
                        nBIAxisPath.setValidate(z);
                        this.nbiAxisPathList.add(nBIAxisPath);
                    } else {
                        i4 = length;
                    }
                    nBIAxisPath.getNbiAxisPointList().add(new NBIAxisPoint(f2, f3, f, currentTimeMillis));
                    i7++;
                    length = i4;
                }
                int length4 = bArr2.length;
                NBIAxisPath nBIAxisPath2 = null;
                for (int i12 = 0; i12 < length4; i12++) {
                    float f4 = (float) dArr4[i12];
                    float f5 = (float) dArr5[i12];
                    currentTimeMillis++;
                    if (bArr2[i12] == 1) {
                        nBIAxisPath2 = new NBIAxisPath();
                        nBIAxisPath2.setExt(str);
                        nBIAxisPath2.setValidate(z);
                        this.nbiOutlinePathList.add(nBIAxisPath2);
                    }
                    nBIAxisPath2.getNbiAxisPointList().add(new NBIAxisPoint(f4, f5, 1.0f, currentTimeMillis));
                }
                NBICallbackV2 nBICallbackV2 = this.callback.get();
                if (HWRUtil.isNotEmpty(nBICallbackV2)) {
                    nBICallbackV2.onProgress(i, i2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean setParameters(NBIParameter nBIParameter) {
        return setParameters(4, nBIParameter);
    }

    public void showLogDetails() {
        this.showLogDetails = true;
    }

    public void start(Context context, String str, NBIParameter nBIParameter, NBICallbackV2 nBICallbackV2) {
        start(context, str, 4, nBIParameter, nBICallbackV2);
    }

    public void stop() {
        if (isValidate()) {
            this.mNBIEngine.stopBeautify();
        }
    }

    public boolean setParameters(int i, NBIParameter nBIParameter) {
        if (!isValidate()) {
            return false;
        }
        int[] iArr = {0, nBIParameter.getContinuity(), 1, nBIParameter.getCursive(), 2, nBIParameter.getLightBrush(), 3, nBIParameter.getWidth(), 4, nBIParameter.getBrushTexture(), 5, nBIParameter.getFeiBai(), 6, nBIParameter.getYiYang(), 7, nBIParameter.getSmooth(), 8, i - 1, 9, nBIParameter.getAutoSmooth()};
        boolean parameters = this.mNBIEngine.setParameters(iArr);
        LogUtil.m57657w(TAG, "setParameters result: " + parameters + ",para=" + Arrays.toString(iArr));
        return parameters;
    }

    public void start(final Context context, final String str, final int i, final NBIParameter nBIParameter, final NBICallbackV2 nBICallbackV2) {
        this.callback = new WeakReference<>(nBICallbackV2);
        new Thread() { // from class: com.sunia.nbiv2.sdk.NBIEngineManagerV2.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    if (!NBIEngineManagerV2.this.mNBIEngine.start(context, str)) {
                        throw new Exception(NBIEngineManagerV2.this.mNBIEngine.getErrorInfo());
                    }
                    boolean callback = NBIEngineManagerV2.this.mNBIEngine.setCallback(NBIEngineManagerV2.this);
                    LogUtil.m57653d(NBIEngineManagerV2.TAG, "setCallback result: " + callback);
                    if (!callback) {
                        throw new Exception(NBIEngineManagerV2.this.mNBIEngine.getErrorInfo());
                    }
                    if (!NBIEngineManagerV2.this.setParameters(i, nBIParameter)) {
                        throw new Exception(NBIEngineManagerV2.this.mNBIEngine.getErrorInfo());
                    }
                    NBIEngineManagerV2.this.nbiSetOutlineOutput(false);
                    nBICallbackV2.onLoad();
                } catch (Exception e) {
                    LogUtil.m57655e(NBIEngineManagerV2.TAG, e);
                    if (HWRUtil.isNotEmpty(NBIEngineManagerV2.this.callback) && HWRUtil.isNotEmpty(NBIEngineManagerV2.this.callback.get())) {
                        ((NBICallbackV2) NBIEngineManagerV2.this.callback.get()).onError(e);
                    }
                }
            }
        }.start();
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
