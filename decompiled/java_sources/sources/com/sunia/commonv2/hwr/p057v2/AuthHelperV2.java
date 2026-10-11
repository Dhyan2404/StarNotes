package com.sunia.commonv2.hwr.p057v2;

import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.authlib.bean.DeviceIdType;
import com.sunia.authlib.bean.URLType;
import com.sunia.authlib.bean.VerifyData;
import com.sunia.authlib.interfaces.OnAuthorResultCallback;
import com.sunia.authlib.managers.AuthManager;
import com.sunia.commonv2.auth.HWRDeviceIdType;
import com.sunia.commonv2.auth.HWRURLType;
import com.sunia.commonv2.callback.IHWRAuthorResultCallback;
import com.sunia.commonv2.global.HWREngineVariable;
import com.sunia.commonv2.module.CommonModule;
import com.sunia.commonv2.module.ICommonModule;
import com.sunia.commonv2.util.HWRUtil;
import com.sunia.commonv2.util.SignaturesUtil;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes10.dex */
class AuthHelperV2 {
    private static final String TAG = "AuthHelperV2";

    public static void authorize(final IHWRAuthorResultCallback iHWRAuthorResultCallback) {
        if (HWREngineVariable.sEngineVersion.isV52()) {
            iHWRAuthorResultCallback.onCallback(0, "manufacturer authentication", "");
            return;
        }
        if (noAuthAAR()) {
            new File(CommonModule.getCommonModule().getAuthorizeFile()).delete();
            iHWRAuthorResultCallback.onCallback(0, "manufacturer authentication", CommonModule.getCommonModule().getAuthorizeFile());
            return;
        }
        VerifyData verifyData = getVerifyData();
        if (HWREngineVariable.sDebugMode) {
            LogUtil.m57653d(TAG, "授权信息verifyData=" + verifyData.getAppid());
        }
        final boolean isWaitForAuth = isWaitForAuth(verifyData);
        final List synchronizedList = Collections.synchronizedList(new ArrayList());
        AuthManager.getInstance().authorize(CommonModule.getCommonModule().getApplication(), verifyData, new OnAuthorResultCallback() { // from class: com.sunia.commonv2.hwr.v2.AuthHelperV2.1
            @Override // com.sunia.authlib.interfaces.OnAuthorResultCallback
            public void onCallback(final int i, final String str, final String str2) {
                LogUtil.m57653d(AuthHelperV2.TAG, "授权结果i=" + i + ",s=" + str + ",s1=" + str2);
                if (!synchronizedList.isEmpty()) {
                    LogUtil.m57657w(AuthHelperV2.TAG, "收到授权第二次回调，忽略");
                    return;
                }
                synchronizedList.add(Boolean.TRUE);
                if (isWaitForAuth) {
                    new Thread() { // from class: com.sunia.commonv2.hwr.v2.AuthHelperV2.1.1
                        @Override // java.lang.Thread, java.lang.Runnable
                        public void run() {
                            try {
                                Thread.sleep(3000L);
                            } catch (InterruptedException e) {
                                LogUtil.m57655e(AuthHelperV2.TAG, e);
                            }
                            if (HWRUtil.isNotEmpty(iHWRAuthorResultCallback)) {
                                iHWRAuthorResultCallback.onCallback(i, str, str2);
                            } else {
                                LogUtil.m57653d(AuthHelperV2.TAG, "hwrAuthorResultCallback is null");
                            }
                        }
                    }.start();
                } else if (HWRUtil.isNotEmpty(iHWRAuthorResultCallback)) {
                    iHWRAuthorResultCallback.onCallback(i, str, str2);
                } else {
                    LogUtil.m57653d(AuthHelperV2.TAG, "hwrAuthorResultCallback is null");
                }
            }
        });
    }

