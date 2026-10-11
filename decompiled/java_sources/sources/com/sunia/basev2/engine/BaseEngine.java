package com.sunia.basev2.engine;

import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.callback.INoProguard;
import com.sunia.commonv2.util.HWRUtil;

/* loaded from: classes10.dex */
public class BaseEngine implements INoProguard {
    private static final String TAG = "BaseEngine";

    public static boolean loadNativeLibrary(String... strArr) {
        synchronized (BaseEngine.class) {
            try {
                if (HWRUtil.isEmpty(strArr)) {
                    LogUtil.m57657w(TAG, "LIB_NAMES is empty");
                    return false;
                }
                for (String str : strArr) {
                    System.loadLibrary(str);
                }
                return true;
            } catch (Throwable unused) {
                LogUtil.m57657w(TAG, "loadLibrary error, not found");
                return false;
            }
        }
    }
}
