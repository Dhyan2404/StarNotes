package com.sunia.HTREnginev2.utils;

import android.content.pm.PackageInfo;
import android.text.TextUtils;
import android.util.Log;
import com.onyx.galaxy.note.utils.LogcatGenerator;
import com.sunia.commonv2.global.HWREngineVariable;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes10.dex */
public class LogUtil {
    private static int DEBUG_LEVEL = 0;
    private static final String TAG = "HWREngine";
    private static String filePath;
    private static File logFile;
    private static ExecutorService sExecutorService = Executors.newSingleThreadExecutor();
    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss SSS ");
    private static StringBuffer sStringBuffer = new StringBuffer();

    public static boolean canLogD() {
        int i = DEBUG_LEVEL;
        return i != 0 && i <= 3;
    }

    public static boolean canLogE() {
        int i = DEBUG_LEVEL;
        return i != 0 && i <= 6;
    }

    public static boolean canLogI() {
        int i = DEBUG_LEVEL;
        return i != 0 && i <= 4;
    }

    public static boolean canLogW() {
        int i = DEBUG_LEVEL;
        return i != 0 && i <= 5;
    }

    /* renamed from: d */
    public static void m57653d(String str, String str2) {
        if (canLogD()) {
            Log.d(getTag(str), str2);
            if (TextUtils.isEmpty(filePath)) {
                return;
            }
            writerStringToFile(str, str2);
        }
    }

    /* renamed from: e */
    public static void m57654e(String str, String str2) {
        if (canLogE()) {
            Log.e(getTag(str), str2);
            if (TextUtils.isEmpty(filePath)) {
                return;
            }
            writerStringToFile(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void firstWrite(FileWriter fileWriter) {
        fileWriter.write("\r\n");
        fileWriter.write("========================================");
        fileWriter.write("\r\n");
        fileWriter.write("冷启动之后第一次写日志");
        fileWriter.write("\r\n");
        writeVersionInfo(fileWriter);
        fileWriter.write("========================================");
    }

    public static String getStackTraceString(Throwable th) {
        return Log.getStackTraceString(th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getTag(String str) {
        return "HWREngine--" + str;
    }

    /* renamed from: i */
    public static void m57656i(String str, String str2) {
        if (canLogI()) {
            Log.i(getTag(str), str2);
            if (TextUtils.isEmpty(filePath)) {
                return;
            }
            writerStringToFile(str, str2);
        }
    }

    public static void setDebugLevel(int i) {
        DEBUG_LEVEL = i;
    }

    public static void setFilePath(String str) {
        filePath = str;
    }

    /* renamed from: w */
    public static void m57657w(String str, String str2) {
        if (canLogW()) {
            Log.w(getTag(str), str2);
            if (TextUtils.isEmpty(filePath)) {
                return;
            }
            writerStringToFile(str, str2);
        }
    }

    private static void writeVersionInfo(FileWriter fileWriter) {
        try {
            PackageInfo packageInfo = HWREngineVariable.sHWRApplication.getPackageManager().getPackageInfo(HWREngineVariable.sHWRApplication.getPackageName(), 0);
            String str = packageInfo.versionName;
            int i = packageInfo.versionCode;
            fileWriter.write("版本名称: " + str);
            fileWriter.write("\r\n");
            fileWriter.write("版本号: " + i);
            fileWriter.write("\r\n");
            fileWriter.write("包名: " + packageInfo.packageName);
            fileWriter.write("\r\n");
            fileWriter.write("应用名称: " + HWREngineVariable.sHWRApplication.getString(packageInfo.applicationInfo.labelRes));
            fileWriter.write("\r\n");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void writerStringToFile(final String str, final String str2) {
        sExecutorService.execute(new Runnable() { // from class: com.sunia.HTREnginev2.utils.LogUtil.1
            @Override // java.lang.Runnable
            public void run() {
                Throwable th;
                FileWriter fileWriter;
                boolean z;
                FileWriter fileWriter2 = null;
                try {
                    try {
                        try {
                            z = false;
                            LogUtil.sStringBuffer.setLength(0);
                            LogUtil.sStringBuffer.append(LogUtil.getTag(str));
                            LogUtil.sStringBuffer.append(":");
                            LogUtil.sStringBuffer.append(str2);
                        } catch (Exception e) {
                            e = e;
                        }
                        if (TextUtils.isEmpty(LogUtil.filePath)) {
                            return;
                        }
                        File file = new File(LogUtil.filePath);
                        if (!file.exists()) {
                            file.mkdirs();
                        }
                        if (LogUtil.logFile == null) {
                            File unused = LogUtil.logFile = new File(file, "log_" + new SimpleDateFormat("yyyy_MM_dd").format(new Date(System.currentTimeMillis())) + LogcatGenerator.OUTPUT_FILE_TXT_EXTENSION);
                            z = true;
                        }
                        if (!LogUtil.logFile.exists() || LogUtil.logFile.isDirectory()) {
                            try {
                                LogUtil.logFile.createNewFile();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                        fileWriter = new FileWriter(LogUtil.logFile, true);
                        if (z) {
                            try {
                                LogUtil.firstWrite(fileWriter);
                            } catch (Exception e3) {
                                fileWriter2 = fileWriter;
                                e = e3;
                                e.printStackTrace();
                                if (fileWriter2 != null) {
                                    fileWriter2.close();
                                }
                                return;
                            } catch (Throwable th2) {
                                th = th2;
                                if (fileWriter != null) {
                                    try {
                                        fileWriter.close();
                                    } catch (IOException e4) {
                                        e4.printStackTrace();
                                    }
                                }
                                throw th;
                            }
                        }
                        fileWriter.write("\r\n");
                        fileWriter.write(LogUtil.simpleDateFormat.format(new Date(System.currentTimeMillis())));
                        fileWriter.write(LogUtil.sStringBuffer.toString());
                        fileWriter.close();
                    } catch (Throwable th3) {
                        FileWriter fileWriter3 = fileWriter2;
                        th = th3;
                        fileWriter = fileWriter3;
                    }
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
        });
    }

    /* renamed from: e */
    public static void m57655e(String str, Throwable th) {
        if (canLogE()) {
            String stackTraceString = Log.getStackTraceString(th);
            Log.e(getTag(str), stackTraceString);
            if (TextUtils.isEmpty(filePath)) {
                return;
            }
            writerStringToFile(str, stackTraceString);
        }
    }

    /* renamed from: w */
    public static void m57658w(String str, Throwable th) {
        if (canLogW()) {
            m57657w(str, getStackTraceString(th));
        }
    }
}
