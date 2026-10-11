package com.sunia.commonv2.module;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.google.gson.Gson;
import com.sunia.HTREnginev2.sdk.Engine;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.auth.HWRDeviceIdType;
import com.sunia.commonv2.auth.HWRURLType;
import com.sunia.commonv2.auth.HWRVerifyData;
import com.sunia.commonv2.enum2.EEngineVersion;
import com.sunia.commonv2.global.HWREngineVariable;
import com.sunia.commonv2.util.HWRCommonUtil;
import com.sunia.commonv2.util.HWRUtil;
import com.sunia.hwrv2.sdk.BuildConfig;
import com.sunia.hwrv2.sdk.C14861R;
import java.io.File;

/* loaded from: classes10.dex */
public class CommonModule {
    private static String TAG = "CommonModule";
    private static ICommonModule sCommonModule;

    public static void attachBaseContext(Context context, ICommonModule iCommonModule) {
        Application application = (Application) HWRCommonUtil.getApplicationContent(context);
        HWREngineVariable.sHWRApplication = application;
        HWREngineVariable.sIsHWRDemo = HWRUtil.isHWRDemo(application);
        sCommonModule = iCommonModule;
        boolean isDebug = iCommonModule.isDebug();
        HWREngineVariable.sDebugMode = isDebug;
        HWREngineVariable.sReleaseMode = !isDebug;
        HWREngineVariable.sMainHandler = new Handler(HWREngineVariable.sHWRApplication.getMainLooper());
        try {
            String obj = BuildConfig.class.getField("versionName").get(null).toString();
            String obj2 = BuildConfig.class.getField("gitBranch").get(null).toString();
            if (obj.startsWith("5.2")) {
                HWREngineVariable.sEngineVersion = EEngineVersion.v521;
                if (obj.startsWith("5.2.2")) {
                    HWREngineVariable.sEngineVersion = EEngineVersion.v522;
                }
                if (obj.startsWith("5.2.3")) {
                    HWREngineVariable.sEngineVersion = EEngineVersion.v523;
                }
                if (obj.startsWith("5.2.4")) {
                    HWREngineVariable.sEngineVersion = EEngineVersion.v524;
                }
            } else if (obj.startsWith("5.3")) {
                HWREngineVariable.sEngineVersion = EEngineVersion.v531;
            } else if (obj.startsWith("5.4")) {
                HWREngineVariable.sEngineVersion = EEngineVersion.v541;
            } else {
                if (!obj.startsWith("5.5")) {
                    throw new RuntimeException(getResString(context, "hwr_sdk_configure_engine_version_tip"));
                }
                HWREngineVariable.sEngineVersion = EEngineVersion.v551;
            }
            HWREngineVariable.sEngineVersion.setVersionName(obj);
            HWREngineVariable.sEngineVersion.setGitBranch(obj2);
            if (!HWREngineVariable.sDemoPackageNameList.contains(HWREngineVariable.sHWRApplication.getPackageName())) {
                String appId = iCommonModule.getAppId();
                String publicKey = iCommonModule.getPublicKey();
                if ("".equals(appId)) {
                    throw new RuntimeException(getResString(context, "hwr_sdk_configure_app_id_tip"));
                }
                if ("".equals(publicKey)) {
                    throw new RuntimeException(getResString(context, "hwr_sdk_configure_public_key_tip"));
                }
                if ("202211332095163494".equals(appId)) {
                    throw new RuntimeException(getResString(context, "hwr_sdk_configure_app_id_tip"));
                }
                if ("MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsku0DUXVEipJ3svGNCrUYT0WniyiHWCWkfosWngEruPw5tOfiZuOLF/ySxe7roWwWROZax5OD6O/X0TwDW+o8nHNNLcdDY3gJp5Z9ZSfAmIq4OuAKoNM7JvJhRTP5NyuX9P9M+BU7o/zfdecbr0wfmY69vrC9BOZ6xBPTih7E2yBNfAkMpcub4ZcxhJdIqQGFC5Qen1bRJiLf4Mo4TlkxP9oXcS53CvFJAGqJ7msgWwoSXAM1OJgtbgE2KhwrCpbwlAqC/F8k4gpFratvOgnqwuqjBur9A0o9eGlxupxL7GzaPJz234RgiaHRdjiG8AKKGAqUVXwQKr1tadyVrdQEwIDAQAB".equals(publicKey)) {
                    throw new RuntimeException(getResString(context, "hwr_sdk_configure_public_key_tip"));
                }
            }
            LogUtil.setDebugLevel(iCommonModule.getAndroidLogLevel());
            LogUtil.setFilePath(iCommonModule.getAppLogDir());
            HWREngineVariable.sAndroidId = HWRUtil.getAndroidID(HWREngineVariable.sHWRApplication);
            loadAuthInfo(iCommonModule.getAppId(), iCommonModule.getPublicKey(), iCommonModule.getOffline(), iCommonModule.getUrlType(), iCommonModule.getDeviceIdType());
            loadTestInfo();
            CommonHelper.deleteCachedFile(sCommonModule);
            printSDKInfo(context, iCommonModule);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static ICommonModule getCommonModule() {
        ICommonModule iCommonModule = sCommonModule;
        if (iCommonModule != null) {
            return iCommonModule;
        }
        throw new RuntimeException("please call CommonModule.attachBaseContext first");
    }

    private static String getResString(Context context, String str) {
        try {
            return context.getString(C14861R.string.class.getField(str).getInt(null));
        } catch (Exception e) {
            e.printStackTrace();
            return str + " not found";
        }
    }

    public static void loadAuthInfo(String str, String str2, String str3, HWRURLType hWRURLType, HWRDeviceIdType hWRDeviceIdType) {
        HWREngineVariable.appId = str;
        HWREngineVariable.publicKey = str2;
        HWREngineVariable.offlineStr = str3;
        HWREngineVariable.urlType = hWRURLType;
        HWREngineVariable.deviceIdType = hWRDeviceIdType;
        LogUtil.m57653d(TAG, "loadAuthInfo,appId=" + str + ",publicKey=" + str2 + ",offlineStr=" + str3 + ",urlType=" + hWRURLType + ",deviceIdType=" + hWRDeviceIdType);
    }

    private static void loadTestInfo() {
        try {
            LogUtil.m57653d(TAG, "loadTestInfo1");
            File file = new File(getCommonModule().getTestVerifyDataFile());
            if (!file.exists()) {
                LogUtil.m57653d(TAG, "loadTestInfo2");
                return;
            }
            if (file.isDirectory()) {
                LogUtil.m57653d(TAG, "loadTestInfo3");
                return;
            }
            HWRVerifyData hWRVerifyData = (HWRVerifyData) new Gson().fromJson(HWRCommonUtil.readFile2String(file), HWRVerifyData.class);
            LogUtil.m57653d(TAG, "loadTestInfo4");
            String appid = hWRVerifyData.getAppid();
            String publicKey = hWRVerifyData.getPublicKey();
            String offlineStr = hWRVerifyData.getOfflineStr();
            int i = hWRVerifyData.urlType;
            HWRDeviceIdType hWRDeviceIdType = hWRVerifyData.deviceIdType;
            LogUtil.m57653d(TAG, "loadTestInfo5");
            loadAuthInfo(appid, publicKey, offlineStr, HWRURLType.fromValue(i), hWRDeviceIdType);
        } catch (Exception e) {
            Log.e(TAG, Log.getStackTraceString(e));
        }
    }

    private static void printSDKInfo(Context context, ICommonModule iCommonModule) {
        try {
            LogUtil.m57657w(TAG, ">>>>>>>>>>>>");
            LogUtil.m57657w(TAG, "androidid=" + HWREngineVariable.sAndroidId);
            LogUtil.m57657w(TAG, "commonModule.isDebug()=" + iCommonModule.isDebug());
            LogUtil.m57657w(TAG, "HWREngineVariable.sEngineVersion=" + HWREngineVariable.sEngineVersion);
            String engineVersionV2 = Engine.getEngineVersionV2();
            LogUtil.m57654e(TAG, "engineVersion=" + engineVersionV2);
            LogUtil.m57657w(TAG, "appId=" + iCommonModule.getAppId());
            LogUtil.m57657w(TAG, "packageName=" + HWREngineVariable.sHWRApplication.getPackageName());
            String readAssetsFileToString = HWRUtil.readAssetsFileToString(HWREngineVariable.sHWRApplication.getAssets().open("hwr/sdk/BuildInfo.txt"));
            LogUtil.m57654e(TAG, "sdkBuildInfo=" + readAssetsFileToString);
            String readAssetsFileToString2 = HWRUtil.readAssetsFileToString(HWREngineVariable.sHWRApplication.getAssets().open("hwr/engine/BuildInfo.txt"));
            LogUtil.m57657w(TAG, "engineBuildInfo=" + readAssetsFileToString2);
            LogUtil.m57657w(TAG, "<<<<<<<<<<<<");
        } catch (Throwable th) {
            LogUtil.m57657w(TAG, "printSDKInfo Exception=" + LogUtil.getStackTraceString(th));
        }
    }

    public static void saveAuth2File() {
        HWRVerifyData hWRVerifyData = new HWRVerifyData();
        hWRVerifyData.appid = HWREngineVariable.appId;
        hWRVerifyData.publicKey = HWREngineVariable.publicKey;
        hWRVerifyData.offlineStr = HWREngineVariable.offlineStr;
        hWRVerifyData.urlType = HWREngineVariable.urlType.getValue();
        hWRVerifyData.deviceIdType = HWREngineVariable.deviceIdType;
        if (!HWRCommonUtil.writeFileFromString(new File(getCommonModule().getTestVerifyDataFile()), new Gson().toJson(hWRVerifyData))) {
            LogUtil.m57657w(TAG, "saveAuth2File failed");
        }
        new File(getCommonModule().getAuthorizeFile()).delete();
    }
}
