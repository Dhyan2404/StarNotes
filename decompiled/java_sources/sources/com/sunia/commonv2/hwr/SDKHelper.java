package com.sunia.commonv2.hwr;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Environment;
import android.util.Log;
import android.view.Window;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.sunia.HTREnginev2.C13596d;
import com.sunia.HTREnginev2.sdk.ERecognitionMode;
import com.sunia.HTREnginev2.sdk.Params;
import com.sunia.HTREnginev2.sdk.RecognizeListener;
import com.sunia.HTREnginev2.sdk.RecognizePath;
import com.sunia.HTREnginev2.sdk.RecognizePoint;
import com.sunia.HTREnginev2.sdk.editor.Editor;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.bean.ConfigBean;
import com.sunia.commonv2.bean.HWRSimpleResult;
import com.sunia.commonv2.bean.PartiBean;
import com.sunia.commonv2.bean.PartieWords;
import com.sunia.commonv2.bean.PointsToBitmapResult;
import com.sunia.commonv2.bean.TestBean;
import com.sunia.commonv2.bean.graphicsedite.ShapeEditeBean;
import com.sunia.commonv2.callback.CoreCommonCallback;
import com.sunia.commonv2.global.HWREngineConstant;
import com.sunia.commonv2.global.HWREngineVariable;
import com.sunia.commonv2.module.CommonModule;
import com.sunia.commonv2.util.HWRCommonUtil;
import com.sunia.commonv2.util.HWRModelPredictionUtil;
import com.sunia.commonv2.util.HWRUtil;
import com.sunia.testv2.HWRErrorReplaceTest;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes10.dex */
public class SDKHelper {
    private static final String TAG = "SDKHelper";
    private int lastPathId;

    /* JADX INFO: Access modifiers changed from: private */
    public void addOneRecognizeTask(Editor editor, List<RecognizePath> list, int i) {
        editor.clearContent();
        int[] addPoints = editor.addPoints(HWRUtil.getRecognizePointListV2(list));
        editor.doPageRecognize(true);
        String content = editor.getContent();
        LogUtil.m57653d(TAG, "006任务id=" + i);
        LogUtil.m57653d(TAG, "007识别结果=" + content);
        List<PartieWords> chars = ((PartiBean) HWREngineConstant.Constant.GSON.fromJson(content, PartiBean.class)).getChars();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(IteratorUtils.f104923a);
        for (int i2 = 0; i2 < chars.size(); i2++) {
            List<Integer> strokeIds = chars.get(i2).getStrokeIds();
            Collections.sort(strokeIds);
            stringBuffer.append(IteratorUtils.f104923a);
            for (int i3 = 0; i3 < strokeIds.size(); i3++) {
                stringBuffer.append(strokeIds.get(i3).intValue() - this.lastPathId);
                if (i3 != strokeIds.size() - 1) {
                    stringBuffer.append(", ");
                }
            }
            stringBuffer.append(IteratorUtils.f104924b);
            if (i2 != chars.size() - 1) {
                stringBuffer.append(", ");
            }
        }
        stringBuffer.append(IteratorUtils.f104924b);
        LogUtil.m57653d(TAG, "008笔画id=" + stringBuffer.toString());
        this.lastPathId = addPoints[addPoints.length - 1];
    }

