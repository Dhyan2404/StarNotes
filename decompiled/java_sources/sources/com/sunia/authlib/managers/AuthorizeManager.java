package com.sunia.authlib.managers;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import androidx.core.content.ContextCompat;
import com.sunia.authlib.bean.AuthResultInfo;
import com.sunia.authlib.bean.DeviceIdType;
import com.sunia.authlib.bean.VerifyData;
import com.sunia.authlib.interfaces.OnAuthorResultCallback;
import com.sunia.authlib.nativelibs.AuthNativeLib;
import com.sunia.authlib.nativelibs.AuthorizeLib;
import com.sunia.authlib.utils.LogUtils;
import com.sunia.authlib.utils.RandomUtil;
import java.io.File;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes10.dex */
public class AuthorizeManager {
    public static final int APPID_ERROR = -4;
    public static final int CONTEXT_ERROR = 4014;
    public static final int GET_ANDROID_ID_ERROR = 4013;
    public static final int GET_DEVICEID_ERROR = 4010;
    public static final int GET_MAC_ERROR = 4011;
    public static final int INPUT_ERROR = -2;
    public static final int KEY_ERROR = 22;
    private static final int SYNC_END_CODE = 20000;
    private static final int SYNC_START_CODE = 10001;
    private static final String TAG = "AuthorizeManager";
    private static Map<Integer, OnAuthorResultCallback> mCallbackMap = new ConcurrentHashMap();
    private static Map<Integer, ResultCountDownLatch> mCountDownLatchMap = new ConcurrentHashMap();

    /* loaded from: classes10.dex */
    public static class AuthAsyncTask extends AsyncTask<VerifyData, Integer, Integer> {
        int requestCode;
        VerifyData verifyData;

        public AuthAsyncTask(int i) {
            this.requestCode = i;
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            super.onPreExecute();
            LogUtils.m58776e(AuthorizeManager.TAG, "onPreExecute ");
        }

        @Override // android.os.AsyncTask
        public Integer doInBackground(VerifyData... verifyDataArr) {
            LogUtils.m58776e(AuthorizeManager.TAG, "doInBackground len: " + verifyDataArr.length);
            VerifyData verifyData = verifyDataArr[0];
            this.verifyData = verifyData;
            return Integer.valueOf(AuthorizeLib.Authorize(verifyData, verifyData.getDeviceIdType().getValue(), this.requestCode));
        }

        @Override // android.os.AsyncTask
        public void onCancelled(Integer num) {
            super.onCancelled((AuthAsyncTask) num);
            LogUtils.m58776e(AuthorizeManager.TAG, "onCancelled ");
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Integer num) {
            String str;
            super.onPostExecute((AuthAsyncTask) num);
            if (num.intValue() != 0) {
                LogUtils.m58776e(AuthorizeManager.TAG, "onPostExecute res: " + num);
                if (num.intValue() == 4011) {
                    str = "Error:Get Mac failed";
                } else {
                    str = num.intValue() == 4010 ? "Error: Failed to get  deviceid" : "Error:";
                }
                AuthorizeManager.onCallback(num.intValue(), str, "", this.requestCode, TextUtils.isEmpty(this.verifyData.savePath));
            }
        }
    }

    /* loaded from: classes10.dex */
    public static class Instance {
        static AuthorizeManager instance = new AuthorizeManager();

        private Instance() {
        }
    }

    /* loaded from: classes10.dex */
    public static class ResultCountDownLatch extends CountDownLatch {
        public AuthResultInfo authResultInfo;
        public int requestCode;

        public ResultCountDownLatch(int i) {
            super(i);
            this.authResultInfo = null;
        }
    }

    public static AuthorizeManager getInstance() {
        return Instance.instance;
    }

    private boolean isCheckPhoneStatePermission(Context context) {
        try {
            if (ContextCompat.checkSelfPermission(context, "android.permission.READ_PHONE_STATE") == 0) {
                return true;
            }
            LogUtils.m58775e("failed ! no permission 'Manifest.permission.READ_PHONE_STATE'");
            return false;
        } catch (Exception e) {
            LogUtils.m58775e(e.getMessage());
            return false;
        }
    }

    private AuthResultInfo isParamEmpty(Context context, VerifyData verifyData) {
        if (verifyData == null) {
            LogUtils.m58776e(TAG, "authorize: verifyData == null");
            AuthResultInfo authResultInfo = new AuthResultInfo();
            authResultInfo.code = -2;
            authResultInfo.msg = "-2 Error: verifyData == null";
            return authResultInfo;
        }
        DeviceIdType deviceIdType = verifyData.deviceIdType;
        if (deviceIdType == DeviceIdType.ANDROID_ID && context == null) {
            LogUtils.m58776e(TAG, "authorize failed,Error: DeviceIdType is androidId,the Context is not null");
            AuthResultInfo authResultInfo2 = new AuthResultInfo();
            authResultInfo2.code = CONTEXT_ERROR;
            authResultInfo2.msg = "4014 Error:Context is null,msg: DeviceIdType is androidId, the Context is not null.";
            return authResultInfo2;
        }
        if (deviceIdType != DeviceIdType.SERIAL_NO || context != null) {
            return null;
        }
        LogUtils.m58776e(TAG, "authorize failed,Error: DeviceIdType is ServiceNo,the Context is not null");
        AuthResultInfo authResultInfo3 = new AuthResultInfo();
        authResultInfo3.code = CONTEXT_ERROR;
        authResultInfo3.msg = "4014 Error:Context is null,msg: DeviceIdType is ServiceNo, the Context is not null.";
        return authResultInfo3;
    }

