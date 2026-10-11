package io.nano.tex.res;

import android.content.Context;
import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes10.dex */
public final class ResManager {
    private static final String TAG = "ResManager";
    private String rootDir;

    public ResManager(Context context) {
        this.rootDir = context.getFilesDir().getPath() + File.separator + "tex";
    }

    private static void copyTo(InputStream inputStream, String str) {
        BufferedOutputStream bufferedOutputStream = null;
        try {
            try {
                try {
                    byte[] bArr = new byte[2048];
                    BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(str));
                    while (true) {
                        try {
                            int read = inputStream.read(bArr);
                            if (read <= 0) {
                                break;
                            } else {
                                bufferedOutputStream2.write(bArr, 0, read);
                            }
                        } catch (Exception e) {
                            e = e;
                            bufferedOutputStream = bufferedOutputStream2;
                            Log.e(TAG, "Copy resource failed", e);
                            inputStream.close();
                            if (bufferedOutputStream != null) {
                                bufferedOutputStream.close();
                            }
                        } catch (Throwable th) {
                            th = th;
                            bufferedOutputStream = bufferedOutputStream2;
                            try {
                                inputStream.close();
                                if (bufferedOutputStream != null) {
                                    bufferedOutputStream.close();
                                }
                            } catch (IOException e2) {
                                Log.e(TAG, "Copy resource failed", e2);
                            }
                            throw th;
                        }
                    }
                    bufferedOutputStream2.flush();
                    inputStream.close();
                    bufferedOutputStream2.close();
                } catch (Exception e3) {
                    e = e3;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e4) {
            Log.e(TAG, "Copy resource failed", e4);
        }
    }

    private List<String> listRes() {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(ResManager.class.getResourceAsStream("RES_README")));
        ArrayList arrayList = new ArrayList();
        while (true) {
            try {
                try {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        arrayList.add(readLine);
                    } catch (IOException e) {
                        Log.e(TAG, "Failed to read resources", e);
                        bufferedReader.close();
                    }
                } catch (IOException e2) {
                    Log.e(TAG, "Failed to close resources file.", e2);
                }
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (IOException e3) {
                    Log.e(TAG, "Failed to close resources file.", e3);
                }
                throw th;
            }
        }
        bufferedReader.close();
        return arrayList;
    }

    public String getResourcesRootDirectory() {
        return this.rootDir;
    }

    public void unpackResources() {
        List<String> listRes = listRes();
        File file = new File(this.rootDir);
        if (!file.exists()) {
            file.mkdirs();
        }
        for (String str : listRes) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.rootDir);
            String str2 = File.separator;
            sb.append(str2);
            sb.append(str);
            if (!new File(sb.toString()).exists()) {
                int lastIndexOf = str.lastIndexOf(str2);
                if (lastIndexOf >= 0) {
                    File file2 = new File(this.rootDir + str2 + str.substring(0, lastIndexOf));
                    if (!file2.exists()) {
                        file2.mkdirs();
                    }
                }
                String str3 = this.rootDir + str2 + str;
                InputStream resourceAsStream = ResManager.class.getResourceAsStream(str);
                Log.i(TAG, "Copy resource: " + str);
                copyTo(resourceAsStream, str3);
            }
        }
    }
}
