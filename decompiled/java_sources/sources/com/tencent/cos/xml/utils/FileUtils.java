package com.tencent.cos.xml.utils;

import android.util.Log;
import com.tencent.cos.xml.CosXmlBaseService;
import com.tencent.cos.xml.common.ClientErrorCode;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.qcloud.core.util.OkhttpInternalUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes10.dex */
public class FileUtils {
    public static boolean clearFile(String str) throws IOException {
        if (deleteFileIfExist(str)) {
            return new File(str).createNewFile();
        }
        return false;
    }

    public static boolean deleteFileIfExist(String str) {
        File file = new File(str);
        if (file.exists()) {
            return file.delete();
        }
        return false;
    }

    public static void intercept(String str, long j, long j2) throws IOException {
        if (j2 <= 0) {
            clearFile(str);
        }
        File file = new File(str);
        File file2 = new File(str.concat("." + System.currentTimeMillis() + ".temp"));
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        FileInputStream fileInputStream = new FileInputStream(file);
        if (j > 0 && fileInputStream.skip(j) != j) {
            throw new IOException("skip size is not equal to offset");
        }
        byte[] bArr = new byte[65536];
        long j3 = 65536;
        long min = Math.min(j3, j2);
        while (true) {
            int read = fileInputStream.read(bArr, 0, (int) min);
            if (read <= 0) {
                break;
            }
            fileOutputStream.write(bArr, 0, read);
            j2 -= read;
            min = Math.min(j3, j2);
        }
        deleteFileIfExist(str);
        if (file2.renameTo(file)) {
            return;
        }
        throw new IOException("rename to " + str + "failed");
    }

    public static File[] listFile(File file) {
        if (file == null || !file.isDirectory()) {
            return null;
        }
        return file.listFiles();
    }

    public static void saveInputStreamToTmpFile(InputStream inputStream, File file, long j, long j2) throws IOException {
        int read;
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                byte[] bArr = new byte[8192];
                long j3 = 0;
                if (j2 < 0) {
                    j2 = Long.MAX_VALUE;
                }
                if (j > 0) {
                    inputStream.skip(j);
                }
                while (j3 < j2 && (read = inputStream.read(bArr)) != -1) {
                    long j4 = read;
                    fileOutputStream2.write(bArr, 0, (int) Math.min(j4, j2 - j3));
                    j3 += j4;
                }
                fileOutputStream2.flush();
                OkhttpInternalUtils.closeQuietly(fileOutputStream2);
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                if (fileOutputStream != null) {
                    OkhttpInternalUtils.closeQuietly(fileOutputStream);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static String tempCache(InputStream inputStream) throws CosXmlClientException {
        String str;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            if (inputStream == null) {
                return null;
            }
            try {
                str = CosXmlBaseService.appCachePath + File.separator + "temp.tmp";
                Log.d("UnitTest", str);
                File file = new File(str);
                if (file.exists()) {
                    file.delete();
                }
                fileOutputStream = new FileOutputStream(file);
            } catch (IOException e) {
                e = e;
            }
            try {
                byte[] bArr = new byte[65536];
                while (true) {
                    int read = inputStream.read(bArr, 0, 65536);
                    if (read <= 0) {
                        fileOutputStream.flush();
                        CloseUtil.closeQuietly(fileOutputStream);
                        CloseUtil.closeQuietly(inputStream);
                        return str;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
            } catch (IOException e2) {
                e = e2;
                throw new CosXmlClientException(ClientErrorCode.IO_ERROR.getCode(), e);
            } catch (Throwable th) {
                th = th;
                fileOutputStream2 = fileOutputStream;
                CloseUtil.closeQuietly(fileOutputStream2);
                CloseUtil.closeQuietly(inputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