    private void test1(final Editor[] editorArr) {
        HWRHelper.createEditor("gesture", ERecognitionMode.MODE_ICR, new ConfigBean("gesture", "gesture.conf"), new RecognizeListener() { // from class: com.sunia.commonv2.hwr.SDKHelper.3
            @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
            public void onAssociationalChanged(Editor editor, String str) {
            }

            @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
            public void onCandidateChanged(Editor editor, String str) {
            }

            @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
            public void onContentChanged(Editor editor, String str) {
            }

            @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
            public void onError(Editor editor, int i, Exception exc) {
            }

            @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
            public void onLoaded(Editor editor) {
                Editor[] editorArr2 = editorArr;
                editorArr2[0] = editor;
                SDKHelper.this.test2(editorArr2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void test2(final Editor[] editorArr) {
        HWRHelper.createEditor("gesture2", ERecognitionMode.MODE_ICR, new ConfigBean("gesture", "gesture.conf"), new RecognizeListener() { // from class: com.sunia.commonv2.hwr.SDKHelper.4
            @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
            public void onAssociationalChanged(Editor editor, String str) {
            }

            @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
            public void onCandidateChanged(Editor editor, String str) {
            }

            @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
            public void onContentChanged(Editor editor, String str) {
            }

            @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
            public void onError(Editor editor, int i, Exception exc) {
            }

            @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
            public void onLoaded(Editor editor) {
                Editor[] editorArr2 = editorArr;
                editorArr2[1] = editor;
                editorArr2[0].isClosed();
            }
        });
    }

    private void test3() {
        HWRHelper.createEditor("test3", ERecognitionMode.MODE_ICR, new ConfigBean("math/conf/math_zh", "math_zh.conf"), new RecognizeListener() { // from class: com.sunia.commonv2.hwr.SDKHelper.5
            @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
            public void onAssociationalChanged(Editor editor, String str) {
            }

            @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
            public void onCandidateChanged(Editor editor, String str) {
            }

            @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
            public void onContentChanged(Editor editor, String str) {
            }

            @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
            public void onError(Editor editor, int i, Exception exc) {
            }

            @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
            public void onLoaded(Editor editor) {
            }
        });
    }

    private void test5() {
        HWRHelper.createEditor(TAG, ERecognitionMode.MODE_ECR, new ConfigBean("recognize/conf/zh_CN", "zh_CN.conf"), new RecognizeListener() { // from class: com.sunia.commonv2.hwr.SDKHelper.11
            @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
            public void onAssociationalChanged(Editor editor, String str) {
            }

            @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
            public void onCandidateChanged(Editor editor, String str) {
            }

            @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
            public void onContentChanged(Editor editor, String str) {
            }

            @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
            public void onError(Editor editor, int i, Exception exc) {
                LogUtil.m57654e(SDKHelper.TAG, "onError" + Log.getStackTraceString(exc));
            }

            @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
            public void onLoaded(Editor editor) {
                LogUtil.m57653d(SDKHelper.TAG, "001中文引擎初始化成功");
                try {
                    PointsToBitmapResult doPointsToBitmap = editor.doPointsToBitmap((List) new Gson().fromJson(HWRUtil.readAssetsFileToString(HWREngineVariable.sHWRApplication.getAssets().open("points/test.txt")), new TypeToken<List<RecognizePath>>() { // from class: com.sunia.commonv2.hwr.SDKHelper.11.1
                    }.getType()));
                    Bitmap createBitmap = Bitmap.createBitmap((int) doPointsToBitmap.getWidth(), (int) doPointsToBitmap.getHeight(), Bitmap.Config.ARGB_8888);
                    createBitmap.copyPixelsFromBuffer(ByteBuffer.wrap(doPointsToBitmap.getBitmapByteArray()));
                    File file = new File(CommonModule.getCommonModule().getTempPath(), "bitmap.png");
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        try {
                            createBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                            Log.d(SDKHelper.TAG, "Bitmap saved to: " + file.getAbsolutePath());
                            fileOutputStream.close();
                        } catch (Throwable th) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    } catch (IOException e) {
                        Log.e(SDKHelper.TAG, "Failed to save bitmap", e);
                    }
                    LogUtil.m57653d(SDKHelper.TAG, "bitmap=" + createBitmap);
                } catch (Exception unused) {
                    LogUtil.m57653d(SDKHelper.TAG, "没有获取到测试数据，任务结束");
                }
            }
        });
    }

    private void testBathCover() {
        File[] listFiles;
        File file = new File(Environment.getExternalStorageDirectory(), "00bug/bbk0310");
        if (!file.exists() || (listFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : listFiles) {
            if (file2.isFile()) {
                C13596d.m53564b(HWRCommonUtil.readFile2String(file2));
            }
        }
    }

    private void testCoverPath() {
        C13596d.m53563a("{\"handwritingInfoList\":[{\"endTimestamp\":1711540770123,\"startTimestamp\":1711540770022,\"strokeTouchEventInfoList\":[{\"eventType\":0,\"pressure\":0.051770456,\"touchX\":1240.533,\"touchY\":381.23138},{\"eventType\":2,\"pressure\":0.09010989,\"touchX\":1240.533,\"touchY\":381.23138},{\"eventType\":2,\"pressure\":0.19487181,\"touchX\":1238.5321,\"touchY\":390.237},{\"eventType\":2,\"pressure\":0.24615386,\"touchX\":1237.4315,\"touchY\":402.44464},{\"eventType\":2,\"pressure\":0.26813188,\"touchX\":1236.8313,\"touchY\":412.651},{\"eventType\":2,\"pressure\":0.2722833,\"touchX\":1236.9314,\"touchY\":419.25513},{\"eventType\":2,\"pressure\":0.23516485,\"touchX\":1237.5316,\"touchY\":423.5578},{\"eventType\":2,\"pressure\":0.20293042,\"touchX\":1238.432,\"touchY\":425.05878},{\"eventType\":1,\"pressure\":0.20293042,\"touchX\":1238.432,\"touchY\":425.05878}]},{\"endTimestamp\":1711540770556,\"startTimestamp\":1711540770324,\"strokeTouchEventInfoList\":[{\"eventType\":0,\"pressure\":0.051770456,\"touchX\":1316.9657,\"touchY\":379.63037},{\"eventType\":2,\"pressure\":0.0942613,\"touchX\":1316.9657,\"touchY\":379.63037},{\"eventType\":2,\"pressure\":0.20512822,\"touchX\":1314.4647,\"touchY\":385.43402},{\"eventType\":2,\"pressure\":0.25836387,\"touchX\":1311.0632,\"touchY\":395.8405},{\"eventType\":2,\"pressure\":0.2859585,\"touchX\":1309.8627,\"touchY\":403.84552},{\"eventType\":2,\"pressure\":0.30500612,\"touchX\":1311.5635,\"touchY\":409.2489},{\"eventType\":2,\"pressure\":0.31746033,\"touchX\":1315.1649,\"touchY\":411.25012},{\"eventType\":2,\"pressure\":0.32405373,\"touchX\":1320.067,\"touchY\":408.44836},{\"eventType\":2,\"pressure\":0.32869354,\"touchX\":1327.0701,\"touchY\":401.6441},{\"eventType\":2,\"pressure\":0.34383395,\"touchX\":1333.1727,\"touchY\":393.2389},{\"eventType\":2,\"pressure\":0.37387058,\"touchX\":1336.274,\"touchY\":385.6341},{\"eventType\":2,\"pressure\":0.40659344,\"touchX\":1336.274,\"touchY\":379.93054},{\"eventType\":2,\"pressure\":0.42930406,\"touchX\":1333.673,\"touchY\":376.72858},{\"eventType\":2,\"pressure\":0.42539686,\"touchX\":1330.5715,\"touchY\":375.828},{\"eventType\":2,\"pressure\":0.35848597,\"touchX\":1327.1702,\"touchY\":376.8286},{\"eventType\":2,\"pressure\":0.30915752,\"touchX\":1326.2698,\"touchY\":378.02936},{\"eventType\":1,\"pressure\":0.30915752,\"touchX\":1326.2698,\"touchY\":378.02936}]},{\"endTimestamp\":1711540770905,\"startTimestamp\":1711540770674,\"strokeTouchEventInfoList\":[{\"eventType\":0,\"pressure\":0.070573874,\"touchX\":1387.0958,\"touchY\":367.3227},{\"eventType\":2,\"pressure\":0.11208792,\"touchX\":1387.0958,\"touchY\":367.3227},{\"eventType\":2,\"pressure\":0.20659342,\"touchX\":1387.0958,\"touchY\":367.3227},{\"eventType\":2,\"pressure\":0.23174605,\"touchX\":1389.8971,\"touchY\":374.227},{\"eventType\":2,\"pressure\":0.24639806,\"touchX\":1391.9979,\"touchY\":383.53284},{\"eventType\":2,\"pressure\":0.2732601,\"touchX\":1393.8988,\"touchY\":392.13818},{\"eventType\":2,\"pressure\":0.2993895,\"touchX\":1396.4999,\"touchY\":399.04248},{\"eventType\":2,\"pressure\":0.32039073,\"touchX\":1400.0015,\"touchY\":402.64478},{\"eventType\":2,\"pressure\":0.34017095,\"touchX\":1404.9036,\"touchY\":402.64478},{\"eventType\":2,\"pressure\":0.35897437,\"touchX\":1410.706,\"touchY\":398.8424},{\"eventType\":2,\"pressure\":0.37924302,\"touchX\":1415.9082,\"touchY\":392.03815},{\"eventType\":2,\"pressure\":0.41147745,\"touchX\":1417.609,\"touchY\":384.83362},{\"eventType\":2,\"pressure\":0.44957268,\"touchX\":1416.0083,\"touchY\":378.42963},{\"eventType\":2,\"pressure\":0.4683761,\"touchX\":1410.506,\"touchY\":374.32703},{\"eventType\":2,\"pressure\":0.3772894,\"touchX\":1402.4025,\"touchY\":374.12695},{\"eventType\":2,\"pressure\":0.2976801,\"touchX\":1396.9,\"touchY\":375.828},{\"eventType\":1,\"pressure\":0.2976801,\"touchX\":1396.9,\"touchY\":375.828}]},{\"endTimestamp\":1711540771442,\"startTimestamp\":1711540771323,\"strokeTouchEventInfoList\":[{\"eventType\":0,\"pressure\":0.06935287,\"touchX\":1136.6884,\"touchY\":505.00873},{\"eventType\":2,\"pressure\":0.12478633,\"touchX\":1136.6884,\"touchY\":505.00873},{\"eventType\":2,\"pressure\":0.23369965,\"touchX\":1136.9884,\"touchY\":504.60846},{\"eventType\":2,\"pressure\":0.26324788,\"touchX\":1137.2886,\"touchY\":504.10815},{\"eventType\":2,\"pressure\":0.2925519,\"touchX\":1142.5908,\"touchY\":504.10815},{\"eventType\":2,\"pressure\":0.31941393,\"touchX\":1154.2959,\"touchY\":503.5078},{\"eventType\":2,\"pressure\":0.32649574,\"touchX\":1167.0013,\"touchY\":502.4071},{\"eventType\":2,\"pressure\":0.2984127,\"touchX\":1179.8068,\"touchY\":500.70605},{\"eventType\":2,\"pressure\":0.23052505,\"touchX\":1187.9103,\"touchY\":498.5047},{\"eventType\":1,\"pressure\":0.23052505,\"touchX\":1187.9103,\"touchY\":498.5047}]},{\"endTimestamp\":1711540772043,\"startTimestamp\":1711540771840,\"strokeTouchEventInfoList\":[{\"eventType\":0,\"pressure\":0.047619052,\"touchX\":1314.0645,\"touchY\":459.3802},{\"eventType\":2,\"pressure\":0.083760686,\"touchX\":1314.0645,\"touchY\":459.3802},{\"eventType\":2,\"pressure\":0.18583639,\"touchX\":1316.8657,\"touchY\":460.28076},{\"eventType\":2,\"pressure\":0.24151406,\"touchX\":1323.7687,\"touchY\":464.78357},{\"eventType\":2,\"pressure\":0.2732601,\"touchX\":1326.2698,\"touchY\":469.68665},{\"eventType\":2,\"pressure\":0.2903541,\"touchX\":1324.9692,\"touchY\":475.59033},{\"eventType\":2,\"pressure\":0.3010989,\"touchX\":1320.5673,\"touchY\":482.4947},{\"eventType\":2,\"pressure\":0.31355312,\"touchX\":1315.9653,\"touchY\":489.49902},{\"eventType\":2,\"pressure\":0.33797315,\"touchX\":1312.664,\"touchY\":494.4021},{\"eventType\":2,\"pressure\":0.37094018,\"touchX\":1313.1641,\"touchY\":496.20325},{\"eventType\":2,\"pressure\":0.40195364,\"touchX\":1318.9666,\"touchY\":495.5028},{\"eventType\":2,\"pressure\":0.41440785,\"touchX\":1330.6716,\"touchY\":492.40088},{\"eventType\":2,\"pressure\":0.38730162,\"touchX\":1344.0774,\"touchY\":486.69727},{\"eventType\":2,\"pressure\":0.31623933,\"touchX\":1354.982,\"touchY\":481.29388},{\"eventType\":1,\"pressure\":0.31623933,\"touchX\":1354.982,\"touchY\":481.29388}]},{\"endTimestamp\":1711540772438,\"startTimestamp\":1711540772176,\"strokeTouchEventInfoList\":[{\"eventType\":0,\"pressure\":0.09987791,\"touchX\":1393.8988,\"touchY\":436.26575},{\"eventType\":2,\"pressure\":0.3015873,\"touchX\":1393.8988,\"touchY\":436.1657},{\"eventType\":2,\"pressure\":0.33601955,\"touchX\":1393.8988,\"touchY\":436.1657},{\"eventType\":2,\"pressure\":0.33162394,\"touchX\":1396.3999,\"touchY\":437.16632},{\"eventType\":2,\"pressure\":0.32087913,\"touchX\":1405.2036,\"touchY\":438.26703},{\"eventType\":2,\"pressure\":0.31526253,\"touchX\":1411.5063,\"touchY\":437.16632},{\"eventType\":2,\"pressure\":0.32063493,\"touchX\":1415.1079,\"touchY\":436.06567},{\"eventType\":2,\"pressure\":0.34041515,\"touchX\":1416.2084,\"touchY\":435.76544},{\"eventType\":2,\"pressure\":0.37118438,\"touchX\":1415.4081,\"touchY\":436.66602},{\"eventType\":2,\"pressure\":0.40463984,\"touchX\":1413.8074,\"touchY\":440.66852},{\"eventType\":2,\"pressure\":0.44249088,\"touchX\":1411.6064,\"touchY\":449.67413},{\"eventType\":2,\"pressure\":0.4761905,\"touchX\":1409.4054,\"touchY\":464.18323},{\"eventType\":2,\"pressure\":0.49328452,\"touchX\":1406.9044,\"touchY\":481.19385},{\"eventType\":2,\"pressure\":0.48717952,\"touchX\":1405.0035,\"touchY\":496.40338},{\"eventType\":2,\"pressure\":0.44468868,\"touchX\":1404.4033,\"touchY\":506.9099},{\"eventType\":2,\"pressure\":0.31843713,\"touchX\":1404.7035,\"touchY\":513.11383},{\"eventType\":2,\"pressure\":0.23736265,\"touchX\":1404.5033,\"touchY\":514.9149},{\"eventType\":1,\"pressure\":0.23736265,\"touchX\":1404.5033,\"touchY\":514.9149}]},{\"endTimestamp\":1711540773071,\"startTimestamp\":1711540772746,\"strokeTouchEventInfoList\":[{\"eventType\":0,\"pressure\":0.09010989,\"touchX\":1086.6669,\"touchY\":588.36084},{\"eventType\":2,\"pressure\":0.2771673,\"touchX\":1086.6669,\"touchY\":588.36084},{\"eventType\":2,\"pressure\":0.32087913,\"touchX\":1086.6669,\"touchY\":588.36084},{\"eventType\":2,\"pressure\":0.34700856,\"touchX\":1089.8682,\"touchY\":589.0613},{\"eventType\":2,\"pressure\":0.38070822,\"touchX\":1108.076,\"touchY\":588.9612},{\"eventType\":2,\"pressure\":0.41343105,\"touchX\":1137.0885,\"touchY\":586.1595},{\"eventType\":2,\"pressure\":0.44493288,\"touchX\":1177.3058,\"touchY\":580.1557},{\"eventType\":2,\"pressure\":0.48424911,\"touchX\":1223.6256,\"touchY\":571.1501},{\"eventType\":2,\"pressure\":0.53040296,\"touchX\":1274.1473,\"touchY\":562.0444},{\"eventType\":2,\"pressure\":0.5770452,\"touchX\":1325.3694,\"touchY\":555.3402},{\"eventType\":2,\"pressure\":0.63003665,\"touchX\":1371.1891,\"touchY\":551.3377},{\"eventType\":2,\"pressure\":0.6893773,\"touchX\":1411.8065,\"touchY\":549.63666},{\"eventType\":2,\"pressure\":0.73650795,\"touchX\":1445.3209,\"touchY\":547.8355},{\"eventType\":2,\"pressure\":0.76605624,\"touchX\":1475.6339,\"touchY\":544.6335},{\"eventType\":2,\"pressure\":0.78021985,\"touchX\":1499.244,\"touchY\":542.03186},{\"eventType\":2,\"pressure\":0.78461546,\"touchX\":1514.6506,\"touchY\":540.53094},{\"eventType\":2,\"pressure\":0.78388286,\"touchX\":1523.2544,\"touchY\":539.93054},{\"eventType\":2,\"pressure\":0.77411485,\"touchX\":1527.3561,\"touchY\":539.6304},{\"eventType\":2,\"pressure\":0.72478634,\"touchX\":1529.1569,\"touchY\":539.43024},{\"eventType\":2,\"pressure\":0.52380955,\"touchX\":1528.7567,\"touchY\":539.03},{\"eventType\":2,\"pressure\":0.38949943,\"touchX\":1527.8563,\"touchY\":538.62976},{\"eventType\":1,\"pressure\":0.38949943,\"touchX\":1527.8563,\"touchY\":538.62976}]},{\"endTimestamp\":1711540775509,\"startTimestamp\":1711540775178,\"strokeTouchEventInfoList\":[{\"eventType\":0,\"pressure\":0.094749704,\"touchX\":1411.0061,\"touchY\":590.7623},{\"eventType\":2,\"pressure\":0.2967033,\"touchX\":1411.2062,\"touchY\":590.46216},{\"eventType\":2,\"pressure\":0.35433456,\"touchX\":1411.3063,\"touchY\":590.162},{\"eventType\":2,\"pressure\":0.37558,\"touchX\":1417.909,\"touchY\":592.36334},{\"eventType\":2,\"pressure\":0.38730162,\"touchX\":1425.7124,\"touchY\":593.86426},{\"eventType\":2,\"pressure\":0.39316243,\"touchX\":1432.0151,\"touchY\":595.76544},{\"eventType\":2,\"pressure\":0.39609283,\"touchX\":1434.6163,\"touchY\":598.5672},{\"eventType\":2,\"pressure\":0.39731383,\"touchX\":1433.4158,\"touchY\":602.5697},{\"eventType\":2,\"pressure\":0.39951164,\"touchX\":1427.4132,\"touchY\":608.27325},{\"eventType\":2,\"pressure\":0.42246646,\"touchX\":1420.6102,\"touchY\":614.3771},{\"eventType\":2,\"pressure\":0.44664228,\"touchX\":1416.2084,\"touchY\":618.0794},{\"eventType\":2,\"pressure\":0.43736267,\"touchX\":1416.7086,\"touchY\":619.78046},{\"eventType\":2,\"pressure\":0.42124546,\"touchX\":1421.4106,\"touchY\":619.9806},{\"eventType\":2,\"pressure\":0.41343105,\"touchX\":1429.214,\"touchY\":619.38025},{\"eventType\":2,\"pressure\":0.42002445,\"touchX\":1435.7168,\"touchY\":619.88055},{\"eventType\":2,\"pressure\":0.44200248,\"touchX\":1438.618,\"touchY\":622.5822},{\"eventType\":2,\"pressure\":0.4725275,\"touchX\":1436.5171,\"touchY\":627.6854},{\"eventType\":2,\"pressure\":0.49914533,\"touchX\":1431.9152,\"touchY\":634.0894},{\"eventType\":2,\"pressure\":0.51233214,\"touchX\":1424.812,\"touchY\":639.0925},{\"eventType\":2,\"pressure\":0.4737485,\"touchX\":1420.01,\"touchY\":642.0944},{\"eventType\":2,\"pressure\":0.38021982,\"touchX\":1418.0092,\"touchY\":642.8949},{\"eventType\":1,\"pressure\":0.38021982,\"touchX\":1418.0092,\"touchY\":642.8949}]},{\"endTimestamp\":1711540776057,\"startTimestamp\":1711540775756,\"strokeTouchEventInfoList\":[{\"eventType\":0,\"pressure\":0.071794875,\"touchX\":1340.876,\"touchY\":588.561},{\"eventType\":2,\"pressure\":0.12991454,\"touchX\":1340.876,\"touchY\":588.561},{\"eventType\":2,\"pressure\":0.26984128,\"touchX\":1340.876,\"touchY\":588.561},{\"eventType\":2,\"pressure\":0.32332113,\"touchX\":1340.876,\"touchY\":588.561},{\"eventType\":2,\"pressure\":0.35164836,\"touchX\":1344.5776,\"touchY\":591.36273},{\"eventType\":2,\"pressure\":0.36947498,\"touchX\":1354.0817,\"touchY\":593.6641},{\"eventType\":2,\"pressure\":0.37875462,\"touchX\":1364.286,\"touchY\":593.2639},{\"eventType\":2,\"pressure\":0.38217342,\"touchX\":1374.0903,\"touchY\":591.26263},{\"eventType\":2,\"pressure\":0.38241762,\"touchX\":1379.7927,\"touchY\":589.6616},{\"eventType\":2,\"pressure\":0.38949943,\"touchX\":1381.9937,\"touchY\":589.0613},{\"eventType\":2,\"pressure\":0.40634924,\"touchX\":1381.6936,\"touchY\":588.9612},{\"eventType\":2,\"pressure\":0.41929185,\"touchX\":1380.293,\"touchY\":589.86176},{\"eventType\":2,\"pressure\":0.43223447,\"touchX\":1377.892,\"touchY\":592.9637},{\"eventType\":2,\"pressure\":0.45201468,\"touchX\":1373.7902,\"touchY\":599.5678},{\"eventType\":2,\"pressure\":0.4810745,\"touchX\":1368.4879,\"touchY\":613.4765},{\"eventType\":2,\"pressure\":0.51648355,\"touchX\":1361.885,\"touchY\":635.1901},{\"eventType\":2,\"pressure\":0.5448108,\"touchX\":1353.9817,\"touchY\":662.00684},{\"eventType\":2,\"pressure\":0.53626376,\"touchX\":1346.1783,\"touchY\":688.3233},{\"eventType\":2,\"pressure\":0.41636145,\"touchX\":1341.076,\"touchY\":709.63666},{\"eventType\":2,\"pressure\":0.32991454,\"touchX\":1340.3759,\"touchY\":717.4415},{\"eventType\":1,\"pressure\":0.32991454,\"touchX\":1340.3759,\"touchY\":717.4415}]}],\"recognizeWords\":\"https://aifamily-education-dn.tiancaixing.net/aifamily-education/pic/25775817/2024/03/27/0945/7223/cbc53e5dde945182f0076996b6ac6f8c.png\"}");
    }

    private void testEditor() {
        test1(new Editor[2]);
    }

    private void testErrorReplace() {
        HWRErrorReplaceTest.test();
    }

    private void testModelPrediction() {
        HWRModelPredictionUtil.getConfigBean("H _ { 2 } S + O _ { 2 } \\mathop { = } ^ { 点 燃 } S + H _ { 2 } O").getShowName();
    }

    public static void testPoint() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new TestBean(0, HWRModelPredictionUtil.EN_US, "points/2025-03-13-18-15-30-832_point.txt"));
        testPointForAssets(arrayList, 0);
    }

    public static void testPoint10() {
        File file = new File(Environment.getExternalStorageDirectory(), "bbk");
        String[] split = HWRUtil.readAssetsFileToString(new FileInputStream(new File(file.getPath(), "cache/log/app/log_2024_05_06.txt"))).split("数据分析开始：");
        ArrayList arrayList = new ArrayList();
        for (String str : split) {
            String substring = str.substring(0, str.indexOf("数据分析结束"));
            LogUtil.m57653d(TAG, "item=" + substring);
            String[] split2 = substring.split(TAG);
            String replace = split2[0].replace("任务id=", "");
            String replace2 = split2[1].replace("configBean=", "");
            String str2 = file.getPath() + split2[2].replace("保存点位地址=", "").split("/cache/hwr")[1];
            ConfigBean configBean = (ConfigBean) new Gson().fromJson(replace2, ConfigBean.class);
            LogUtil.m57653d(TAG, "数据分析开始：任务id=" + replace + TAG + "configBean=" + configBean + TAG + "保存点位地址=" + str2 + "数据分析结束");
            arrayList.add(new TestBean(arrayList.size(), configBean, str2));
        }
        testPointForAssets(arrayList, 0);
    }

    public static void testPoint2() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new TestBean(0, HWRModelPredictionUtil.EN_US, "cache/hwr/tool_output/2025-03-13-09-36-54-574_point.txt"));
        testPointForAssets(arrayList, 0);
    }

    public static void testPoint3() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 1000; i++) {
            int size = arrayList.size();
            ConfigBean configBean = HWRModelPredictionUtil.MATH_ZH;
            arrayList.add(new TestBean(size, configBean, "points/1.txt"));
            arrayList.add(new TestBean(arrayList.size(), configBean, "points/1.txt"));
            arrayList.add(new TestBean(arrayList.size(), HWRModelPredictionUtil.MATH_GENERIC, "points/1.txt"));
            arrayList.add(new TestBean(arrayList.size(), HWRModelPredictionUtil.MATH_CALCULATOR, "points/1.txt"));
            int size2 = arrayList.size();
            ConfigBean configBean2 = HWRModelPredictionUtil.EN_US;
            arrayList.add(new TestBean(size2, configBean2, "points/1.txt"));
            arrayList.add(new TestBean(arrayList.size(), configBean2, "points/1.txt"));
            int size3 = arrayList.size();
            ConfigBean configBean3 = HWRModelPredictionUtil.ZH_CN;
            arrayList.add(new TestBean(size3, configBean3, "points/1.txt"));
            arrayList.add(new TestBean(arrayList.size(), configBean3, "points/1.txt"));
            arrayList.add(new TestBean(arrayList.size(), HWRModelPredictionUtil.MATH_CHEM, "points/1.txt"));
            arrayList.add(new TestBean(arrayList.size(), HWRModelPredictionUtil.MATH_VERTICAL, "points/1.txt"));
        }
        testPointForAssets(arrayList, 0);
    }

    public static void testPointForAssets(final List<TestBean> list, final int i) {
        try {
            if (i >= list.size()) {
                HWRSimpleRecognize.release();
                return;
            }
            TestBean testBean = list.get(i);
            HWRSimpleRecognize.startRecognize(testBean.getConfigBean(), (List) new Gson().fromJson(HWRUtil.readAssetsFileToString(HWREngineVariable.sHWRApplication.getAssets().open(testBean.getPointFile())), new TypeToken<List<RecognizePath>>() { // from class: com.sunia.commonv2.hwr.SDKHelper.6
            }.getType()), new CoreCommonCallback<HWRSimpleResult>() { // from class: com.sunia.commonv2.hwr.SDKHelper.7
                @Override // com.sunia.commonv2.callback.CoreCommonCallback
                public void onError(Throwable th) {
                    HWRSimpleRecognize.release();
                    throw new RuntimeException(th);
                }

                @Override // com.sunia.commonv2.callback.CoreCommonCallback
                public void onSuccess(HWRSimpleResult hWRSimpleResult) {
                    SDKHelper.testPointForAssets(list, i + 1);
                }
            });
        } catch (IOException e) {
            HWRSimpleRecognize.release();
            throw new RuntimeException(e);
        }
    }

    private void testPointForFile() {
        ArrayList arrayList = new ArrayList();
        String str = Environment.getExternalStorageDirectory() + "/00bug/";
        arrayList.add(new TestBean(arrayList.size(), HWRModelPredictionUtil.MATH_VERTICAL, str + "竖式识别点位.txt"));
    }

    private void testRecognizePoint2RecognizePath() {
        List<RecognizePoint> list = (List) HWREngineConstant.Constant.GSON.fromJson(HWRCommonUtil.readFile2String(new File(Environment.getExternalStorageDirectory(), "00bug/point30M.txt")), new TypeToken<List<RecognizePoint>>() { // from class: com.sunia.commonv2.hwr.SDKHelper.2
        }.getType());
        ArrayList arrayList = new ArrayList();
        RecognizePath recognizePath = null;
        for (RecognizePoint recognizePoint : list) {
            if (recognizePoint.action == 0) {
                recognizePath = new RecognizePath();
                arrayList.add(recognizePath);
            }
            recognizePath.getPoints().add(recognizePoint);
        }
        HWRCommonUtil.saveTestToolPoints(arrayList, new File(Environment.getExternalStorageDirectory(), "00bug/point30MV2.txt"));
    }

    public void cancelKeepScreenOn(Activity activity) {
        Window window = activity.getWindow();
        if (window != null) {
            window.clearFlags(128);
        }
    }

    public void keepScreenOn(Activity activity) {
        Window window = activity.getWindow();
        if (window != null) {
            window.addFlags(128);
        }
    }

    public void test() {
        new Thread() { // from class: com.sunia.commonv2.hwr.SDKHelper.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    if (HWREngineVariable.sReleaseMode) {
                        LogUtil.m57653d(SDKHelper.TAG, "current is release mode,can't test");
                    } else {
                        Thread.sleep(6000L);
                    }
                } catch (Exception e) {
                    LogUtil.m57654e(SDKHelper.TAG, "test error");
                    LogUtil.m57655e(SDKHelper.TAG, e);
                }
            }
        }.start();
    }

    public void test4(Context context) {
        new Thread() { // from class: com.sunia.commonv2.hwr.SDKHelper.10
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    Thread.sleep(5000L);
                } catch (InterruptedException e) {
                    LogUtil.m57655e(SDKHelper.TAG, e);
                }
                final boolean[] zArr = {false};
                SDKHelper.this.lastPathId = 0;
                HWRHelper.createEditor(SDKHelper.TAG, ERecognitionMode.MODE_ECR, new ConfigBean("recognize/conf/zh_CN", "zh_CN.conf"), new RecognizeListener() { // from class: com.sunia.commonv2.hwr.SDKHelper.10.1
                    @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
                    public void onAssociationalChanged(Editor editor, String str) {
                    }

                    @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
                    public void onCandidateChanged(Editor editor, String str) {
                    }

                    @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
                    public void onContentChanged(Editor editor, String str) {
                    }

                    @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
                    public void onError(Editor editor, int i, Exception exc) {
                        LogUtil.m57654e(SDKHelper.TAG, "onError" + Log.getStackTraceString(exc));
                    }

                    @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
                    public void onLoaded(Editor editor) {
                        boolean[] zArr2 = zArr;
                        int i = 0;
                        if (!zArr2[0]) {
                            zArr2[0] = true;
                            Params obtainParams = editor.obtainParams();
                            obtainParams.setKeyValuesConfig("enableStrokeId=true;enableTextModelAlignmentRelation=true;");
                            editor.updateParams(obtainParams);
                            return;
                        }
                        LogUtil.m57653d(SDKHelper.TAG, "001中文引擎初始化成功");
                        try {
                            List list = (List) new Gson().fromJson(HWRUtil.readAssetsFileToString(HWREngineVariable.sHWRApplication.getAssets().open("points/test.txt")), new TypeToken<List<RecognizePath>>() { // from class: com.sunia.commonv2.hwr.SDKHelper.10.1.1
                            }.getType());
                            ArrayList arrayList = new ArrayList();
                            for (int i2 = 0; i2 < 3000; i2++) {
                                arrayList.add(list);
                            }
                            int size = arrayList.size();
                            LogUtil.m57653d(SDKHelper.TAG, "002，数据库查询成功，记录数：" + size);
                            if (size == 0) {
                                LogUtil.m57654e(SDKHelper.TAG, "003，没有数据，任务结束");
                                return;
                            }
                            while (i < size) {
                                StringBuilder sb = new StringBuilder();
                                sb.append("开始任务,进度：");
                                int i3 = i + 1;
                                sb.append(i3);
                                sb.append("/");
                                sb.append(size);
                                LogUtil.m57654e(SDKHelper.TAG, sb.toString());
                                List list2 = (List) arrayList.get(i);
                                if (HWRUtil.isEmpty((List<?>) list2)) {
                                    LogUtil.m57654e(SDKHelper.TAG, "005获取到的书写数据为空，忽略识别");
                                } else {
                                    SDKHelper.this.addOneRecognizeTask(editor, list2, i);
                                }
                                i = i3;
                            }
                        } catch (IOException unused) {
                            LogUtil.m57653d(SDKHelper.TAG, "没有获取到测试数据，任务结束");
                        }
                    }
                });
            }
        }.start();
    }

    private void test2() {
        ShapeEditeBean shapeEditeBean = new ShapeEditeBean(10);
        shapeEditeBean.setLabel("10,850.582214,777.737854,567.315909,1249.855036,1242.528939,1164.405925,850.582214,777.737854,52,2.360586,625.939828,1211.602766,567.315909,1249.855036,40,300.963409,51.824085,0.000000,674.649222,993.216819,550.576477,0.000000,52,2.360586,1176.224034,1141.963566,1242.528939,1164.405925,40,172.787476,51.824085,0.000000,909.944430,1246.813971,680.598389,0.000000,76,2.360586,859.370714,847.183965,850.582214,777.737854,40,44.611572,76.351837,0.000000,1074.647456,942.596526,550.576477,0.000000");
        RecognizePath recognizePath = new RecognizePath();
        for (int i = 150; i < 200; i += 3) {
            float f = i;
            recognizePath.getPoints().add(new RecognizePoint(f, f));
        }
        shapeEditeBean.getPathList().add(recognizePath);
        RecognizePath recognizePath2 = new RecognizePath();
        for (int i2 = 160; i2 < 210; i2 += 3) {
            float f2 = i2;
            recognizePath2.getPoints().add(new RecognizePoint(f2, f2));
        }
        shapeEditeBean.getPathList().add(recognizePath2);
        LogUtil.m57653d("test2", HWREngineConstant.Constant.GSON.toJson(shapeEditeBean));
    }

    public static void testPointForFile(final List<TestBean> list, final int i) {
        try {
            if (i >= list.size()) {
                HWRSimpleRecognize.release();
                return;
            }
            TestBean testBean = list.get(i);
            HWRSimpleRecognize.startRecognize(testBean.getConfigBean(), (List) new Gson().fromJson(HWRUtil.readAssetsFileToString(new FileInputStream(testBean.getPointFile())), new TypeToken<List<RecognizePath>>() { // from class: com.sunia.commonv2.hwr.SDKHelper.8
            }.getType()), new CoreCommonCallback<HWRSimpleResult>() { // from class: com.sunia.commonv2.hwr.SDKHelper.9
                @Override // com.sunia.commonv2.callback.CoreCommonCallback
                public void onError(Throwable th) {
                    HWRSimpleRecognize.release();
                    throw new RuntimeException(th);
                }

                @Override // com.sunia.commonv2.callback.CoreCommonCallback
                public void onSuccess(HWRSimpleResult hWRSimpleResult) {
                    SDKHelper.testPointForFile(list, i + 1);
                }
            });
        } catch (IOException e) {
            HWRSimpleRecognize.release();
            throw new RuntimeException(e);
        }
    }
}
