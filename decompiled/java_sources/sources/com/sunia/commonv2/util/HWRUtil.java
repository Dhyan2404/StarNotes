package com.sunia.commonv2.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Looper;
import android.provider.Settings;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.util.SparseLongArray;
import android.view.View;
import android.view.WindowManager;
import com.sunia.HTREnginev2.sdk.Engine;
import com.sunia.HTREnginev2.sdk.RecognizePath;
import com.sunia.HTREnginev2.sdk.RecognizePoint;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.bean.BoundingBox;
import com.sunia.commonv2.callback.CoreCheckConditionCallback;
import com.sunia.commonv2.global.HWREngineConstant;
import com.sunia.commonv2.global.HWREngineVariable;
import com.sunia.naiv2.sdk.NAIPath;
import com.sunia.nbiv2.sdk.NBIAxisPath;
import com.sunia.nbiv2.sdk.NBIAxisPoint;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/* loaded from: classes10.dex */
public class HWRUtil {
    private static final String TAG = "HWRUtil";
    private static final int sBufferSize = 524288;

    public static int andLogLevel2EngineLogLevel(int i) {
        if (i <= 0) {
            return 0;
        }
        if (i <= 3) {
            return 3;
        }
        if (i == 4) {
            return 2;
        }
        return i <= 6 ? 1 : 0;
    }

    public static boolean checkEmpty(CoreCheckConditionCallback... coreCheckConditionCallbackArr) {
        if (isEmpty(coreCheckConditionCallbackArr)) {
            return true;
        }
        for (CoreCheckConditionCallback coreCheckConditionCallback : coreCheckConditionCallbackArr) {
            if (isEmpty(coreCheckConditionCallback.checkCondition())) {
                return true;
            }
        }
        return false;
    }

    public static boolean checkNotEmpty(CoreCheckConditionCallback... coreCheckConditionCallbackArr) {
        return !checkEmpty(coreCheckConditionCallbackArr);
    }

    public static void deleteDirectory(File file) {
        if (file.exists()) {
            if (file.isFile()) {
                file.delete();
                return;
            }
            for (File file2 : file.listFiles()) {
                if (file2.isFile()) {
                    file2.delete();
                } else {
                    deleteDirectory(file2);
                }
            }
            file.delete();
        }
    }

