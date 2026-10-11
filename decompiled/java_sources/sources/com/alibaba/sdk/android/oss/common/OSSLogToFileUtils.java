package com.alibaba.sdk.android.oss.common;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.os.StatFs;
import android.provider.MediaStore;
import com.alibaba.sdk.android.oss.ClientConfiguration;
import com.google.android.exoplayer2.offline.DefaultDownloadIndex;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes3.dex */
public class OSSLogToFileUtils {

    /* renamed from: b */
    public static final String f12923b = "OSSLog";

    /* renamed from: d */
    public static Context f12925d;

    /* renamed from: e */
    public static OSSLogToFileUtils f12926e;

    /* renamed from: f */
    public static File f12927f;

    /* renamed from: g */
    public static Uri f12928g;

    /* renamed from: a */
    public boolean f12931a = true;

    /* renamed from: c */
    public static LogThreadPoolManager f12924c = LogThreadPoolManager.newInstance();

    /* renamed from: h */
    public static SimpleDateFormat f12929h = new SimpleDateFormat(DateTimeUtil.FORMAT_YYYYMMDD_HHMMSS);

    /* renamed from: i */
    public static long f12930i = 5242880;

    /* renamed from: com.alibaba.sdk.android.oss.common.OSSLogToFileUtils$a */
    /* loaded from: classes3.dex */
    public static class RunnableC1756a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            File unused = OSSLogToFileUtils.f12927f = OSSLogToFileUtils.f12926e.m7646i();
            if (OSSLogToFileUtils.f12927f != null) {
                OSSLog.logInfo("LogFilePath is: " + OSSLogToFileUtils.f12927f.getPath(), false);
                if (OSSLogToFileUtils.f12930i < OSSLogToFileUtils.getLogFileSize(OSSLogToFileUtils.f12927f)) {
                    OSSLog.logInfo("init reset log file", false);
                    OSSLogToFileUtils.f12926e.resetLogFile();
                }
            }
        }
    }

    /* renamed from: com.alibaba.sdk.android.oss.common.OSSLogToFileUtils$b */
    /* loaded from: classes3.dex */
    public static class RunnableC1757b implements Runnable {

        /* renamed from: e */
        public Object f12932e;

        public RunnableC1757b(Object obj) {
            this.f12932e = obj;
        }

        /* renamed from: a */
        public final PrintWriter m7651a(PrintWriter printWriter) {
            printWriter.println("crash_time：" + OSSLogToFileUtils.f12929h.format(new Date()));
            ((Throwable) this.f12932e).printStackTrace(printWriter);
            return printWriter;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (OSSLogToFileUtils.f12927f != null) {
                OSSLogToFileUtils.getInstance();
                if (OSSLogToFileUtils.getLogFileSize(OSSLogToFileUtils.f12927f) > OSSLogToFileUtils.f12930i) {
                    OSSLogToFileUtils.getInstance().resetLogFile();
                }
                try {
                    PrintWriter printWriter = new PrintWriter((Writer) new FileWriter(OSSLogToFileUtils.f12927f, true), true);
                    if (this.f12932e instanceof Throwable) {
                        m7651a(printWriter);
                    } else {
                        printWriter.println(OSSLogToFileUtils.getInstance().m7645h(null) + " - " + this.f12932e.toString());
                    }
                    printWriter.println("------>end of log");
                    printWriter.println();
                    printWriter.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static OSSLogToFileUtils getInstance() {
        if (f12926e == null) {
            synchronized (OSSLogToFileUtils.class) {
                if (f12926e == null) {
                    f12926e = new OSSLogToFileUtils();
                }
            }
        }
        return f12926e;
    }

    public static long getLocalLogFileSize() {
        return getLogFileSize(f12927f);
    }

    public static long getLogFileSize(File file) {
        if (file == null || !file.exists()) {
            return 0L;
        }
        return file.length();
    }

    public static void init(Context context, ClientConfiguration clientConfiguration) {
        File file;
        OSSLog.logDebug("init ...", false);
        if (clientConfiguration != null) {
            f12930i = clientConfiguration.getMaxLogSize();
        }
        if (f12925d != null && f12926e != null && (file = f12927f) != null && file.exists()) {
            OSSLog.logDebug("LogToFileUtils has been init ...", false);
            return;
        }
        f12925d = context.getApplicationContext();
        f12926e = getInstance();
        f12924c.addExecuteTask(new RunnableC1756a());
    }

    public static void reset() {
        f12925d = null;
        f12926e = null;
        f12927f = null;
    }

    public void createNewFile(File file) {
        try {
            file.createNewFile();
        } catch (Exception e) {
            OSSLog.logError("Create log file failure !!! " + e.toString(), false);
        }
    }

    public void deleteLogFile() {
        File file = new File(f12927f.getParent() + "/logs.csv");
        if (file.exists()) {
            OSSLog.logDebug("delete Log File ... ", false);
            file.delete();
        }
    }

    public void deleteLogFileDir() {
        deleteLogFile();
        File file = new File(Environment.getExternalStorageDirectory().getPath() + File.separator + f12923b);
        if (file.exists()) {
            OSSLog.logDebug("delete Log FileDir ... ", false);
            file.delete();
        }
    }

    /* renamed from: h */
    public final String m7645h(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr != null) {
            return null;
        }
        return IteratorUtils.f104923a + f12929h.format(new Date()) + IteratorUtils.f104924b;
    }

    /* renamed from: i */
    public final File m7646i() {
        File file;
        boolean z = false;
        File file2 = null;
        try {
            if (this.f12931a) {
                Environment.getExternalStorageState().equals("mounted");
            }
            boolean z2 = m7650m() > f12930i / 1024;
            file = new File(f12925d.getFilesDir().getPath() + File.separator + f12923b);
            z = z2;
        } catch (Exception unused) {
            file = null;
        }
        if (z) {
            if (!file.exists()) {
                file.mkdirs();
            }
            file2 = new File(file.getPath() + "/logs.csv");
            if (!file2.exists()) {
                createNewFile(file2);
            }
        }
        return file2;
    }

    /* renamed from: j */
    public final Uri m7647j() {
        ContentResolver contentResolver = f12925d.getContentResolver();
        Uri m7648k = m7648k();
        if (m7648k != null) {
            return m7648k;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("_display_name", "logs.csv");
        contentValues.put(DefaultDownloadIndex.f24934i, "file/csv");
        contentValues.put("title", "logs.csv");
        contentValues.put("relative_path", "Documents/OSSLog");
        Uri insert = contentResolver.insert(MediaStore.Files.getContentUri("external"), contentValues);
        try {
            contentResolver.openFileDescriptor(insert, "w");
            return insert;
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: k */
    public final Uri m7648k() {
        ContentResolver contentResolver = f12925d.getContentResolver();
        Uri contentUri = MediaStore.Files.getContentUri("external");
        Cursor query = contentResolver.query(contentUri, new String[]{"_id"}, "relative_path like ? AND _display_name=?", new String[]{"Documents/OSSLog%", "logs.csv"}, null);
        if (query == null || !query.moveToFirst()) {
            return null;
        }
        Uri withAppendedId = ContentUris.withAppendedId(contentUri, query.getLong(0));
        query.close();
        return withAppendedId;
    }

    /* renamed from: l */
    public final long m7649l() {
        long j = 0;
        if ("mounted".equals(Environment.getExternalStorageState())) {
            try {
                j = new StatFs(Environment.getExternalStorageDirectory().getPath()).getAvailableBlocksLong() * r2.getBlockSize();
            } catch (Exception unused) {
            }
        }
        OSSLog.logDebug("sd卡存储空间:" + String.valueOf(j) + "kb", false);
        return j;
    }

    /* renamed from: m */
    public final long m7650m() {
        long j;
        try {
            j = (new StatFs(Environment.getDataDirectory().getPath()).getAvailableBlocksLong() * r0.getBlockSize()) / 1024;
        } catch (Exception unused) {
            j = 0;
        }
        OSSLog.logDebug("内部存储空间:" + String.valueOf(j) + "kb", false);
        return j;
    }

    public void resetLogFile() {
        OSSLog.logDebug("Reset Log File ... ", false);
        if (!f12927f.getParentFile().exists()) {
            OSSLog.logDebug("Reset Log make File dir ... ", false);
            f12927f.getParentFile().mkdir();
        }
        File file = new File(f12927f.getParent() + "/logs.csv");
        if (file.exists()) {
            file.delete();
        }
        createNewFile(file);
    }

    public void setUseSdCard(boolean z) {
        this.f12931a = z;
    }

    public synchronized void write(Object obj) {
        File file;
        if (OSSLog.isEnableLog()) {
            if (f12925d != null && f12926e != null && (file = f12927f) != null) {
                if (!file.exists()) {
                    resetLogFile();
                }
                f12924c.addExecuteTask(new RunnableC1757b(obj));
            }
        }
    }
}
