package com.onyx.common.util;

import android.os.Environment;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes8.dex */
public class FileUtils {
    public static final int BUF_SIZE = 10240;
    public static final String TAG = "FileUtils";
    public static final SecureRandom random = new SecureRandom();

    public static String computeMD5(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return null;
        }
        return computeMD5(str.getBytes(Charset.defaultCharset()));
    }

    public static boolean copyFile(String str, String str2) {
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            try {
                FileChannel channel = fileInputStream.getChannel();
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(str2);
                    try {
                        FileChannel channel2 = fileOutputStream.getChannel();
                        try {
                            boolean z = channel.transferTo(0L, channel.size(), channel2) > 0;
                            if (channel2 != null) {
                                channel2.close();
                            }
                            fileOutputStream.close();
                            channel.close();
                            fileInputStream.close();
                            return z;
                        } finally {
                        }
                    } finally {
                    }
                } finally {
                }
            } finally {
            }
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static File createTempFile(String str, String str2) {
        return createTempFile(new File(Environment.getExternalStorageDirectory(), "temp").getAbsolutePath(), str, str2);
    }

    public static boolean deleteFile(String str) {
        return deleteFile(new File(str));
    }

    public static boolean deleteFiles(File[] fileArr, boolean z) {
        if (fileArr == null) {
            return true;
        }
        return deleteFiles((List<File>) Arrays.asList(fileArr), z);
    }

    public static boolean fileCanRead(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return false;
        }
        File file = new File(str);
        return file.exists() && file.canRead();
    }

    public static boolean fileExist(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return false;
        }
        return new File(str).exists();
    }

    public static void forceMkdir(File file) throws IOException {
        if (file.exists()) {
            if (file.isDirectory()) {
                return;
            }
            throw new IOException("File " + file + " exists and is not a directory. Unable to create directory.");
        }
        if (file.mkdirs() || file.isDirectory()) {
            return;
        }
        throw new IOException("Unable to create directory " + file);
    }

    public static String getBaseName(File file) {
        if (file == null) {
            return "";
        }
        if (file.isDirectory()) {
            return file.getName();
        }
        return getFileBaseName(file.getName());
    }

    public static String getExtension(File file) {
        String name = file.getName();
        int lastIndexOf = name.lastIndexOf(".");
        return lastIndexOf > 0 ? name.substring(lastIndexOf + 1).toLowerCase(Locale.getDefault()) : "";
    }

    public static String getFileBaseName(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return null;
        }
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf < 0 ? str : str.substring(0, lastIndexOf);
    }

    public static String getFileName(String str) {
        return new File(str).getName();
    }

    public static String getParent(String str) {
        return new File(str).getParent();
    }

    public static String getParentName(String str) {
        String parent = getParent(str);
        if (parent == null) {
            return null;
        }
        return getBaseName(parent);
    }

    public static String hexToString(byte[] bArr) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        char[] cArr2 = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = i << 1;
            byte b = bArr[i];
            cArr2[i2] = cArr[(b >> 4) & 15];
            cArr2[i2 + 1] = cArr[b & 15];
        }
        return String.valueOf(cArr2);
    }

    public static boolean mkdirs(File file) {
        return mkdirs(file, false);
    }

    public static byte[] readBytesFromFile(File file) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                byte[] readBytesFromStream = readBytesFromStream(fileInputStream);
                fileInputStream.close();
                return readBytesFromStream;
            } finally {
            }
        } catch (IOException e) {
            JLog.m41643e(TAG, e);
            return null;
        }
    }

    public static byte[] readBytesFromStream(InputStream inputStream) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[10240];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } catch (IOException e) {
            JLog.m41643e(TAG, e);
            return null;
        }
    }

    public static String readContentFromFile(String str) {
        return readContentFromFile(new File(str));
    }

    public static String readContentFromStream(InputStream inputStream) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
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
        } catch (IOException e) {
            JLog.m41643e(TAG, e);
            return null;
        }
    }

    public static boolean saveContentToFile(String str, String str2) {
        return saveContentToFile(str, new File(str2));
    }

    public static boolean saveToFile(InputStream inputStream, String str) {
        return saveToFile(inputStream, new File(str));
    }

    public static File createTempFile(String str, String str2, String str3) {
        File file = new File(str);
        if (file.exists() && file.isFile()) {
            throw new IllegalArgumentException(str + " is file!");
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        if (!StringUtils.isNullOrEmpty(str2)) {
            if (StringUtils.isNullOrEmpty(str3)) {
                str3 = ".tmp";
            }
            long nextLong = random.nextLong();
            return new File(file, str2 + (nextLong == Long.MIN_VALUE ? 0L : Math.abs(nextLong)) + str3);
        }
        throw new IllegalArgumentException("prefix is null");
    }

    public static boolean deleteFile(File file) {
        if (!file.exists()) {
            return false;
        }
        file.delete();
        return true;
    }

    public static boolean deleteFiles(List<File> list, boolean z) {
        if (list == null) {
            return true;
        }
        Iterator<File> it2 = list.iterator();
        while (it2.hasNext()) {
            if (!deleteFile(it2.next(), z)) {
                return false;
            }
        }
        return true;
    }

    public static boolean mkdirs(File file, boolean z) {
        if (file.isFile() && !file.delete()) {
            return false;
        }
        if (file.exists()) {
            return !z || deleteFiles(file.listFiles(), true);
        }
        return file.mkdirs();
    }

    public static String readContentFromFile(File file) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                String readContentFromStream = readContentFromStream(fileInputStream);
                fileInputStream.close();
                return readContentFromStream;
            } finally {
            }
        } catch (IOException e) {
            JLog.m41643e(TAG, e);
            return null;
        }
    }

    public static boolean saveContentToFile(String str, File file) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file);
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            fileOutputStream.write(str.getBytes("utf-8"));
            CloseUtils.close(fileOutputStream);
            return true;
        } catch (Exception e2) {
            e = e2;
            fileOutputStream2 = fileOutputStream;
            JLog.m41643e(TAG, e);
            CloseUtils.close(fileOutputStream2);
            return false;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            CloseUtils.close(fileOutputStream2);
            throw th;
        }
    }

    public static boolean saveToFile(InputStream inputStream, File file) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file);
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            byte[] bArr = new byte[10240];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    fileOutputStream.flush();
                    CloseUtils.close(inputStream);
                    CloseUtils.close(fileOutputStream);
                    return true;
                }
            }
        } catch (Exception e2) {
            e = e2;
            fileOutputStream2 = fileOutputStream;
            e.printStackTrace();
            CloseUtils.close(inputStream);
            CloseUtils.close(fileOutputStream2);
            return false;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            CloseUtils.close(inputStream);
            CloseUtils.close(fileOutputStream2);
            throw th;
        }
    }

    public static String computeMD5(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr, 0, bArr.length);
            return hexToString(messageDigest.digest());
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean deleteFile(File file, boolean z) {
        if (!file.isFile()) {
            File[] listFiles = file.listFiles();
            if (listFiles == null || listFiles.length <= 0) {
                return deleteFile(file);
            }
            for (File file2 : listFiles) {
                if (z) {
                    deleteFile(file2, true);
                } else {
                    deleteFile(file2);
                }
            }
        }
        return deleteFile(file);
    }

    public static boolean fileExist(File file) {
        return file != null && file.exists();
    }

    public static String getBaseName(String str) {
        return getBaseName(new File(str));
    }

    public static String getExtension(String str) {
        return getExtension(new File(str));
    }
}