    public static int dp2px(float f) {
        return (int) ((f * Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    public static int engineLogLevel2AndLogLevel(int i) {
        if (i == 1) {
            return 6;
        }
        if (i == 2) {
            return 4;
        }
        return i == 3 ? 3 : 0;
    }

    public static void filterEmptyPoints(List<RecognizePath> list) {
        if (isEmpty((List<?>) list)) {
            return;
        }
        Iterator<RecognizePath> it2 = list.iterator();
        while (it2.hasNext()) {
            RecognizePath next = it2.next();
            if (isEmpty(next)) {
                it2.remove();
            } else if (isNaN(next.getPoints())) {
                it2.remove();
            }
        }
    }

    public static void filterEmptyPointsByNAIPath(List<NAIPath> list) {
        if (isEmpty((List<?>) list)) {
            return;
        }
        Iterator<NAIPath> it2 = list.iterator();
        while (it2.hasNext()) {
            NAIPath next = it2.next();
            if (isEmpty(next)) {
                it2.remove();
            } else if (isNaN(next.getPoints())) {
                it2.remove();
            }
        }
    }

    public static void filterEmptyPointsByNBIAxisPath(List<NBIAxisPath> list) {
        if (isEmpty((List<?>) list)) {
            return;
        }
        Iterator<NBIAxisPath> it2 = list.iterator();
        while (it2.hasNext()) {
            NBIAxisPath next = it2.next();
            if (isEmpty(next)) {
                it2.remove();
            } else if (isNaNByNBIAxisPath(next.getNbiAxisPointList())) {
                it2.remove();
            }
        }
    }

    public static <T> T fromJson(String str, Class<T> cls) {
        try {
            return (T) HWREngineConstant.Constant.GSON.fromJson(str, (Class) cls);
        } catch (Exception unused) {
            return null;
        }
    }

    public static List<RecognizePoint> getAllPoint(String str) {
        if (isEmpty(str)) {
            return new ArrayList();
        }
        List<Float> stringToFloat = stringToFloat((List) Arrays.stream(str.split(",")).collect(Collectors.toList()));
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < stringToFloat.size(); i += 2) {
            arrayList.add(new RecognizePoint(stringToFloat.get(i).floatValue(), stringToFloat.get(i + 1).floatValue(), 0L));
        }
        return arrayList;
    }

    public static List<Float> getAllPointV2(String str) {
        return isEmpty(str) ? new ArrayList() : stringToFloat((List) Arrays.stream(str.split(",")).collect(Collectors.toList()));
    }

    @SuppressLint({"HardwareIds"})
    public static String getAndroidID(Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        return ("9774d56d682e549c".equals(string) || string == null) ? "" : string;
    }

    public static BoundingBox getBoundingBox(RectF rectF) {
        BoundingBox boundingBox = new BoundingBox();
        boundingBox.setX(rectF.left);
        boundingBox.setY(rectF.top);
        boundingBox.setWidth(rectF.width());
        boundingBox.setHeight(rectF.height());
        return boundingBox;
    }

    public static RecognizePoint getEndRecognizePoint(List<RecognizePoint> list) {
        return list.get(list.size() - 1);
    }

    public static String getEngineVersion() {
        try {
            return readAssetsFileToString(HWREngineVariable.sHWRApplication.getAssets().open("hwr/engine/BuildInfo.txt")).split("\n")[0].replace(".aar", "");
        } catch (Exception e) {
            LogUtil.m57655e(TAG, e);
            return "";
        }
    }

    public static String getEngineVersionV2() {
        try {
            return Engine.getEngineVersionV2();
        } catch (Exception e) {
            LogUtil.m57655e(TAG, e);
            return "";
        }
    }

    public static NAIPath getNAIPath(RecognizePath recognizePath) {
        NAIPath nAIPath = new NAIPath();
        nAIPath.mPoints = new ArrayList<>();
        Iterator<RecognizePoint> it2 = recognizePath.mPoints.iterator();
        while (it2.hasNext()) {
            nAIPath.mPoints.add(it2.next().m72429clone());
        }
        if (recognizePath.getPath() != null) {
            nAIPath.setPath(recognizePath.getPath());
        }
        if (recognizePath.getRecognizePathExt() != null) {
            nAIPath.setRecognizePathExt(recognizePath.getRecognizePathExt().m72428clone());
        }
        nAIPath.setId(recognizePath.getId());
        return nAIPath;
    }

    public static List<NAIPath> getNAIPathList(List<RecognizePath> list) {
        ArrayList arrayList = new ArrayList();
        if (isEmpty((List<?>) list)) {
            return arrayList;
        }
        Iterator<RecognizePath> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(getNAIPath(it2.next()));
        }
        return arrayList;
    }

    public static RecognizePath getRecognizePath(NBIAxisPath nBIAxisPath) {
        RecognizePath recognizePath = new RecognizePath();
        recognizePath.mPoints = new ArrayList<>();
        Iterator<NBIAxisPoint> it2 = nBIAxisPath.getNbiAxisPointList().iterator();
        while (it2.hasNext()) {
            recognizePath.mPoints.add(it2.next().m72429clone());
        }
        if (nBIAxisPath.getPath() != null) {
            recognizePath.setPath(nBIAxisPath.getPath());
        }
        if (nBIAxisPath.getRecognizePathExt() != null) {
            recognizePath.setRecognizePathExt(nBIAxisPath.getRecognizePathExt().m72428clone());
        }
        recognizePath.setId(nBIAxisPath.getId());
        return recognizePath;
    }

    public static List<List<RecognizePoint>> getRecognizePointList(List<RecognizePath> list) {
        ArrayList arrayList = new ArrayList();
        if (isEmpty((List<?>) list)) {
            return arrayList;
        }
        Iterator<RecognizePath> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getPoints());
        }
        return arrayList;
    }

    public static List<RecognizePoint> getRecognizePointListV2(List<RecognizePath> list) {
        ArrayList arrayList = new ArrayList();
        if (isEmpty((List<?>) list)) {
            return arrayList;
        }
        Iterator<RecognizePath> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.addAll(it2.next().getPoints());
        }
        return arrayList;
    }

    public static RectF getRectF(BoundingBox boundingBox) {
        return new RectF(boundingBox.getX(), boundingBox.getY(), boundingBox.getX() + boundingBox.getWidth(), boundingBox.getY() + boundingBox.getHeight());
    }

    public static RectF getRectFForRectangle(String str) {
        if (isEmpty(str)) {
            return new RectF();
        }
        List<Float> stringToFloat = stringToFloat((List) Arrays.stream(str.split(",")).collect(Collectors.toList()));
        return new RectF(stringToFloat.get(0).floatValue(), stringToFloat.get(1).floatValue(), stringToFloat.get(4).floatValue(), stringToFloat.get(5).floatValue());
    }

    public static RectF getRectFForRhombus(String str, float f, float f2) {
        if (isEmpty(str)) {
            return new RectF();
        }
        List<Float> stringToFloat = stringToFloat((List) Arrays.stream(str.split(",")).collect(Collectors.toList()));
        return new RectF(stringToFloat.get(0).floatValue(), stringToFloat.get(1).floatValue() - f2, stringToFloat.get(0).floatValue() + (f * 2.0f), (stringToFloat.get(1).floatValue() - f2) + (f2 * 2.0f));
    }

    public static String getSDKVersion() {
        try {
            return readAssetsFileToString(HWREngineVariable.sHWRApplication.getAssets().open("hwr/sdk/BuildInfo.txt")).split("\n")[0].replace(".aar", "");
        } catch (Exception e) {
            LogUtil.m57655e(TAG, e);
            return "";
        }
    }

    public static int getScreenHeight(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager == null) {
            return -1;
        }
        Point point = new Point();
        windowManager.getDefaultDisplay().getRealSize(point);
        return point.y;
    }

    public static int getScreenWidth(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager == null) {
            return -1;
        }
        Point point = new Point();
        windowManager.getDefaultDisplay().getRealSize(point);
        return point.x;
    }

    public static RecognizePoint getStartRecognizePoint(List<RecognizePoint> list) {
        return list.get(0);
    }

    public static boolean isEmpty(Object obj) {
        if (obj == null) {
            return true;
        }
        if (obj instanceof CharSequence) {
            return obj.toString().trim().length() == 0;
        }
        if (obj.getClass().isArray()) {
            return Array.getLength(obj) == 0;
        }
        if (obj instanceof Collection) {
            return ((Collection) obj).isEmpty();
        }
        if (obj instanceof Map) {
            return ((Map) obj).isEmpty();
        }
        if (obj instanceof SparseArray) {
            return ((SparseArray) obj).size() == 0;
        }
        if (obj instanceof SparseBooleanArray) {
            return ((SparseBooleanArray) obj).size() == 0;
        }
        if (obj instanceof SparseIntArray) {
            return ((SparseIntArray) obj).size() == 0;
        }
        if (obj instanceof SparseLongArray) {
            return ((SparseLongArray) obj).size() == 0;
        }
        if (obj instanceof LongSparseArray) {
            return ((LongSparseArray) obj).size() == 0;
        }
        if (obj instanceof Rect) {
            return ((Rect) obj).isEmpty();
        }
        if (obj instanceof RectF) {
            return ((RectF) obj).isEmpty();
        }
        return obj.toString().trim().isEmpty();
    }

    public static boolean isHWRDemo(Context context) {
        return isHWRDemo(context.getPackageName());
    }

    public static boolean isInvalidData(int i) {
        return i == -1;
    }

    public static boolean isMainThread() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    private static boolean isNaN(List<RecognizePoint> list) {
        if (isEmpty((List<?>) list)) {
            return true;
        }
        for (RecognizePoint recognizePoint : list) {
            double d = recognizePoint.f84039x;
            if (!Double.isNaN(d) && !Double.isInfinite(d)) {
                double d2 = recognizePoint.f84040y;
                if (!Double.isNaN(d2) && !Double.isInfinite(d2)) {
                }
            }
            return true;
        }
        return false;
    }

    private static boolean isNaNByNBIAxisPath(List<NBIAxisPoint> list) {
        if (isEmpty((List<?>) list)) {
            return true;
        }
        for (NBIAxisPoint nBIAxisPoint : list) {
            double d = nBIAxisPoint.f84039x;
            if (!Double.isNaN(d) && !Double.isInfinite(d)) {
                double d2 = nBIAxisPoint.f84040y;
                if (!Double.isNaN(d2) && !Double.isInfinite(d2)) {
                }
            }
            return true;
        }
        return false;
    }

    public static boolean isNotEmpty(Object obj) {
        return !isEmpty(obj);
    }

    public static boolean isValidData(int i) {
        return !isInvalidData(i);
    }

    public static List<RecognizePath> nbiAxisPath2recognizePath(List<NBIAxisPath> list) {
        ArrayList arrayList = new ArrayList();
        if (isEmpty((List<?>) list)) {
            return arrayList;
        }
        Iterator<NBIAxisPath> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(getRecognizePath(it2.next()));
        }
        return arrayList;
    }

    public static int px2dp(float f) {
        return (int) ((f / Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    public static byte[] readAssetsFileToByte(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 524288);
        try {
            try {
                byte[] bArr = new byte[524288];
                while (true) {
                    int read = bufferedInputStream.read(bArr, 0, 524288);
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
                e3.printStackTrace();
                try {
                    bufferedInputStream.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
                try {
                    byteArrayOutputStream.close();
                    return null;
                } catch (IOException e5) {
                    e5.printStackTrace();
                    return null;
                }
            }
        } catch (Throwable th) {
            try {
                bufferedInputStream.close();
            } catch (IOException e6) {
                e6.printStackTrace();
            }
            try {
                byteArrayOutputStream.close();
                throw th;
            } catch (IOException e7) {
                e7.printStackTrace();
                throw th;
            }
        }
    }

    public static String readAssetsFileToString(InputStream inputStream) {
        return new String(readAssetsFileToByte(inputStream), StandardCharsets.UTF_8);
    }

    public static NBIAxisPath recognizePath2NBIAxisPath(RecognizePath recognizePath) {
        if (isEmpty(recognizePath)) {
            return null;
        }
        NBIAxisPath nBIAxisPath = new NBIAxisPath();
        nBIAxisPath.setId(recognizePath.getId());
        ArrayList<RecognizePoint> points = recognizePath.getPoints();
        if (isEmpty((List<?>) points)) {
            return null;
        }
        Iterator<RecognizePoint> it2 = points.iterator();
        while (it2.hasNext()) {
            nBIAxisPath.getNbiAxisPointList().add(new NBIAxisPoint(it2.next()));
        }
        return nBIAxisPath;
    }

    public static List<RecognizePoint> recognizePath2recognizePoint(List<RecognizePath> list) {
        ArrayList arrayList = new ArrayList();
        if (isEmpty((List<?>) list)) {
            return arrayList;
        }
        Iterator<RecognizePath> it2 = list.iterator();
        while (it2.hasNext()) {
            ArrayList<RecognizePoint> points = it2.next().getPoints();
            for (int i = 0; i < points.size(); i++) {
                RecognizePoint recognizePoint = points.get(i);
                RecognizePoint recognizePoint2 = new RecognizePoint(recognizePoint.f84039x, recognizePoint.f84040y, 0L);
                if (i == 0) {
                    recognizePoint2.action = 0;
                } else if (i == points.size() - 1) {
                    recognizePoint2.action = 2;
                } else {
                    recognizePoint2.action = 1;
                }
                arrayList.add(recognizePoint2);
            }
        }
        return arrayList;
    }

    public static List<RecognizePath> recognizePoint2RecognizePath(List<RecognizePoint> list) {
        ArrayList arrayList = new ArrayList();
        if (isEmpty((List<?>) list)) {
            return arrayList;
        }
        RecognizePath recognizePath = null;
        for (RecognizePoint recognizePoint : list) {
            if (recognizePoint.action == 0) {
                recognizePath = new RecognizePath();
                arrayList.add(recognizePath);
            }
            recognizePath.getPoints().add(recognizePoint);
        }
        return arrayList;
    }

    public static Rect rectF2Rect(RectF rectF) {
        return new Rect((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
    }

    public static Bitmap screenshot(View view) {
        view.setDrawingCacheEnabled(true);
        Bitmap drawingCache = view.getDrawingCache();
        if (isEmpty(drawingCache)) {
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(drawingCache);
        view.destroyDrawingCache();
        return createBitmap;
    }

    public static List<Float> stringToFloat(List<String> list) {
        ArrayList arrayList = new ArrayList();
        if (isEmpty((List<?>) list)) {
            return arrayList;
        }
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(Float.valueOf(Float.parseFloat(it2.next())));
        }
        return arrayList;
    }

    public static String toJson(String str) {
        return HWREngineConstant.Constant.GSON.toJson(str);
    }

    public static boolean writeFileFromIS(File file, InputStream inputStream) {
        BufferedOutputStream bufferedOutputStream;
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file), 524288);
            } catch (Throwable th) {
                th = th;
                bufferedOutputStream = null;
            }
        } catch (IOException e) {
            e = e;
        }
        try {
            byte[] bArr = new byte[524288];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    bufferedOutputStream.write(bArr, 0, read);
                } else {
                    try {
                        break;
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                }
            }
            inputStream.close();
            try {
                bufferedOutputStream.close();
                return true;
            } catch (IOException e3) {
                e3.printStackTrace();
                return true;
            }
        } catch (IOException e4) {
            e = e4;
            bufferedOutputStream2 = bufferedOutputStream;
            e.printStackTrace();
            try {
                inputStream.close();
            } catch (IOException e5) {
                e5.printStackTrace();
            }
            if (bufferedOutputStream2 != null) {
                try {
                    bufferedOutputStream2.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            }
            return false;
        } catch (Throwable th2) {
            th = th2;
            try {
                inputStream.close();
            } catch (IOException e7) {
                e7.printStackTrace();
            }
            if (bufferedOutputStream != null) {
                try {
                    bufferedOutputStream.close();
                    throw th;
                } catch (IOException e8) {
                    e8.printStackTrace();
                    throw th;
                }
            }
            throw th;
        }
    }

    public static RectF getRectF(double[] dArr) {
        if (isEmpty(dArr)) {
            return new RectF();
        }
        double d = dArr[0];
        double d2 = dArr[1];
        return new RectF((float) d, (float) d2, (float) (d + dArr[2]), (float) (d2 + dArr[3]));
    }

    public static boolean isHWRDemo(String str) {
        return "com.sunia.hwr.demo".equals(str);
    }

    public static boolean isNotEmpty(List<?> list) {
        return !isEmpty(list);
    }

    public static boolean isNotEmpty(RectF rectF) {
        return !isEmpty(rectF);
    }

    public static boolean writeFileFromIS(File file, String str) {
        BufferedOutputStream bufferedOutputStream;
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file), 524288);
            } catch (IOException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
            bufferedOutputStream = bufferedOutputStream2;
        }
        try {
            bufferedOutputStream.write(str.getBytes(StandardCharsets.UTF_8));
            try {
                bufferedOutputStream.close();
                return true;
            } catch (IOException e2) {
                e2.printStackTrace();
                return true;
            }
        } catch (IOException e3) {
            e = e3;
            bufferedOutputStream2 = bufferedOutputStream;
            e.printStackTrace();
            if (bufferedOutputStream2 == null) {
                return false;
            }
            try {
                bufferedOutputStream2.close();
                return false;
            } catch (IOException e4) {
                e4.printStackTrace();
                return false;
            }
        } catch (Throwable th2) {
            th = th2;
            if (bufferedOutputStream != null) {
                try {
                    bufferedOutputStream.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
    }

    public static boolean isEmpty(List<?> list) {
        if (list == null) {
            return true;
        }
        return list.isEmpty();
    }

    public static boolean isEmpty(RectF rectF) {
        if (rectF == null) {
            return true;
        }
        return rectF.width() == 0.0f && rectF.height() == 0.0f;
    }
}
