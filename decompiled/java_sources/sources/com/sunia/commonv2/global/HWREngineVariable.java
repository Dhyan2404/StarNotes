package com.sunia.commonv2.global;

import android.app.Application;
import android.os.Handler;
import com.sunia.commonv2.auth.HWRDeviceIdType;
import com.sunia.commonv2.auth.HWRURLType;
import com.sunia.commonv2.enum2.EEngineVersion;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes10.dex */
public class HWREngineVariable {
    public static String appId;
    public static HWRDeviceIdType deviceIdType;
    public static String offlineStr;
    public static String publicKey;
    public static String sAndroidId;
    public static boolean sDebugMode;
    public static EEngineVersion sEngineVersion;
    public static Application sHWRApplication;
    public static boolean sIsHWRDemo;
    public static Handler sMainHandler;
    public static boolean sReleaseMode;
    public static String systemLanguage;
    public static HWRURLType urlType;
    public static List<String> sWhileList = new ArrayList();
    public static List sDemoPackageNameList = new ArrayList();

    static {
        sWhileList.add("99a4505e29b4d197");
        sWhileList.add("2619b6a734ed631f");
        sDemoPackageNameList.add("com.sunia.authdemo");
        sDemoPackageNameList.add("WpfApp1");
        sDemoPackageNameList.add("com.sunia.math.calculate");
        sDemoPackageNameList.add("com.sunia.HWREngine.Demo");
        sDemoPackageNameList.add("com.sunia.HTREngine.recognizeDemo");
        sDemoPackageNameList.add("com.sunia.hwr.demo");
        sDemoPackageNameList.add("com.sunia.hwr.getstarted");
        sDemoPackageNameList.add("com.sunia.PenEngine");
        sDemoPackageNameList.add("com.example.estimatedPathDemo");
        sDemoPackageNameList.add("com.sunia.HTCDemo");
        sDemoPackageNameList.add("com.sunia.eginedemo");
        sDemoPackageNameList.add("com.motorola.handwritingcalculator");
        sDemoPackageNameList.add("com.sunia.ocr.example");
        sDebugMode = false;
        sReleaseMode = true;
        sAndroidId = "";
        appId = "";
        publicKey = "";
        offlineStr = "";
        deviceIdType = HWRDeviceIdType.ANDROID_ID;
        urlType = HWRURLType.PROD;
        systemLanguage = "en_US";
    }
}
