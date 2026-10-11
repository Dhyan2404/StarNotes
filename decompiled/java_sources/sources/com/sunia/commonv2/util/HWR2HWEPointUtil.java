package com.sunia.commonv2.util;

import android.os.Environment;
import android.util.Log;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.onyx.galaxy.note.utils.LogcatGenerator;
import com.sunia.HTREnginev2.sdk.RecognizePath;
import com.sunia.HTREnginev2.sdk.RecognizePoint;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.bean.HWEPointV2;
import com.sunia.commonv2.module.CommonModule;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

/* loaded from: classes10.dex */
public class HWR2HWEPointUtil {
    private static String TAG = "HWR2HWEPointUtil";

    public static void hwe2HWRPoint() {
        ArrayList arrayList = new ArrayList();
        File file = new File(Environment.getExternalStorageDirectory(), "/00bug/hwrPoint");
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (HWRUtil.isEmpty(listFiles)) {
                return;
            }
            for (File file2 : listFiles) {
                if (file2.getName().endsWith(LogcatGenerator.OUTPUT_FILE_TXT_EXTENSION)) {
                    arrayList.add(file2);
                }
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                hwe2HWRPoint((File) it2.next());
            }
        }
    }

    public static String saveHWEPointV2(HWEPointV2 hWEPointV2) {
        return saveHWEPointV2(hWEPointV2, new File(CommonModule.getCommonModule().getExportPintPath(), HWRCommonUtil.getCurrentTimeMillisByFormat("") + "_point.txt"));
    }

    public static String saveHWEPointV2(HWEPointV2 hWEPointV2, File file) {
        try {
            String json = new Gson().toJson(hWEPointV2);
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

    public static void hwe2HWRPoint(File file) {
        try {
            List list = (List) new Gson().fromJson(HWRUtil.readAssetsFileToString(new FileInputStream(file)), new TypeToken<List<RecognizePath>>() { // from class: com.sunia.commonv2.util.HWR2HWEPointUtil.1
            }.getType());
            LogUtil.m57653d(TAG, "笔画数=" + list.size());
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            HWEPointV2 hWEPointV2 = new HWEPointV2();
            for (int i = 0; i < list.size(); i++) {
                RecognizePath recognizePath = (RecognizePath) list.get(i);
                ArrayList<RecognizePoint> points = recognizePath.getPoints();
                int idInt = recognizePath.getIdInt();
                if (linkedHashSet.contains(Integer.valueOf(idInt))) {
                    LogUtil.m57657w(TAG, "第" + i + "笔重复id=" + idInt);
                } else {
                    linkedHashSet.add(Integer.valueOf(idInt));
                }
                hWEPointV2.getRecognizePathExtList().add(recognizePath.getRecognizePathExt());
                for (int i2 = 0; i2 < points.size(); i2++) {
                    HWEPointV2.PointRecord pointRecord = new HWEPointV2.PointRecord();
                    RecognizePoint recognizePoint = points.get(i2);
                    pointRecord.setX(recognizePoint.f84039x);
                    pointRecord.setY(recognizePoint.f84040y);
                    pointRecord.setPressure(recognizePoint.f84037p);
                    if (i2 == 0) {
                        LogUtil.m57653d(TAG, "第" + i + "笔，idInt=" + idInt + ",x=" + recognizePoint.f84039x + ",y=" + recognizePoint.f84040y);
                        pointRecord.setAction(0);
                    } else if (i2 == points.size() - 1) {
                        pointRecord.setAction(1);
                    } else {
                        pointRecord.setAction(2);
                    }
                    hWEPointV2.getPointRecords().add(pointRecord);
                }
            }
            File file2 = new File(file.getParent(), "aiePoint");
            file2.mkdirs();
            String saveHWEPointV2 = saveHWEPointV2(hWEPointV2, new File(file2, file.getName().split("\\.")[0] + "_aie_point.txt"));
            LogUtil.m57653d(TAG, "saveFilePath=" + saveHWEPointV2);
        } catch (Exception e) {
            LogUtil.m57658w(TAG, e);
        }
    }
}