    public static void onCallback(int i, String str, String str2, int i2, boolean z) {
        String str3 = TAG;
        LogUtils.m58774d(str3, "onCallback requestCode:" + i2 + " code:" + i + " msg:" + str + " saveFilePath:" + str2);
        if (i2 >= 10001 && i2 <= 20000) {
            if (!mCountDownLatchMap.containsKey(Integer.valueOf(i2))) {
                LogUtils.m58774d(str3, "onCallback. CountDownLatchMap is not containsKey " + i2);
                return;
            }
            LogUtils.m58774d(str3, "onCallback CountDownLatch end.");
            ResultCountDownLatch resultCountDownLatch = mCountDownLatchMap.get(Integer.valueOf(i2));
            if (resultCountDownLatch != null) {
                AuthResultInfo authResultInfo = new AuthResultInfo();
                resultCountDownLatch.authResultInfo = authResultInfo;
                authResultInfo.code = i;
                authResultInfo.msg = str;
                authResultInfo.savePath = str2;
                resultCountDownLatch.countDown();
                return;
            }
            return;
        }
        if (!mCallbackMap.containsKey(Integer.valueOf(i2)) || mCallbackMap.get(Integer.valueOf(i2)) == null) {
            return;
        }
        OnAuthorResultCallback onAuthorResultCallback = mCallbackMap.get(Integer.valueOf(i2));
        Objects.requireNonNull(onAuthorResultCallback);
        onAuthorResultCallback.onCallback(i, str, str2);
        if (z) {
            if (!z) {
                return;
            }
            if (i != -1 && !str.contains("0080") && !str.contains("0090")) {
                return;
            }
        }
        Iterator<Map.Entry<Integer, OnAuthorResultCallback>> it2 = mCallbackMap.entrySet().iterator();
        while (it2.hasNext()) {
            if (it2.next().getKey().intValue() == i2) {
                it2.remove();
            }
        }
    }

    private void setInputErrorCallback(OnAuthorResultCallback onAuthorResultCallback, String str, int i, String str2, String str3) {
        LogUtils.m58776e(TAG, str);
        if (onAuthorResultCallback != null) {
            onAuthorResultCallback.onCallback(i, i + str2, str3);
        }
    }

    public int authorize(Context context, VerifyData verifyData, OnAuthorResultCallback onAuthorResultCallback) {
        int i;
        AuthResultInfo isParamEmpty = isParamEmpty(context, verifyData);
        if (isParamEmpty != null && (i = isParamEmpty.code) != 0) {
            if (onAuthorResultCallback != null) {
                onAuthorResultCallback.onCallback(i, isParamEmpty.msg, "");
            }
            return isParamEmpty.code;
        }
        String str = TAG;
        LogUtils.m58774d(str, "authorize start ");
        String appid = verifyData.getAppid();
        String publicKey = verifyData.getPublicKey();
        String savePath = verifyData.getSavePath();
        if (TextUtils.isEmpty(appid)) {
            setInputErrorCallback(onAuthorResultCallback, "Error:ArgumentException:appid argument is empty", -4, " Error: appid does not exist", "");
            return -4;
        }
        if (TextUtils.isEmpty(publicKey)) {
            setInputErrorCallback(onAuthorResultCallback, "Error:ArgumentException:publicKey argument is empty", 22, " Error: publicKey does not exist", "");
            return 22;
        }
        if (!TextUtils.isEmpty(savePath)) {
            LogUtils.m58774d(str, "authorize  savePath:" + savePath);
            if (new File(savePath).isDirectory()) {
                setInputErrorCallback(onAuthorResultCallback, "ArgumentException:The savePath argument is not a file！", -2, " Error: The savePath argument is not a file", savePath);
                return -2;
            }
            verifyData.setSavePath(savePath);
        }
        int randomNum = RandomUtil.getRandomNum(1, 10000);
        while (mCallbackMap.containsKey(Integer.valueOf(randomNum))) {
            randomNum++;
            if (randomNum > 1000) {
                randomNum = 1;
            }
        }
        mCallbackMap.put(Integer.valueOf(randomNum), onAuthorResultCallback);
        if (context != null) {
            AuthNativeLib.setAppContext(context.getApplicationContext());
        }
        new AuthAsyncTask(randomNum).execute(verifyData);
        return 0;
    }

