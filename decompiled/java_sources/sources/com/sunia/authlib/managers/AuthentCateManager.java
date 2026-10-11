package com.sunia.authlib.managers;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import com.sunia.authlib.bean.VerifyData;
import com.sunia.authlib.interfaces.IAuthenticateCallback;
import com.sunia.authlib.nativelibs.AuthNativeLib;
import com.sunia.authlib.nativelibs.AuthenticateLib;
import java.io.File;

/* loaded from: classes10.dex */
public class AuthentCateManager {
    public static final int ERROE_CONEXT = 26;
    public static final int PARAM_ERROR = -2;
    private static final String TAG = "AuthentCateManager";
    private boolean enableLog;

    /* loaded from: classes10.dex */
    public static class Instance {
        protected static AuthentCateManager instance = new AuthentCateManager();

        private Instance() {
        }
    }

    public static AuthentCateManager getInstance() {
        return Instance.instance;
    }

    public int authenticate(Context context, VerifyData verifyData, @NonNull String str, boolean z, IAuthenticateCallback iAuthenticateCallback) {
        if (this.enableLog) {
            Log.d(TAG, "authenticate isString:" + z);
        }
        if (verifyData == null && TextUtils.isEmpty(str)) {
            if (this.enableLog) {
                Log.e(TAG, "ArgumentException:The certFilePath argument cannot be empty！");
            }
            if (iAuthenticateCallback != null) {
                iAuthenticateCallback.onCallback(-2, -2);
            }
            return -2;
        }
        if (z) {
            if (context == null) {
                if (iAuthenticateCallback != null) {
                    iAuthenticateCallback.onCallback(26, 26);
                }
                return 26;
            }
        } else if (!new File(str).exists()) {
            if (this.enableLog) {
                Log.e(TAG, "cert file is not exist!");
            }
            if (iAuthenticateCallback != null) {
                iAuthenticateCallback.onCallback(-2, -2);
            }
            return -2;
        }
        if (context != null) {
            context = context.getApplicationContext();
        }
        AuthNativeLib.setAppContext(context);
        return AuthenticateLib.Authenticate(verifyData, str, z, iAuthenticateCallback);
    }

    public boolean isEnableLog() {
        return this.enableLog;
    }

    public void setEnableLog(boolean z) {
        this.enableLog = z;
    }

    private AuthentCateManager() {
    }
}
