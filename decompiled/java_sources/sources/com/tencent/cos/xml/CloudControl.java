package com.tencent.cos.xml;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.tencent.cos.xml.CloudControl;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* loaded from: classes10.dex */
public class CloudControl {
    private static final String TAG = "CloudControl";
    private static volatile CloudControl instance;
    public final ThreadPoolExecutor CLOUD_CONTROL_EXECUTOR;
    private final Handler handler;
    private final String BEACON_CLOUD_URL = "https://cos-android-sdk-doc-1253960454.cos.ap-shanghai.myqcloud.com/beacon_cc/android/";
    private final String BEACON_CLOUD_APPKEY = "appKey";

    /* loaded from: classes10.dex */
    public interface BeaconCloudCallback {
        void onError(Exception exc);

        void onSuccess(String str);
    }

    private CloudControl() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 5L, TimeUnit.SECONDS, new LinkedBlockingQueue(Integer.MAX_VALUE));
        this.CLOUD_CONTROL_EXECUTOR = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.handler = new Handler(Looper.getMainLooper());
    }

    public static CloudControl getInstance() {
        if (instance == null) {
            synchronized (CloudControl.class) {
                if (instance == null) {
                    instance = new CloudControl();
                }
            }
        }
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getBeaconAppKey$0(BeaconCloudCallback beaconCloudCallback, int i) {
        beaconCloudCallback.onError(new IllegalStateException("getBeaconAppKey failure:" + i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getBeaconAppKey$3(String str, final BeaconCloudCallback beaconCloudCallback) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("https://cos-android-sdk-doc-1253960454.cos.ap-shanghai.myqcloud.com/beacon_cc/android/" + str).openConnection();
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.connect();
            final int responseCode = httpURLConnection.getResponseCode();
            if (responseCode < 200 || responseCode >= 300) {
                this.handler.post(new Runnable() { // from class: com.tencent.cos.xml.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        CloudControl.lambda$getBeaconAppKey$0(CloudControl.BeaconCloudCallback.this, responseCode);
                    }
                });
                return;
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    final String string = new JSONObject(sb.toString()).getString("appKey");
                    Log.d(TAG, "getBeaconAppKey onSuccess:" + string);
                    this.handler.post(new Runnable() { // from class: com.tencent.cos.xml.d
                        @Override // java.lang.Runnable
                        public final void run() {
                            CloudControl.BeaconCloudCallback.this.onSuccess(string);
                        }
                    });
                    return;
                }
                sb.append(readLine);
            }
        } catch (Exception e) {
            this.handler.post(new Runnable() { // from class: com.tencent.cos.xml.c
                @Override // java.lang.Runnable
                public final void run() {
                    CloudControl.BeaconCloudCallback.this.onError(e);
                }
            });
        }
    }

    public void getBeaconAppKey(final String str, final BeaconCloudCallback beaconCloudCallback) {
        this.CLOUD_CONTROL_EXECUTOR.execute(new Runnable() { // from class: com.tencent.cos.xml.a
            @Override // java.lang.Runnable
            public final void run() {
                CloudControl.this.lambda$getBeaconAppKey$3(str, beaconCloudCallback);
            }
        });
    }
}