    public static void authorizeV2(String str, String str2, String str3, HWRURLType hWRURLType, final IHWRAuthorResultCallback iHWRAuthorResultCallback) {
        String str4;
        LogUtil.m57653d(TAG, "authorizeV2");
        VerifyData verifyData = new VerifyData();
        if (HWRUtil.isEmpty(str)) {
            throw new RuntimeException("appId is null");
        }
        if (HWRUtil.isEmpty(str2)) {
            throw new RuntimeException("publicKey is null");
        }
        str4 = "";
        final boolean z = false;
        if (!"com.sunia.hwr.demo".equals(CommonModule.getCommonModule().getApplication().getPackageName())) {
            if (!CommonModule.getCommonModule().getApplication().getPackageName().startsWith("com.onyx")) {
                throw new RuntimeException("packageName not in the whitelist");
            }
            String apkSignatureSHA256 = SignaturesUtil.getApkSignatureSHA256(CommonModule.getCommonModule().getApplication());
            if (!"c54552804534f876822a77290eecee02413ffc9a6d93c9b51b953549e667302f".replace(":", "").equalsIgnoreCase(apkSignatureSHA256)) {
                LogUtil.m57657w(TAG, "SHA256 not in the whitelist,apkSignatureSHA256=" + apkSignatureSHA256);
                throw new RuntimeException("SHA256 not in the whitelist");
            }
            try {
                Class<?> cls = Class.forName("com.onyx.android.sdk.auth.UserConfig");
                Object invoke = cls.getMethod("getUserId", new Class[0]).invoke(cls.getMethod("singleton", new Class[0]).invoke(null, new Object[0]), new Object[0]);
                str4 = HWRUtil.isNotEmpty(invoke) ? invoke.toString() : "";
                LogUtil.m57653d(TAG, "userId:" + invoke);
            } catch (Exception e) {
                LogUtil.m57655e(TAG, e);
            }
            if (HWRUtil.isEmpty(str4)) {
                throw new RuntimeException("userId is empty");
            }
        }
        verifyData.setAppid(str);
        verifyData.setPublicKey(str2);
        if (HWRUtil.isNotEmpty(str3)) {
            verifyData.setOfflineStr(str3);
        }
        verifyData.setSavePath(CommonModule.getCommonModule().getAuthorizeFile(str, str4));
        verifyData.setUrlType(getURLType(hWRURLType));
        AuthManager.getInstance().setEnableLog(getAuthLogEnable(), CommonModule.getCommonModule().getAuthorizeLogDir(), str + "_" + str4 + "_authLog.txt");
        LogUtil.m57653d(TAG, "动态授权appId=" + str + ",userId=" + str4);
        final List synchronizedList = Collections.synchronizedList(new ArrayList());
        AuthManager.getInstance().authorize(CommonModule.getCommonModule().getApplication(), verifyData, new OnAuthorResultCallback() { // from class: com.sunia.commonv2.hwr.v2.AuthHelperV2.2
            @Override // com.sunia.authlib.interfaces.OnAuthorResultCallback
            public void onCallback(final int i, final String str5, final String str6) {
                LogUtil.m57653d(AuthHelperV2.TAG, "授权结果i=" + i + ",s=" + str5 + ",s1=" + str6);
                if (!synchronizedList.isEmpty()) {
                    LogUtil.m57657w(AuthHelperV2.TAG, "收到授权第二次回调，忽略");
                    return;
                }
                synchronizedList.add(Boolean.TRUE);
                if (z) {
                    new Thread() { // from class: com.sunia.commonv2.hwr.v2.AuthHelperV2.2.1
                        @Override // java.lang.Thread, java.lang.Runnable
                        public void run() {
                            try {
                                Thread.sleep(3000L);
                            } catch (InterruptedException e2) {
                                LogUtil.m57655e(AuthHelperV2.TAG, e2);
                            }
                            if (HWRUtil.isNotEmpty(iHWRAuthorResultCallback)) {
                                iHWRAuthorResultCallback.onCallback(i, str5, str6);
                            } else {
                                LogUtil.m57653d(AuthHelperV2.TAG, "hwrAuthorResultCallback is null");
                            }
                        }
                    }.start();
                } else if (HWRUtil.isNotEmpty(iHWRAuthorResultCallback)) {
                    iHWRAuthorResultCallback.onCallback(i, str5, str6);
                } else {
                    LogUtil.m57653d(AuthHelperV2.TAG, "hwrAuthorResultCallback is null");
                }
            }
        });
    }

