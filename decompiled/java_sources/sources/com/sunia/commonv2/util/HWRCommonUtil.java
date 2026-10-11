package com.sunia.commonv2.util;

import android.app.Application;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.google.gson.Gson;
import com.sunia.HTREnginev2.sdk.RecognizePath;
import com.sunia.HTREnginev2.sdk.RecognizePoint;
import com.sunia.commonv2.bean.HWEPointV2;
import com.sunia.commonv2.bean.HWEPointV3;
import com.sunia.commonv2.global.HWREngineVariable;
import com.sunia.commonv2.module.CommonModule;
import com.sunia.commonv2.module.ICommonModule;
import java.io.BufferedInputStream;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes10.dex */
public class HWRCommonUtil {
    private static final String TAG = "HWRCommonUtil";
    private static int sBufferSize = 524288;

    public static Context getApplicationContent(Context context) {
        return context instanceof Application ? context : context.getApplicationContext();
    }

    public static String getClipboardText(Context context) {
        ClipData primaryClip;
        ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
        return (clipboardManager == null || !clipboardManager.hasPrimaryClip() || (primaryClip = clipboardManager.getPrimaryClip()) == null || primaryClip.getItemCount() <= 0) ? "" : primaryClip.getItemAt(0).getText().toString();
    }

    public static String getCurrentLanguage(Context context) {
        return getCurrentLanguage(context.getResources().getConfiguration());
    }

    public static String getCurrentTimeMillisByFormat() {
        return getCurrentTimeMillisByFormat("");
    }

    public static List<RecognizePoint> getPathPoints(Path path) {
        ArrayList arrayList = new ArrayList();
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        for (float f = 0.0f; f < length; f += 1.0f) {
            float[] fArr = new float[2];
            pathMeasure.getPosTan(f, fArr, null);
            arrayList.add(new RecognizePoint(fArr[0], fArr[1], 0L));
        }
        return arrayList;
    }

    public static RectF getRectF(List<RecognizePoint> list) {
        RectF rectF = null;
        if (HWRUtil.isEmpty((List<?>) list)) {
            return null;
        }
        for (int i = 0; i < list.size(); i++) {
            RecognizePoint recognizePoint = list.get(i);
            if (rectF == null) {
                float f = recognizePoint.f84039x;
                float f2 = recognizePoint.f84040y;
                rectF = new RectF(f, f2, f, f2);
            } else {
                rectF.union(recognizePoint.f84039x, recognizePoint.f84040y);
            }
        }
        return rectF;
    }

    public static List<RecognizePath> hwePointV2RecognizePathList(HWEPointV2 hWEPointV2) {
        ArrayList arrayList = new ArrayList();
        RecognizePath recognizePath = null;
        for (HWEPointV2.PointRecord pointRecord : hWEPointV2.getPointRecords()) {
            if (pointRecord.isDown()) {
                recognizePath = new RecognizePath();
                arrayList.add(recognizePath);
            }
            recognizePath.getPoints().add(new RecognizePoint(pointRecord.getX(), pointRecord.getY(), pointRecord.getPressure(), pointRecord.getEventTime(), pointRecord.getAction()));
        }
        return arrayList;
    }

    public static List<RecognizePath> hwePointV3RecognizePathList(List<HWEPointV3> list) {
        ArrayList arrayList = new ArrayList();
        for (HWEPointV3 hWEPointV3 : list) {
            RecognizePath recognizePath = new RecognizePath();
            arrayList.add(recognizePath);
            for (HWEPointV3.Point point : hWEPointV3.getPointRecords()) {
                recognizePath.getPoints().add(new RecognizePoint(point.getX(), point.getY(), point.getAction()));
            }
        }
        return arrayList;
    }

    public static boolean isPad(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        return Math.sqrt(Math.pow((double) (((float) displayMetrics.widthPixels) / displayMetrics.xdpi), 2.0d) + Math.pow((double) (((float) displayMetrics.heightPixels) / displayMetrics.ydpi), 2.0d)) >= 7.0d;
    }

    public static boolean isPhone(Context context) {
        return !isPad(context);
    }

    public static boolean isWhileList() {
        return HWREngineVariable.sWhileList.contains(HWREngineVariable.sAndroidId);
    }

    public static float mmToDpi(ICommonModule iCommonModule, double d) {
        return mmToPx(iCommonModule, d);
    }

