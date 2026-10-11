package com.sunia.commonv2.module;

import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.util.HWRCommonUtil;
import com.sunia.commonv2.util.HWRUtil;
import java.io.File;
import java.util.Arrays;
import java.util.Comparator;

/* loaded from: classes10.dex */
public class CommonHelper {
    private static final int MAX_FILE_NUM_100 = 100;
    private static final int MAX_FILE_NUM_1000 = 1000;
    private static final String TAG = "CommonHelper";

    /* JADX INFO: Access modifiers changed from: private */
    public static void checkFileNum(String str, int i) {
        if (HWRUtil.isEmpty(str)) {
            return;
        }
        File file = new File(str);
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (!HWRUtil.isEmpty(listFiles) && listFiles.length >= i) {
                Arrays.sort(listFiles, new Comparator<File>() { // from class: com.sunia.commonv2.module.CommonHelper.2
                    @Override // java.util.Comparator
                    public int compare(File file2, File file3) {
                        return Long.compare(file3.lastModified(), file2.lastModified());
                    }
                });
                LogUtil.m57653d(TAG, "delete Cached File in directory=" + str);
                while (i < listFiles.length) {
                    LogUtil.m57653d(TAG, "delete Cached File=" + listFiles[i].getPath());
                    listFiles[i].delete();
                    i++;
                }
            }
        }
    }

    public static void deleteCachedFile(final ICommonModule iCommonModule) {
        new Thread() { // from class: com.sunia.commonv2.module.CommonHelper.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    if (!ICommonModule.this.autoDeleteCacheFile()) {
                        LogUtil.m57657w(CommonHelper.TAG, "autoDeleteCacheFile is false, skip deleteCachedFile");
                        return;
                    }
                    if (HWRCommonUtil.isWhileList()) {
                        LogUtil.m57657w(CommonHelper.TAG, "isWhileList, skip deleteCachedFile");
                        return;
                    }
                    LogUtil.m57657w(CommonHelper.TAG, "start deleteCachedFile");
                    CommonHelper.checkFileNum(new File(ICommonModule.this.getAuthorizeFile()).getParent(), 100);
                    CommonHelper.checkFileNum(new File(ICommonModule.this.getTestVerifyDataFile()).getParent(), 100);
                    CommonHelper.checkFileNum(ICommonModule.this.getAuthorizeLogDir(), 100);
                    CommonHelper.checkFileNum(ICommonModule.this.getEngineLogDir(), 100);
                    CommonHelper.checkFileNum(ICommonModule.this.getAppLogDir(), 100);
                    CommonHelper.checkFileNum(ICommonModule.this.getTempPath(), 100);
                    CommonHelper.checkFileNum(ICommonModule.this.getConfigIncRecPath(), 100);
                    CommonHelper.checkFileNum(ICommonModule.this.getConfigExportGraphmlPath(), 100);
                    CommonHelper.checkFileNum(ICommonModule.this.getCameraPath(), 100);
                    CommonHelper.checkFileNum(ICommonModule.this.getExportPintPath(), 100);
                    CommonHelper.checkFileNum(ICommonModule.this.getErrorReplace(), 100);
                    CommonHelper.checkFileNum(ICommonModule.this.getRAGDir(), 1000);
                    CommonHelper.checkFileNum(ICommonModule.this.getCacheAssets(), 100);
                    LogUtil.m57657w(CommonHelper.TAG, "end deleteCachedFile");
                } catch (Exception e) {
                    e.printStackTrace();
                    LogUtil.m57657w(CommonHelper.TAG, "exception deleteCachedFile");
                    LogUtil.m57655e(CommonHelper.TAG, e);
                }
            }
        }.start();
    }
}
