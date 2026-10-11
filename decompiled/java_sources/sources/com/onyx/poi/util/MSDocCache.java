package com.onyx.poi.util;

import android.util.LruCache;
import com.onyx.common.util.FileUtils;
import com.onyx.common.util.JLog;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.Map;

/* loaded from: classes9.dex */
public class MSDocCache extends LruCache<String, String> {

    /* renamed from: d */
    public static final String f62949d = "MSDocCache";

    /* renamed from: e */
    public static final String f62950e = "msdoc.cache";

    /* renamed from: f */
    public static final String f62951f = "msdoc.cfg";

    /* renamed from: g */
    public static final int f62952g = 1;

    /* renamed from: a */
    public File f62953a;

    /* renamed from: b */
    public String f62954b;

    /* renamed from: c */
    public int f62955c;

    public MSDocCache(String str, int i, int i2) {
        super(i);
        this.f62954b = str;
        this.f62955c = i2;
        this.f62953a = new File(str, f62951f);
    }

    public static MSDocCache open(String str, int i) throws IOException {
        return open(str, i, 1);
    }

    /* renamed from: a */
    public final synchronized boolean m52144a() throws Exception {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(new File(this.f62954b, f62951f))));
            try {
                if (!m52145b(bufferedReader)) {
                    bufferedReader.close();
                    return false;
                }
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        bufferedReader.close();
                        return true;
                    }
                    String[] split = readLine.split(" ");
                    if (split.length == 2 && FileUtils.fileExist(new File(this.f62954b, split[0]))) {
                        put(split[0], split[1]);
                    }
                }
            } finally {
            }
        } catch (IOException e) {
            throw e;
        }
    }

    /* renamed from: b */
    public final boolean m52145b(BufferedReader bufferedReader) throws IOException {
        String readLine = bufferedReader.readLine();
        if (!f62950e.equals(readLine)) {
            JLog.m41642e(f62949d, "unexpected magic: %s", readLine);
            return false;
        }
        String readLine2 = bufferedReader.readLine();
        if (Integer.toString(this.f62955c).equals(readLine2)) {
            return true;
        }
        JLog.m41642e(f62949d, "unexpected version: %s", readLine2);
        return false;
    }

    /* renamed from: c */
    public final synchronized void m52146c() throws IOException {
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f62953a)));
            try {
                bufferedWriter.write(f62950e);
                bufferedWriter.newLine();
                bufferedWriter.write(Integer.toString(this.f62955c));
                for (Map.Entry<String, String> entry : snapshot().entrySet()) {
                    bufferedWriter.newLine();
                    bufferedWriter.write(entry.getKey());
                    bufferedWriter.write(" ");
                    bufferedWriter.write(entry.getValue());
                }
                bufferedWriter.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        bufferedWriter.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } catch (IOException e) {
            throw e;
        }
    }

    /* renamed from: d */
    public final void m52147d() {
        try {
            m52146c();
        } catch (IOException e) {
            JLog.m41643e(f62949d, e);
        }
    }

    public synchronized void delete() {
        evictAll();
        FileUtils.deleteFile(new File(this.f62954b), true);
    }

    public File getMSDocFile(String str) {
        if (get(str) != null) {
            return new File(this.f62954b, str);
        }
        return null;
    }

    public void put(String str) {
        if (get(str) == null) {
            put(str, Long.toString(System.currentTimeMillis()));
            m52147d();
        }
    }

    public static MSDocCache open(String str, int i, int i2) throws IOException {
        MSDocCache mSDocCache = new MSDocCache(str, i, i2);
        if (mSDocCache.f62953a.exists()) {
            try {
                if (mSDocCache.m52144a()) {
                    return mSDocCache;
                }
            } catch (Exception e) {
                JLog.m41643e(f62949d, e);
                mSDocCache.delete();
            }
        }
        FileUtils.mkdirs(mSDocCache.f62953a.getParentFile());
        mSDocCache.m52146c();
        return mSDocCache;
    }

    @Override // android.util.LruCache
    public void entryRemoved(boolean z, String str, String str2, String str3) {
        FileUtils.deleteFile(new File(this.f62954b, str), true);
    }
}
