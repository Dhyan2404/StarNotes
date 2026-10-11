package com.sunia.commonv2.util;

import android.os.Environment;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.bean.HWEPointV2;
import com.sunia.commonv2.bean.HWEPointV3;
import java.io.File;
import java.io.FileInputStream;
import java.util.List;

/* loaded from: classes10.dex */
public class HWE2HWRPointUtil {
    private static String TAG = "HWE2HWRPointUtil";

    public static void hwe2HWEPointV3() {
        try {
            List list = (List) new Gson().fromJson(HWRUtil.readAssetsFileToString(new FileInputStream(new File(Environment.getExternalStorageDirectory(), "/00bug/c6bd40de-cc98-4566-ab53-e0cf2b3b9346.txt").getPath())), new TypeToken<List<HWEPointV3>>() { // from class: com.sunia.commonv2.util.HWE2HWRPointUtil.1
            }.getType());
            LogUtil.m57653d(TAG, "笔画数=" + list.size());
            String saveTestToolPoints = HWRCommonUtil.saveTestToolPoints(HWRCommonUtil.hwePointV3RecognizePathList(list));
            LogUtil.m57653d(TAG, "saveFilePath=" + saveTestToolPoints);
        } catch (Exception e) {
            LogUtil.m57658w(TAG, e);
        }
    }

    public static void hwe2HWRPoint() {
        try {
            HWEPointV2 hWEPointV2 = (HWEPointV2) new Gson().fromJson(HWRUtil.readAssetsFileToString(new FileInputStream(new File(Environment.getExternalStorageDirectory(), "/00bug/JsonPoint10cade67-80c1-47d6-95e8-d90d7bbbb7e5 (1).txt").getPath())), HWEPointV2.class);
            LogUtil.m57653d(TAG, "笔画数=" + hWEPointV2.getPointRecords().size());
            String saveTestToolPoints = HWRCommonUtil.saveTestToolPoints(HWRCommonUtil.hwePointV2RecognizePathList(hWEPointV2));
            LogUtil.m57653d(TAG, "saveFilePath=" + saveTestToolPoints);
        } catch (Exception e) {
            LogUtil.m57658w(TAG, e);
        }
    }
}
