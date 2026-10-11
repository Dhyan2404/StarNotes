package com.liulishuo.okdownload.core;

import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.StatFs;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.OkDownload;
import com.liulishuo.okdownload.core.breakpoint.BlockInfo;
import com.liulishuo.okdownload.core.breakpoint.BreakpointInfo;
import com.liulishuo.okdownload.core.breakpoint.BreakpointStoreOnCache;
import com.liulishuo.okdownload.core.breakpoint.BreakpointStoreOnSQLite;
import com.liulishuo.okdownload.core.breakpoint.DownloadStore;
import com.liulishuo.okdownload.core.connection.DownloadConnection;
import com.liulishuo.okdownload.core.connection.DownloadOkHttp3Connection;
import com.liulishuo.okdownload.core.connection.DownloadUrlConnection;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class Util {
    public static final String ACCEPT_RANGES = "Accept-Ranges";
    public static final int CHUNKED_CONTENT_LENGTH = -1;
    public static final String CONTENT_DISPOSITION = "Content-Disposition";
    public static final String CONTENT_LENGTH = "Content-Length";
    public static final String CONTENT_RANGE = "Content-Range";
    public static final String ETAG = "Etag";
    public static final String IF_MATCH = "If-Match";
    public static final String METHOD_HEAD = "HEAD";
    public static final String RANGE = "Range";
    public static final int RANGE_NOT_SATISFIABLE = 416;
    public static final String TRANSFER_ENCODING = "Transfer-Encoding";
    public static final String USER_AGENT = "User-Agent";
    public static final String VALUE_CHUNKED = "chunked";

    /* renamed from: a */
    public static Logger f39253a = new EmptyLogger();

    /* loaded from: classes4.dex */
    public static class EmptyLogger implements Logger {
        @Override // com.liulishuo.okdownload.core.Util.Logger
        /* renamed from: d */
        public void mo30987d(String str, String str2) {
        }

        @Override // com.liulishuo.okdownload.core.Util.Logger
        /* renamed from: e */
        public void mo30988e(String str, String str2, Exception exc) {
        }

        @Override // com.liulishuo.okdownload.core.Util.Logger
        /* renamed from: i */
        public void mo30989i(String str, String str2) {
        }

        @Override // com.liulishuo.okdownload.core.Util.Logger
        /* renamed from: w */
        public void mo30990w(String str, String str2) {
        }
    }

    /* loaded from: classes4.dex */
    public interface Logger {
        /* renamed from: d */
        void mo30987d(String str, String str2);

        /* renamed from: e */
        void mo30988e(String str, String str2, Exception exc);

        /* renamed from: i */
        void mo30989i(String str, String str2);

        /* renamed from: w */
        void mo30990w(String str, String str2);
    }

    /* renamed from: com.liulishuo.okdownload.core.Util$a */
    /* loaded from: classes4.dex */
    public static class ThreadFactoryC6960a implements ThreadFactory {

        /* renamed from: e */
        public final /* synthetic */ String f39254e;

        /* renamed from: f */
        public final /* synthetic */ boolean f39255f;

        public ThreadFactoryC6960a(String str, boolean z) {
            this.f39254e = str;
            this.f39255f = z;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull Runnable runnable) {
            Thread thread = new Thread(runnable, this.f39254e);
            thread.setDaemon(this.f39255f);
            return thread;
        }
    }

    public static void addDefaultUserAgent(@NonNull DownloadConnection downloadConnection) {
        downloadConnection.addHeader("User-Agent", "OkDownload/1.0.7");
    }

    public static void addRequestHeaderFields(@NonNull Map<String, List<String>> map, @NonNull DownloadConnection downloadConnection) {
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            String key = entry.getKey();
            Iterator<String> it2 = entry.getValue().iterator();
            while (it2.hasNext()) {
                downloadConnection.addHeader(key, it2.next());
            }
        }
    }

    public static void addUserRequestHeaderField(@NonNull Map<String, List<String>> map, @NonNull DownloadConnection downloadConnection) throws IOException {
        inspectUserHeader(map);
        addRequestHeaderFields(map, downloadConnection);
    }

    public static void assembleBlock(@NonNull DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo, long j, boolean z) {
        int determineBlockCount = OkDownload.with().downloadStrategy().isUseMultiBlock(z) ? OkDownload.with().downloadStrategy().determineBlockCount(downloadTask, j) : 1;
        breakpointInfo.resetBlockInfos();
        long j2 = determineBlockCount;
        long j3 = j / j2;
        long j4 = 0;
        int i = 0;
        long j5 = 0;
        while (i < determineBlockCount) {
            j4 += j5;
            j5 = i == 0 ? (j % j2) + j3 : j3;
            breakpointInfo.addBlock(new BlockInfo(j4, j5));
            i++;
        }
    }

    public static boolean checkPermission(String str) {
        return OkDownload.with().context().checkCallingOrSelfPermission(str) == 0;
    }

    @NonNull
    public static DownloadConnection.Factory createDefaultConnectionFactory() {
        try {
            return (DownloadConnection.Factory) DownloadOkHttp3Connection.Factory.class.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException unused) {
            return new DownloadUrlConnection.Factory();
        }
    }

    @NonNull
    public static DownloadStore createDefaultDatabase(Context context) {
        try {
            return (DownloadStore) BreakpointStoreOnSQLite.class.getDeclaredConstructor(Context.class).newInstance(context);
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException unused) {
            return new BreakpointStoreOnCache();
        }
    }

    @NonNull
    public static DownloadStore createRemitDatabase(@NonNull DownloadStore downloadStore) {
        try {
            downloadStore = (DownloadStore) downloadStore.getClass().getMethod("createRemitSelf", new Class[0]).invoke(downloadStore, new Object[0]);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
        }
        m30983d(com.google.android.exoplayer2.util.Util.f28472a, "Get final download store is " + downloadStore);
        return downloadStore;
    }

    /* renamed from: d */
    public static void m30983d(String str, String str2) {
        Logger logger = f39253a;
        if (logger != null) {
            logger.mo30987d(str, str2);
        } else {
            Log.d(str, str2);
        }
    }

    /* renamed from: e */
    public static void m30984e(String str, String str2, Exception exc) {
        Logger logger = f39253a;
        if (logger != null) {
            logger.mo30988e(str, str2, exc);
        } else {
            Log.e(str, str2, exc);
        }
    }

    public static void enableConsoleLog() {
        f39253a = null;
    }

    @Nullable
    public static String getFilenameFromContentUri(@NonNull Uri uri) {
        Cursor query = OkDownload.with().context().getContentResolver().query(uri, null, null, null, null);
        if (query == null) {
            return null;
        }
        try {
            query.moveToFirst();
            return query.getString(query.getColumnIndex("_display_name"));
        } finally {
            query.close();
        }
    }

    public static long getFreeSpaceBytes(@NonNull StatFs statFs) {
        return statFs.getAvailableBytes();
    }

    public static Logger getLogger() {
        return f39253a;
    }

    @NonNull
    @SuppressFBWarnings({"DMI"})
    public static File getParentFile(File file) {
        File parentFile = file.getParentFile();
        return parentFile == null ? new File("/") : parentFile;
    }

    public static long getSizeFromContentUri(@NonNull Uri uri) {
        Cursor query = OkDownload.with().context().getContentResolver().query(uri, null, null, null, null);
        if (query == null) {
            return 0L;
        }
        try {
            query.moveToFirst();
            return query.getLong(query.getColumnIndex("_size"));
        } finally {
            query.close();
        }
    }

    public static String humanReadableBytes(long j, boolean z) {
        int i = z ? 1000 : 1024;
        if (j < i) {
            return j + " B";
        }
        double d = j;
        double d2 = i;
        int log = (int) (Math.log(d) / Math.log(d2));
        StringBuilder sb = new StringBuilder();
        sb.append((z ? "kMGTPE" : "KMGTPE").charAt(log - 1));
        sb.append(z ? "" : "i");
        return String.format(Locale.ENGLISH, "%.1f %sB", Double.valueOf(d / Math.pow(d2, log)), sb.toString());
    }

    /* renamed from: i */
    public static void m30985i(String str, String str2) {
        Logger logger = f39253a;
        if (logger != null) {
            logger.mo30989i(str, str2);
        } else {
            Log.i(str, str2);
        }
    }

    public static void inspectUserHeader(@NonNull Map<String, List<String>> map) throws IOException {
        if (map.containsKey("If-Match") || map.containsKey("Range")) {
            throw new IOException("If-Match and Range only can be handle by internal!");
        }
    }

    public static boolean isCorrectFull(long j, long j2) {
        return j == j2;
    }

    public static boolean isEmpty(@Nullable CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static boolean isNetworkAvailable(ConnectivityManager connectivityManager) {
        if (connectivityManager == null) {
            m30986w(com.google.android.exoplayer2.util.Util.f28472a, "failed to get connectivity manager!");
            return true;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public static boolean isNetworkNotOnWifiType(ConnectivityManager connectivityManager) {
        if (connectivityManager == null) {
            m30986w(com.google.android.exoplayer2.util.Util.f28472a, "failed to get connectivity manager!");
            return true;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo == null || activeNetworkInfo.getType() != 1;
    }

    public static boolean isUriContentScheme(@NonNull Uri uri) {
        return uri.getScheme().equals("content");
    }

    public static boolean isUriFileScheme(@NonNull Uri uri) {
        return uri.getScheme().equals("file");
    }

    @Nullable
    public static String md5(String str) {
        byte[] bArr;
        try {
            bArr = MessageDigest.getInstance("MD5").digest(str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException unused) {
            bArr = null;
        }
        if (bArr == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            int i = b & 255;
            if (i < 16) {
                sb.append('0');
            }
            sb.append(Integer.toHexString(i));
        }
        return sb.toString();
    }

    public static long parseContentLength(@Nullable String str) {
        if (str == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            m30983d(com.google.android.exoplayer2.util.Util.f28472a, "parseContentLength failed parse for '" + str + CloudStorageConstants.SINGLE_QUOTES);
            return -1L;
        }
    }

    public static long parseContentLengthFromContentRange(@Nullable String str) {
        if (str != null && str.length() != 0) {
            try {
                Matcher matcher = Pattern.compile("bytes (\\d+)-(\\d+)/\\d+").matcher(str);
                if (matcher.find()) {
                    return (Long.parseLong(matcher.group(2)) - Long.parseLong(matcher.group(1))) + 1;
                }
            } catch (Exception e) {
                m30986w(com.google.android.exoplayer2.util.Util.f28472a, "parse content-length from content-range failed " + e);
            }
        }
        return -1L;
    }

    public static void resetBlockIfDirty(BlockInfo blockInfo) {
        boolean z = true;
        if (blockInfo.getCurrentOffset() >= 0 && blockInfo.getCurrentOffset() <= blockInfo.getContentLength()) {
            z = false;
        }
        if (z) {
            m30986w("resetBlockIfDirty", "block is dirty so have to reset: " + blockInfo);
            blockInfo.resetBlock();
        }
    }

    public static void setLogger(@Nullable Logger logger) {
        f39253a = logger;
    }

    public static ThreadFactory threadFactory(String str, boolean z) {
        return new ThreadFactoryC6960a(str, z);
    }

    /* renamed from: w */
    public static void m30986w(String str, String str2) {
        Logger logger = f39253a;
        if (logger != null) {
            logger.mo30990w(str, str2);
        } else {
            Log.w(str, str2);
        }
    }
}
