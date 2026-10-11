package com.sunia.authlib.managers;

import android.content.Context;
import androidx.annotation.NonNull;
import com.sunia.authlib.bean.AuthResultInfo;
import com.sunia.authlib.bean.VerifyData;
import com.sunia.authlib.interfaces.IAuthenticateCallback;
import com.sunia.authlib.interfaces.OnAuthorResultCallback;
import com.sunia.authlib.nativelibs.AuthNativeLib;
import com.sunia.authlib.utils.LogUtils;
import java.io.File;

/* loaded from: classes10.dex */
public class AuthManager {
    public static final String AAR_VERSION = "7.5.6.033";
    public static final int INPUT_ERROR = -2;
    private static final String TAG = "AuthManager";
    private boolean enableLog;
    private String lastLicenseFlag;

    /* loaded from: classes10.dex */
    public static class Instance {
        static AuthManager instance = new AuthManager();

        private Instance() {
        }
    }

    static {
        System.loadLibrary("authlib");
        VerifyData.init();
    }

    public static AuthManager getInstance() {
        return Instance.instance;
    }

    private void setLog(boolean z, String str, String str2) {
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        AuthNativeLib.setEnableLog(z, new File(str, str2).getAbsolutePath());
    }

    public int authenticate(Context context, VerifyData verifyData, @NonNull String str, IAuthenticateCallback iAuthenticateCallback) {
        return authenticate(context, verifyData, str, false, iAuthenticateCallback);
    }

    public int authorize(Context context, VerifyData verifyData, OnAuthorResultCallback onAuthorResultCallback) {
        String str = this.lastLicenseFlag;
        if (str != null) {
            verifyData.setLastLicenseFlag(str);
        }
        return AuthorizeManager.getInstance().authorize(context, verifyData, onAuthorResultCallback);
    }

    public AuthResultInfo authorizeSync(Context context, VerifyData verifyData) {
        String str = this.lastLicenseFlag;
        if (str != null) {
            verifyData.setLastLicenseFlag(str);
        }
        return AuthorizeManager.getInstance().authorizeSync(context, verifyData);
    }

    public String getAARVersion() {
        return "V7.5.6.033-T33bc9d6e-20250903-dev";
    }

    public String getErrorMsg(int i) {
        return i == -2 ? "Parameter Error" : AuthNativeLib.getErrorMsg(i);
    }

    public String getLastLicenseFlag() {
        return this.lastLicenseFlag;
    }

    public String getSDKVersion() {
        return AuthNativeLib.getSdkVersion();
    }

    public String getSerialNo(Context context) {
        if (context == null) {
            LogUtils.m58775e("getSerialNo failed ! context == null ");
            return null;
        }
        AuthNativeLib.setAppContext(context.getApplicationContext());
        return AuthNativeLib.getSerialNo();
    }

    public String getUserId(Context context) {
        AuthNativeLib.setAppContext(context.getApplicationContext());
        return AuthNativeLib.getUserId();
    }

    public void release() {
        AuthNativeLib.release();
    }

    public void setEnableLog(boolean z, String str, String str2) {
        this.enableLog = z;
        LogUtils.isLog = z;
        AuthorizeManager.getInstance().setEnableLog(this.enableLog);
        AuthentCateManager.getInstance().setEnableLog(this.enableLog);
        setLog(this.enableLog, str, str2);
    }

    public void setLastLicenseFlag(String str) {
        this.lastLicenseFlag = str;
    }

    private AuthManager() {
    }

    public int authenticate(Context context, VerifyData verifyData, @NonNull String str, boolean z, IAuthenticateCallback iAuthenticateCallback) {
        return AuthentCateManager.getInstance().authenticate(context, verifyData, str, z, iAuthenticateCallback);
    }
}