    private static boolean getAuthLogEnable() {
        ICommonModule commonModule = CommonModule.getCommonModule();
        return commonModule == null || commonModule.getAndroidLogLevel() != 0;
    }

    private static DeviceIdType getDeviceIdType(HWRDeviceIdType hWRDeviceIdType) {
        if (hWRDeviceIdType == HWRDeviceIdType.WLAN_MAC) {
            return DeviceIdType.WLAN_MAC;
        }
        if (hWRDeviceIdType == HWRDeviceIdType.ETH_MAC) {
            return DeviceIdType.ETH_MAC;
        }
        if (hWRDeviceIdType == HWRDeviceIdType.ANDROID_ID) {
            return DeviceIdType.ANDROID_ID;
        }
        if (hWRDeviceIdType == HWRDeviceIdType.SERIAL_NO) {
            return DeviceIdType.SERIAL_NO;
        }
        if (hWRDeviceIdType == HWRDeviceIdType.BOOT_SERIAL_NO) {
            return DeviceIdType.BOOT_SERIAL_NO;
        }
        throw new RuntimeException("请先同步配置DeviceIdType");
    }

    public static URLType getURLType(HWRURLType hWRURLType) {
        for (URLType uRLType : URLType.values()) {
            if (uRLType.getValue() == hWRURLType.getValue()) {
                return uRLType;
            }
        }
        throw new RuntimeException("授权文件URLType有更新，请先同步配置到HWRURLType");
    }

    private static VerifyData getVerifyData() {
        VerifyData verifyData = new VerifyData();
        if (HWRUtil.isEmpty(HWREngineVariable.appId)) {
            throw new RuntimeException("CommonModule.attachBaseContext方法需要先调用");
        }
        if (HWRUtil.isEmpty(HWREngineVariable.publicKey)) {
            throw new RuntimeException("CommonModule.attachBaseContext方法需要先调用");
        }
        verifyData.setAppid(HWREngineVariable.appId);
        verifyData.setPublicKey(HWREngineVariable.publicKey);
        verifyData.setOfflineStr(HWREngineVariable.offlineStr);
        verifyData.setSavePath(CommonModule.getCommonModule().getAuthorizeFile());
        verifyData.setDeviceIdType(getDeviceIdType(HWREngineVariable.deviceIdType));
        verifyData.setUrlType(getURLType(HWREngineVariable.urlType));
        AuthManager.getInstance().setEnableLog(getAuthLogEnable(), CommonModule.getCommonModule().getAuthorizeLogDir(), "authLog.txt");
        return verifyData;
    }

    private static boolean isWaitForAuth(VerifyData verifyData) {
        String str = verifyData.offlineStr;
        if ((str == null || str.trim().isEmpty()) ? false : true) {
            return false;
        }
        File file = new File(verifyData.getSavePath());
        if (!(file.exists() && file.isFile())) {
            return true;
        }
        long length = file.length();
        LogUtil.m57657w(TAG, "authorize file length=" + length);
        return length < 1000;
    }

    private static boolean noAuthAAR() {
        try {
            Class.forName("com.sunia.authlib.bean.URLType");
            return false;
        } catch (ClassNotFoundException unused) {
            LogUtil.m57654e(TAG, "当前没有集成授权aar");
            LogUtil.m57654e(TAG, "当前没有集成授权aar");
            LogUtil.m57654e(TAG, "当前没有集成授权aar");
            return true;
        }
    }
}