    public static float mmToPx(ICommonModule iCommonModule, double d) {
        return ((float) (d / 25.4d)) * iCommonModule.getApplication().getResources().getDisplayMetrics().xdpi;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARN: Type inference failed for: r6v6 */
    public static byte[] readFile2BytesByStream(File file) {
        BufferedInputStream bufferedInputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        try {
            try {
                bufferedInputStream = new BufferedInputStream(new FileInputStream((File) file), sBufferSize);
            } catch (Throwable th) {
                th = th;
            }
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    byte[] bArr = new byte[sBufferSize];
                    while (true) {
                        int read = bufferedInputStream.read(bArr, 0, sBufferSize);
                        if (read == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, read);
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    try {
                        bufferedInputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                    return byteArray;
                } catch (IOException e3) {
                    e = e3;
                    e.printStackTrace();
                    try {
                        bufferedInputStream.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                    }
                    return null;
                }
            } catch (IOException e6) {
                e = e6;
                byteArrayOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                file = 0;
                try {
                    bufferedInputStream.close();
                } catch (IOException e7) {
                    e7.printStackTrace();
                }
                if (file == 0) {
                    throw th;
                }
                try {
                    file.close();
                    throw th;
                } catch (IOException e8) {
                    e8.printStackTrace();
                    throw th;
                }
            }
        } catch (FileNotFoundException e9) {
            e9.printStackTrace();
            return null;
        }
    }

    public static String readFile2String(File file) {
        return readFile2String(file, "utf-8");
    }

    public static String saveTestToolPoints(List<RecognizePath> list) {
        String str = getCurrentTimeMillisByFormat("") + "_point.txt";
        String json = new Gson().toJson(list);
        try {
            File file = new File(CommonModule.getCommonModule().getExportPintPath(), str);
            FileWriter fileWriter = new FileWriter(file.getAbsolutePath());
            fileWriter.write(json);
            fileWriter.flush();
            fileWriter.close();
            return file.getAbsolutePath();
        } catch (IOException e) {
            e.printStackTrace();
            Log.d(TAG, "saveTouchPoints error " + e.getMessage());
            return "";
        }
    }

    public static boolean writeFileFromString(File file, String str) {
        BufferedWriter bufferedWriter;
        if (file == null || str == null) {
            return false;
        }
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                bufferedWriter = new BufferedWriter(new FileWriter(file, false));
            } catch (Throwable th) {
                th = th;
                bufferedWriter = null;
            }
        } catch (IOException e) {
            e = e;
        }
        try {
            bufferedWriter.write(str);
            try {
                bufferedWriter.close();
                return true;
            } catch (IOException e2) {
                e2.printStackTrace();
                return true;
            }
        } catch (IOException e3) {
            e = e3;
            bufferedWriter2 = bufferedWriter;
            e.printStackTrace();
            if (bufferedWriter2 != null) {
                try {
                    bufferedWriter2.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            return false;
        } catch (Throwable th2) {
            th = th2;
            if (bufferedWriter != null) {
                try {
                    bufferedWriter.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
    }

    public static String getCurrentLanguage(Locale locale) {
        String str = locale.getLanguage() + "_" + locale.getCountry();
        return (str.equals("zh_HK") || str.equals("zh_MO")) ? "zh_TW" : str;
    }

    public static String getCurrentTimeMillisByFormat(String str) {
        if (HWRUtil.isEmpty(str)) {
            str = "yyyy-MM-dd-HH-mm-ss-SSS";
        }
        return new SimpleDateFormat(str).format(Long.valueOf(System.currentTimeMillis()));
    }

    public static String readFile2String(File file, String str) {
        byte[] readFile2BytesByStream = readFile2BytesByStream(file);
        if (readFile2BytesByStream == null) {
            return null;
        }
        try {
            return new String(readFile2BytesByStream, str);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String getCurrentLanguage(Configuration configuration) {
        return getCurrentLanguage(configuration.locale);
    }

    public static String saveTestToolPoints(List<RecognizePath> list, File file) {
        String json = new Gson().toJson(list);
        try {
            FileWriter fileWriter = new FileWriter(file.getAbsolutePath());
            fileWriter.write(json);
            fileWriter.flush();
            fileWriter.close();
            return file.getAbsolutePath();
        } catch (Exception e) {
            e.printStackTrace();
            Log.d(TAG, "saveTouchPoints error " + e.getMessage());
            return "";
        }
    }

    public static String saveTestToolPoints(ICommonModule iCommonModule, List<RecognizePath> list) {
        String json = new Gson().toJson(list);
        try {
            File file = new File(iCommonModule.getExportPintPath(), getCurrentTimeMillisByFormat("") + "_point.txt");
            FileWriter fileWriter = new FileWriter(file.getAbsolutePath());
            fileWriter.write(json);
            fileWriter.flush();
            fileWriter.close();
            return file.getAbsolutePath();
        } catch (IOException e) {
            e.printStackTrace();
            Log.d(TAG, "saveTouchPoints error " + e.getMessage());
            return "";
        }
    }
}