    public AuthResultInfo authorizeSync(Context context, VerifyData verifyData) {
        AuthResultInfo authResultInfo;
        AuthResultInfo isParamEmpty = isParamEmpty(context, verifyData);
        if (isParamEmpty != null && isParamEmpty.code != 0) {
            return isParamEmpty;
        }
        String str = TAG;
        LogUtils.m58774d(str, "authorizeSync start ");
        String appid = verifyData.getAppid();
        String publicKey = verifyData.getPublicKey();
        String savePath = verifyData.getSavePath();
        if (TextUtils.isEmpty(appid)) {
            LogUtils.m58776e(str, "Error:ArgumentException:appid argument is empty");
            AuthResultInfo authResultInfo2 = new AuthResultInfo();
            authResultInfo2.code = -4;
            authResultInfo2.msg = " Error: appid does not exist";
            return authResultInfo2;
        }
        if (TextUtils.isEmpty(publicKey)) {
            LogUtils.m58776e(str, "Error:ArgumentException:publicKey argument is empty");
            AuthResultInfo authResultInfo3 = new AuthResultInfo();
            authResultInfo3.code = 22;
            authResultInfo3.msg = " Error: publicKey does not exist";
            return authResultInfo3;
        }
        if (!TextUtils.isEmpty(savePath)) {
            LogUtils.m58774d(str, "authorize  savePath:" + savePath);
            if (new File(savePath).isDirectory()) {
                LogUtils.m58776e(str, "ArgumentException:The savePath argument is not a file;");
                AuthResultInfo authResultInfo4 = new AuthResultInfo();
                authResultInfo4.code = -2;
                authResultInfo4.msg = " Error: The savePath argument is not a file";
                authResultInfo4.savePath = savePath;
                return authResultInfo4;
            }
            verifyData.setSavePath(savePath);
        }
        if (context != null) {
            AuthNativeLib.setAppContext(context.getApplicationContext());
        }
        int randomNum = RandomUtil.getRandomNum(10001, 20000);
        while (mCountDownLatchMap.containsKey(Integer.valueOf(randomNum))) {
            randomNum++;
            if (randomNum > 20000) {
                randomNum = 10001;
            }
        }
        ResultCountDownLatch resultCountDownLatch = new ResultCountDownLatch(1);
        mCountDownLatchMap.put(Integer.valueOf(randomNum), resultCountDownLatch);
        String str2 = TAG;
        LogUtils.m58774d(str2, "authorizeSync start requestCode:" + randomNum);
        int Authorize = AuthorizeLib.Authorize(verifyData, verifyData.getDeviceIdType().getValue(), randomNum);
        if (Authorize != 0) {
            LogUtils.m58776e(str2, "authorizeSync.res: " + Authorize);
            String str3 = Authorize == 4011 ? "Error:Get Mac failed" : Authorize == 4010 ? "Error: Failed to get  deviceid" : "Error:";
            authResultInfo = new AuthResultInfo();
            authResultInfo.code = Authorize;
            authResultInfo.msg = str3;
            authResultInfo.savePath = savePath;
        } else {
            try {
                resultCountDownLatch.await();
                authResultInfo = resultCountDownLatch.authResultInfo;
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        }
        Iterator<Map.Entry<Integer, ResultCountDownLatch>> it2 = mCountDownLatchMap.entrySet().iterator();
        while (it2.hasNext()) {
            if (it2.next().getKey().intValue() == randomNum) {
                it2.remove();
            }
        }
        LogUtils.m58774d(TAG, "authorizeSync end ");
        return authResultInfo;
    }

    public void setEnableLog(boolean z) {
        LogUtils.isLog = z;
    }

    private AuthorizeManager() {
    }

    private int isParamEmpty(Context context, VerifyData verifyData, OnAuthorResultCallback onAuthorResultCallback) {
        if (verifyData == null) {
            LogUtils.m58776e(TAG, "authorize: verifyData == null");
            if (onAuthorResultCallback != null) {
                onAuthorResultCallback.onCallback(-2, "-2 Error: verifyData == null", "");
            }
            return -2;
        }
        DeviceIdType deviceIdType = verifyData.deviceIdType;
        if (deviceIdType == DeviceIdType.ANDROID_ID && context == null) {
            LogUtils.m58776e(TAG, "authorize failed,Error: DeviceIdType is androidId,the Context is not null");
            if (onAuthorResultCallback != null) {
                onAuthorResultCallback.onCallback(CONTEXT_ERROR, "4014 Error:Context is null,msg: DeviceIdType is androidId, the Context is not null.", "");
            }
            return CONTEXT_ERROR;
        }
        if (deviceIdType != DeviceIdType.SERIAL_NO || context != null) {
            return 0;
        }
        LogUtils.m58776e(TAG, "authorize failed,Error: DeviceIdType is ServiceNo,the Context is not null");
        if (onAuthorResultCallback != null) {
            onAuthorResultCallback.onCallback(CONTEXT_ERROR, "4014 Error:Context is null,msg: DeviceIdType is ServiceNo, the Context is not null.", "");
        }
        return CONTEXT_ERROR;
    }
}
