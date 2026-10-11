package com.sunia.testv2;

import android.text.TextUtils;
import com.sunia.HTREnginev2.sdk.ERecognitionMode;
import com.sunia.HTREnginev2.sdk.RecognizeListener;
import com.sunia.HTREnginev2.sdk.editor.Editor;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.bean.ConfigBean;
import com.sunia.commonv2.hwr.HWRHelper;
import com.sunia.commonv2.module.CommonModule;
import com.sunia.commonv2.util.HWRUtil;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONObject;

/* loaded from: classes10.dex */
public class HWRErrorReplaceTest {
    private static final String TAG = "HWRErrorReplaceUtil";
    private static File[] allFile;
    private static File currentFile;
    private static Editor sEditor;
    public static final ConfigBean ZH_CN = new ConfigBean("error_replace/conf/zh_CN", "zh_CN.conf", "zh_CN");
    private static List<String> sTestList = new ArrayList();
    private static int fileIndex = 0;
    private static List<String> sTestListResult = new ArrayList();
    private static int currentIndex = 0;
    private static String currentWords = "";
    private static String currentWord0 = "";
    private static String currentWord1 = "";
    private static String FLAG = "\t";
    private static ExecutorService sExecutorService = Executors.newSingleThreadExecutor();
    private static RecognizeListener sRecognizeListener = new RecognizeListener() { // from class: com.sunia.testv2.HWRErrorReplaceTest.1
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
        public void onErrorReplaceChanged(Editor editor, String str) {
            LogUtil.m57657w(HWRErrorReplaceTest.TAG, "onErrorReplaceChanged,replaceStr=" + str);
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(HWRErrorReplaceTest.currentWords);
            stringBuffer.append(HWRErrorReplaceTest.FLAG);
            try {
                String string = new JSONObject(str).getString("content");
                String str2 = HWRErrorReplaceTest.currentWord1.equals(string) ? "正确" : "错误";
                stringBuffer.append("比较结果");
                stringBuffer.append(str2);
                stringBuffer.append(HWRErrorReplaceTest.FLAG);
                stringBuffer.append("识别结果");
                stringBuffer.append(string);
            } catch (Exception unused) {
                stringBuffer.append("解析异常");
            }
            HWRErrorReplaceTest.sTestListResult.add(stringBuffer.toString());
            HWRErrorReplaceTest.nextTest();
        }

        @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
        public void onLoaded(Editor editor) {
            Editor unused = HWRErrorReplaceTest.sEditor = editor;
            HWRErrorReplaceTest.access$100();
            HWRErrorReplaceTest.nextTest();
        }
    };

    public static /* synthetic */ boolean access$100() {
        return nextFile();
    }

    public static /* synthetic */ int access$708() {
        int i = currentIndex;
        currentIndex = i + 1;
        return i;
    }

    private static boolean nextFile() {
        try {
            int i = fileIndex;
            File[] fileArr = allFile;
            if (i >= fileArr.length) {
                LogUtil.m57657w(TAG, "测试完成");
                return false;
            }
            fileIndex = i + 1;
            currentFile = fileArr[i];
            LogUtil.m57653d(TAG, "开始执行纠错测试,firstFile=" + currentFile.getAbsolutePath());
            String[] split = HWRUtil.readAssetsFileToString(new FileInputStream(currentFile)).split("\r\n");
            LogUtil.m57653d(TAG, "split.length=" + split.length);
            sTestList.clear();
            sTestListResult.clear();
            currentIndex = 0;
            currentWords = "";
            currentWord0 = "";
            currentWord1 = "";
            for (String str : split) {
                sTestList.add(str);
            }
            return true;
        } catch (Exception e) {
            LogUtil.m57655e(TAG, e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void nextTest() {
        sExecutorService.execute(new Runnable() { // from class: com.sunia.testv2.HWRErrorReplaceTest.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (HWRErrorReplaceTest.currentIndex >= HWRErrorReplaceTest.sTestList.size()) {
                        LogUtil.m57657w(HWRErrorReplaceTest.TAG, "测试完成");
                        String[] split = HWRErrorReplaceTest.currentFile.getName().split("\\.");
                        File file = new File(HWRErrorReplaceTest.currentFile.getParentFile().getParent(), "2");
                        file.mkdirs();
                        File file2 = new File(file, split[0] + "_result." + split[1]);
                        HWRUtil.writeFileFromIS(file2, TextUtils.join("\r\n", HWRErrorReplaceTest.sTestListResult));
                        LogUtil.m57657w(HWRErrorReplaceTest.TAG, "测试结果输出完成，outputFile=" + file2);
                        if (!HWRErrorReplaceTest.access$100()) {
                            return;
                        }
                    }
                    String unused = HWRErrorReplaceTest.currentWords = (String) HWRErrorReplaceTest.sTestList.get(HWRErrorReplaceTest.access$708());
                    LogUtil.m57657w(HWRErrorReplaceTest.TAG, "测试进度，总文件数=" + HWRErrorReplaceTest.allFile.length + ",当前文件=" + HWRErrorReplaceTest.fileIndex + ",当前文件总行数=" + HWRErrorReplaceTest.sTestList.size() + ",当前测试行数=" + HWRErrorReplaceTest.currentIndex);
                    String[] split2 = HWRErrorReplaceTest.currentWords.split(HWRErrorReplaceTest.FLAG);
                    String str = split2[0];
                    String unused2 = HWRErrorReplaceTest.currentWord0 = split2[1];
                    String unused3 = HWRErrorReplaceTest.currentWord1 = split2[2];
                    HWRErrorReplaceTest.sEditor.getMixtureEditorV2().doErrorReplace("{ \"type\":\"errorWord\", \"content\":\"" + HWRErrorReplaceTest.currentWord0 + "\" }");
                } catch (Exception e) {
                    LogUtil.m57654e(HWRErrorReplaceTest.TAG, "nextTest异常:currentWords=" + HWRErrorReplaceTest.currentWords);
                    LogUtil.m57654e(HWRErrorReplaceTest.TAG, "需要包含2个Tab分隔符");
                    LogUtil.m57655e(HWRErrorReplaceTest.TAG, e);
                    throw new RuntimeException(e);
                }
            }
        });
    }

    public static void test() {
        try {
            File file = new File(CommonModule.getCommonModule().getErrorReplace(), "1");
            File file2 = new File(CommonModule.getCommonModule().getErrorReplace(), "2");
            HWRUtil.deleteDirectory(file2);
            file2.mkdirs();
            if (file.exists() && !file.isFile()) {
                File[] listFiles = file.listFiles();
                allFile = listFiles;
                if (HWRUtil.isEmpty(listFiles)) {
                    return;
                }
                HWRHelper.createEditor(TAG, ERecognitionMode.MODE_ECR, ZH_CN, sRecognizeListener);
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
