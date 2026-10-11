package com.onyx.engine.sdk;

import android.content.Context;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;

/* loaded from: classes8.dex */
public class ResourceUtils {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final String NATIVE_RES_DIR = "engine-resources";
    public static final String RES_VERSION = "12";
    public static final String RES_VERSION_FILE = "res-version.txt";

    public static boolean copyAssetFile(Context context, String str, File file) {
        try {
            InputStream open = context.getAssets().open(str);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[65536];
                    while (true) {
                        int read = open.read(bArr);
                        if (read == -1) {
                            fileOutputStream.close();
                            open.close();
                            return true;
                        }
                        fileOutputStream.write(bArr, 0, read);
                    }
                } finally {
                }
            } finally {
            }
        } catch (Exception e) {
            Log.e(ResourceUtils.class.getSimpleName(), "", e);
            return false;
        }
    }

    public static boolean copyAssetPath(Context context, String str, File file) {
        try {
            String[] list = context.getAssets().list(str);
            if (list.length == 0) {
                copyAssetFile(context, str, file);
                return true;
            }
            if (!mkdirs(file)) {
                return false;
            }
            for (String str2 : list) {
                copyAssetPath(context, str + File.separator + str2, new File(file, str2));
            }
            return true;
        } catch (Exception e) {
            Log.e(ResourceUtils.class.getSimpleName(), "", e);
            return false;
        }
    }

    public static boolean deleteFile(File file) {
        if (!file.exists()) {
            return false;
        }
        file.delete();
        return true;
    }

    public static String getResourcePath(Context context) {
        File externalFilesDir = context.getExternalFilesDir(NATIVE_RES_DIR);
        if (isOutOfDate(externalFilesDir)) {
            deleteFile(externalFilesDir, true);
            initResources(context, externalFilesDir);
        }
        return externalFilesDir.getAbsolutePath();
    }

    private static void initResources(Context context, File file) {
        Log.d(ResourceUtils.class.getSimpleName(), "init engine resources");
        if (!copyAssetPath(context, "resources", file)) {
            throw new RuntimeException("copy resource failed");
        }
        if (!writeVersionInfo(file)) {
            throw new RuntimeException("write version failed");
        }
    }

    private static boolean isOutOfDate(File file) {
        if (new File(file, RES_VERSION_FILE).exists()) {
            return !"12".equals(readContentFromFile(r0));
        }
        return true;
    }

    public static boolean mkdirs(File file) {
        if (file.exists()) {
            if (file.isDirectory()) {
                return true;
            }
            if (!file.delete()) {
                Log.e(ResourceUtils.class.getSimpleName(), file.getAbsolutePath() + " delete for mkdirs failed");
                return false;
            }
        }
        if (file.mkdirs()) {
            return true;
        }
        Log.e(ResourceUtils.class.getSimpleName(), file.getAbsolutePath() + " mkdirs failed");
        return false;
    }

    public static String readContentFromFile(File file) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
            try {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        String sb2 = sb.toString();
                        bufferedReader.close();
                        return sb2;
                    }
                    if (sb.length() > 0) {
                        sb.append("\n");
                    }
                    sb.append(readLine);
                }
            } finally {
            }
        } catch (Exception e) {
            Log.e(ResourceUtils.class.getSimpleName(), "", e);
            return "";
        }
    }

    public static boolean writeContentToFile(String str, File file) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                fileOutputStream.write(str.getBytes(StandardCharsets.UTF_8));
                fileOutputStream.close();
                return true;
            } finally {
            }
        } catch (Exception e) {
            Log.e(ResourceUtils.class.getSimpleName(), "", e);
            return false;
        }
    }

    private static boolean writeVersionInfo(File file) {
        Log.d(ResourceUtils.class.getSimpleName(), "write engine resources version:12");
        File file2 = new File(file, RES_VERSION_FILE);
        file2.delete();
        return writeContentToFile("12", file2);
    }

    public static boolean deleteFile(File file, boolean z) {
        if (file.isFile()) {
            return deleteFile(file);
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null && listFiles.length > 0) {
            for (File file2 : listFiles) {
                if (z) {
                    deleteFile(file2, true);
                } else {
                    deleteFile(file2);
                }
            }
            return deleteFile(file);
        }
        return deleteFile(file);
    }
}
