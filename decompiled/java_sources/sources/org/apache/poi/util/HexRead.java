package org.apache.poi.util;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

/* loaded from: classes13.dex */
public class HexRead {
    public static byte[] readData(String str) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(new File(str));
        try {
            byte[] readData = readData(fileInputStream, -1);
            fileInputStream.close();
            return readData;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    fileInputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public static byte[] readFromString(String str) {
        try {
            return readData(new ByteArrayInputStream(str.getBytes(StringUtil.UTF8)), -1);
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    private static void readToEOL(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        while (read != -1 && read != 10 && read != 13) {
            read = inputStream.read();
        }
    }

    public static byte[] readData(InputStream inputStream, String str) throws IOException {
        try {
            StringBuilder sb = new StringBuilder();
            int read = inputStream.read();
            boolean z = false;
            while (read != -1) {
                if (read == 10 || read == 13) {
                    sb = new StringBuilder();
                } else {
                    if (read == 91) {
                        z = true;
                    } else if (read != 93) {
                        if (z) {
                            sb.append((char) read);
                        }
                    } else {
                        if (sb.toString().equals(str)) {
                            return readData(inputStream, 91);
                        }
                        sb = new StringBuilder();
                    }
                    read = inputStream.read();
                }
                z = false;
                read = inputStream.read();
            }
            inputStream.close();
            throw new IOException("Section '" + str + "' not found");
        } finally {
            inputStream.close();
        }
    }

    public static byte[] readData(String str, String str2) throws IOException {
        return readData(new FileInputStream(str), str2);
    }

    public static byte[] readData(InputStream inputStream, int i) throws IOException {
        int i2;
        ArrayList arrayList = new ArrayList();
        loop0: while (true) {
            int i3 = 0;
            byte b = 0;
            while (true) {
                int read = inputStream.read();
                if (48 <= read && read <= 57) {
                    i2 = read - 48;
                } else if (65 <= read && read <= 70) {
                    i2 = read - 55;
                } else if (97 > read || read > 102) {
                    if (35 == read) {
                        readToEOL(inputStream);
                    } else if (-1 == read || i == read) {
                        break loop0;
                    }
                    i2 = -1;
                } else {
                    i2 = read - 87;
                }
                if (i2 != -1) {
                    b = (byte) (((byte) (b << 4)) + ((byte) i2));
                    i3++;
                    if (i3 == 2) {
                        break;
                    }
                }
            }
            arrayList.add(Byte.valueOf(b));
        }
        Byte[] bArr = (Byte[]) arrayList.toArray(new Byte[0]);
        byte[] bArr2 = new byte[bArr.length];
        for (int i4 = 0; i4 < bArr.length; i4++) {
            bArr2[i4] = bArr[i4].byteValue();
        }
        return bArr2;
    }
}
