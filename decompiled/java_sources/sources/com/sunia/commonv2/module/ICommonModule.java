package com.sunia.commonv2.module;

import android.app.Application;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.sunia.commonv2.auth.HWRDeviceIdType;
import com.sunia.commonv2.auth.HWRURLType;
import com.sunia.commonv2.global.HWREngineVariable;
import com.sunia.hwrv2.sdk.BuildConfig;
import java.io.File;

/* loaded from: classes10.dex */
public interface ICommonModule {
    public static final String TAG = "ICommonModule";

    default boolean autoDeleteCacheFile() {
        return true;
    }

    default int getAndroidLogLevel() {
        return 0;
    }

    String getAppId();

    default String getAppLogDir() {
        File file = new File(getLogBasePath(), "app");
        file.mkdir();
        return file.getPath();
    }

    default Application getApplication() {
        return HWREngineVariable.sHWRApplication;
    }

    default String getAuthorizeFile() {
        File file = new File(getExternalCacheDir().getPath(), "authorize");
        file.mkdir();
        return new File(file.getPath(), "authorize.txt").getPath();
    }

    default String getAuthorizeLogDir() {
        File file = new File(getLogBasePath(), "authorize");
        file.mkdir();
        return file.getPath();
    }

    default String getCacheAssets() {
        File file = new File(getConfigCustomPath(), "assets");
        file.mkdir();
        return file.getPath();
    }

    default String getCameraPath() {
        File file = new File(getConfigCustomPath(), "camera");
        file.mkdir();
        return file.getPath() + File.separator;
    }

    default String getConfigCustomPath() {
        File file = new File(getExternalCacheDir().getPath(), FunctionKey.HWR);
        file.mkdir();
        return file.getPath() + File.separator;
    }

    default String getConfigExportGraphmlPath() {
        File file = new File(getConfigCustomPath(), "graphml");
        file.mkdir();
        return file.getPath() + File.separator;
    }

    default String getConfigIncRecPath() {
        File file = new File(getConfigCustomPath(), "incremental_recognition");
        file.mkdir();
        return file.getPath() + File.separator;
    }

    default HWRDeviceIdType getDeviceIdType() {
        return HWRDeviceIdType.ANDROID_ID;
    }

    default String getEngineLogDir() {
        File file = new File(getLogBasePath(), "engine");
        file.mkdir();
        return file.getPath();
    }

    default String getErrorReplace() {
        File file = new File(getConfigCustomPath(), "error_replace");
        file.mkdir();
        return file.getPath() + File.separator;
    }

    default String getExportPintPath() {
        File file = new File(getConfigCustomPath(), "tool_output");
        file.mkdir();
        return file.getPath() + File.separator;
    }

    default File getExternalCacheDir() {
        return getApplication().getExternalCacheDir();
    }

    default String getLXCDir() {
        File file = new File(getConfigCustomPath(), "lxc");
        file.mkdir();
        return file.getPath();
    }

    default String getLogBasePath() {
        File file = new File(getExternalCacheDir().getPath(), "log");
        file.mkdir();
        return file.getPath();
    }

    default String getOffline() {
        return "";
    }

    String getPublicKey();

    default String getRAGDir() {
        File file = new File(getExternalCacheDir(), "rag");
        file.mkdir();
        return file.getPath();
    }

    default String getTempPath() {
        File file = new File(getExternalCacheDir().getPath(), "temp");
        file.mkdir();
        return file.getPath() + File.separator;
    }

    default String getTestVerifyDataFile() {
        File file = new File(getExternalCacheDir().getPath(), "authorize");
        file.mkdir();
        return new File(file.getPath(), "verifyDataV2.json").getPath();
    }

    default HWRURLType getUrlType() {
        return HWRURLType.PROD;
    }

    default boolean isDebug() {
        try {
            return BuildConfig.class.getField("BUILD_TYPE").get(null).equals("debug");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    default String getAuthorizeFile(String str, String str2) {
        File file = new File(getExternalCacheDir().getPath(), "authorize");
        file.mkdir();
        return new File(file.getPath(), str + "_" + str2 + "_authorize.txt").getPath();
    }
}
