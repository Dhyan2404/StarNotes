package com.liulishuo.okdownload;

import android.net.Uri;
import android.util.SparseArray;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.liulishuo.okdownload.core.IdentifiedTask;
import com.liulishuo.okdownload.core.Util;
import com.liulishuo.okdownload.core.breakpoint.BreakpointInfo;
import com.liulishuo.okdownload.core.download.DownloadStrategy;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes4.dex */
public class DownloadTask extends IdentifiedTask implements Comparable<DownloadTask> {

    /* renamed from: J */
    @NonNull
    public final File f39175J;

    /* renamed from: O */
    @NonNull
    public final File f39176O;

    /* renamed from: Q */
    @Nullable
    public File f39177Q;

    /* renamed from: Z */
    @Nullable
    public String f39178Z;

    /* renamed from: e */
    public final int f39179e;

    /* renamed from: f */
    @NonNull
    public final String f39180f;

    /* renamed from: g */
    public final Uri f39181g;

    /* renamed from: h */
    public final Map<String, List<String>> f39182h;

    /* renamed from: i */
    @Nullable
    public BreakpointInfo f39183i;

    /* renamed from: j */
    public final int f39184j;

    /* renamed from: k */
    public final int f39185k;

    /* renamed from: l */
    public final int f39186l;

    /* renamed from: m */
    public final int f39187m;

    /* renamed from: n */
    public final int f39188n;

    /* renamed from: o */
    @Nullable
    public final Integer f39189o;

    /* renamed from: p */
    @Nullable
    public final Boolean f39190p;

    /* renamed from: q */
    public final boolean f39191q;

    /* renamed from: r */
    public final boolean f39192r;

    /* renamed from: s */
    public final int f39193s;

    /* renamed from: t */
    public volatile DownloadListener f39194t;

    /* renamed from: u */
    public volatile SparseArray<Object> f39195u;

    /* renamed from: v */
    public Object f39196v;

    /* renamed from: w */
    public final boolean f39197w;

    /* renamed from: x */
    public final AtomicLong f39198x = new AtomicLong();

    /* renamed from: y */
    public final boolean f39199y;

    /* renamed from: z */
    @NonNull
    public final DownloadStrategy.FilenameHolder f39200z;

    /* loaded from: classes4.dex */
    public static class TaskHideWrapper {
        public static long getLastCallbackProcessTs(DownloadTask downloadTask) {
            return downloadTask.m30974c();
        }

        public static void setBreakpointInfo(@NonNull DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo) {
            downloadTask.m30975d(breakpointInfo);
        }

        public static void setLastCallbackProcessTs(DownloadTask downloadTask, long j) {
            downloadTask.m30976e(j);
        }
    }

    public DownloadTask(String str, Uri uri, int i, int i2, int i3, int i4, int i5, boolean z, int i6, Map<String, List<String>> map, @Nullable String str2, boolean z2, boolean z3, Boolean bool, @Nullable Integer num, @Nullable Boolean bool2) {
        Boolean bool3;
        String str3 = str2;
        this.f39180f = str;
        this.f39181g = uri;
        this.f39184j = i;
        this.f39185k = i2;
        this.f39186l = i3;
        this.f39187m = i4;
        this.f39188n = i5;
        this.f39192r = z;
        this.f39193s = i6;
        this.f39182h = map;
        this.f39191q = z2;
        this.f39197w = z3;
        this.f39189o = num;
        this.f39190p = bool2;
        if (Util.isUriFileScheme(uri)) {
            File file = new File(uri.getPath());
            if (bool != null) {
                if (bool.booleanValue()) {
                    if (file.exists() && file.isFile()) {
                        throw new IllegalArgumentException("If you want filename from response please make sure you provide path is directory " + file.getPath());
                    }
                    if (!Util.isEmpty(str2)) {
                        Util.m30986w("DownloadTask", "Discard filename[" + str3 + "] because you set filenameFromResponse=true");
                        str3 = null;
                    }
                    this.f39176O = file;
                } else {
                    if (file.exists() && file.isDirectory() && Util.isEmpty(str2)) {
                        throw new IllegalArgumentException("If you don't want filename from response please make sure you have already provided valid filename or not directory path " + file.getPath());
                    }
                    if (Util.isEmpty(str2)) {
                        str3 = file.getName();
                        this.f39176O = Util.getParentFile(file);
                    } else {
                        this.f39176O = file;
                    }
                }
                bool3 = bool;
            } else if (file.exists() && file.isDirectory()) {
                bool3 = Boolean.TRUE;
                this.f39176O = file;
            } else {
                bool3 = Boolean.FALSE;
                if (file.exists()) {
                    if (!Util.isEmpty(str2) && !file.getName().equals(str3)) {
                        throw new IllegalArgumentException("Uri already provided filename!");
                    }
                    str3 = file.getName();
                    this.f39176O = Util.getParentFile(file);
                } else if (Util.isEmpty(str2)) {
                    str3 = file.getName();
                    this.f39176O = Util.getParentFile(file);
                } else {
                    this.f39176O = file;
                }
            }
            this.f39199y = bool3.booleanValue();
        } else {
            this.f39199y = false;
            this.f39176O = new File(uri.getPath());
        }
        if (Util.isEmpty(str3)) {
            this.f39200z = new DownloadStrategy.FilenameHolder();
            this.f39175J = this.f39176O;
        } else {
            this.f39200z = new DownloadStrategy.FilenameHolder(str3);
            File file2 = new File(this.f39176O, str3);
            this.f39177Q = file2;
            this.f39175J = file2;
        }
        this.f39179e = OkDownload.with().breakpointStore().findOrCreateId(this);
    }

    public static void enqueue(DownloadTask[] downloadTaskArr, DownloadListener downloadListener) {
        for (DownloadTask downloadTask : downloadTaskArr) {
            downloadTask.f39194t = downloadListener;
        }
        OkDownload.with().downloadDispatcher().enqueue(downloadTaskArr);
    }

    public static MockTaskForCompare mockTaskForCompare(int i) {
        return new MockTaskForCompare(i);
    }

    public synchronized DownloadTask addTag(int i, Object obj) {
        if (this.f39195u == null) {
            synchronized (this) {
                if (this.f39195u == null) {
                    this.f39195u = new SparseArray<>();
                }
            }
        }
        this.f39195u.put(i, obj);
        return this;
    }

    /* renamed from: c */
    public long m30974c() {
        return this.f39198x.get();
    }

    public void cancel() {
        OkDownload.with().downloadDispatcher().cancel(this);
    }

    /* renamed from: d */
    public void m30975d(@NonNull BreakpointInfo breakpointInfo) {
        this.f39183i = breakpointInfo;
    }

    /* renamed from: e */
    public void m30976e(long j) {
        this.f39198x.set(j);
    }

    public boolean equals(Object obj) {
        if (super.equals(obj)) {
            return true;
        }
        if (!(obj instanceof DownloadTask)) {
            return false;
        }
        DownloadTask downloadTask = (DownloadTask) obj;
        if (downloadTask.f39179e == this.f39179e) {
            return true;
        }
        return compareIgnoreId(downloadTask);
    }

    public void execute(DownloadListener downloadListener) {
        this.f39194t = downloadListener;
        OkDownload.with().downloadDispatcher().execute(this);
    }

    public int getConnectionCount() {
        BreakpointInfo breakpointInfo = this.f39183i;
        if (breakpointInfo == null) {
            return 0;
        }
        return breakpointInfo.getBlockCount();
    }

    @Nullable
    public File getFile() {
        String str = this.f39200z.get();
        if (str == null) {
            return null;
        }
        if (this.f39177Q == null) {
            this.f39177Q = new File(this.f39176O, str);
        }
        return this.f39177Q;
    }

    @Override // com.liulishuo.okdownload.core.IdentifiedTask
    @Nullable
    public String getFilename() {
        return this.f39200z.get();
    }

    public DownloadStrategy.FilenameHolder getFilenameHolder() {
        return this.f39200z;
    }

    public int getFlushBufferSize() {
        return this.f39186l;
    }

    @Nullable
    public Map<String, List<String>> getHeaderMapFields() {
        return this.f39182h;
    }

    @Override // com.liulishuo.okdownload.core.IdentifiedTask
    public int getId() {
        return this.f39179e;
    }

    @Nullable
    public BreakpointInfo getInfo() {
        if (this.f39183i == null) {
            this.f39183i = OkDownload.with().breakpointStore().get(this.f39179e);
        }
        return this.f39183i;
    }

    public DownloadListener getListener() {
        return this.f39194t;
    }

    public int getMinIntervalMillisCallbackProcess() {
        return this.f39193s;
    }

    @Override // com.liulishuo.okdownload.core.IdentifiedTask
    @NonNull
    public File getParentFile() {
        return this.f39176O;
    }

    public int getPriority() {
        return this.f39184j;
    }

    @Override // com.liulishuo.okdownload.core.IdentifiedTask
    @NonNull
    public File getProvidedPathFile() {
        return this.f39175J;
    }

    public int getReadBufferSize() {
        return this.f39185k;
    }

    @Nullable
    public String getRedirectLocation() {
        return this.f39178Z;
    }

    @Nullable
    public Integer getSetConnectionCount() {
        return this.f39189o;
    }

    @Nullable
    public Boolean getSetPreAllocateLength() {
        return this.f39190p;
    }

    public int getSyncBufferIntervalMills() {
        return this.f39188n;
    }

    public int getSyncBufferSize() {
        return this.f39187m;
    }

    public Object getTag(int i) {
        if (this.f39195u == null) {
            return null;
        }
        return this.f39195u.get(i);
    }

    public Uri getUri() {
        return this.f39181g;
    }

    @Override // com.liulishuo.okdownload.core.IdentifiedTask
    @NonNull
    public String getUrl() {
        return this.f39180f;
    }

    public int hashCode() {
        return (this.f39180f + this.f39175J.toString() + this.f39200z.get()).hashCode();
    }

    public boolean isAutoCallbackToUIThread() {
        return this.f39192r;
    }

    public boolean isFilenameFromResponse() {
        return this.f39199y;
    }

    public boolean isPassIfAlreadyCompleted() {
        return this.f39191q;
    }

    public boolean isWifiRequired() {
        return this.f39197w;
    }

    @NonNull
    public MockTaskForCompare mock(int i) {
        return new MockTaskForCompare(i, this);
    }

    public synchronized void removeTag(int i) {
        if (this.f39195u != null) {
            this.f39195u.remove(i);
        }
    }

    public void replaceListener(@NonNull DownloadListener downloadListener) {
        this.f39194t = downloadListener;
    }

    public void setRedirectLocation(@Nullable String str) {
        this.f39178Z = str;
    }

    public void setTag(Object obj) {
        this.f39196v = obj;
    }

    public void setTags(DownloadTask downloadTask) {
        this.f39196v = downloadTask.f39196v;
        this.f39195u = downloadTask.f39195u;
    }

    public Builder toBuilder(String str, Uri uri) {
        Builder passIfAlreadyCompleted = new Builder(str, uri).setPriority(this.f39184j).setReadBufferSize(this.f39185k).setFlushBufferSize(this.f39186l).setSyncBufferSize(this.f39187m).setSyncBufferIntervalMillis(this.f39188n).setAutoCallbackToUIThread(this.f39192r).setMinIntervalMillisCallbackProcess(this.f39193s).setHeaderMapFields(this.f39182h).setPassIfAlreadyCompleted(this.f39191q);
        if (Util.isUriFileScheme(uri) && !new File(uri.getPath()).isFile() && Util.isUriFileScheme(this.f39181g) && this.f39200z.get() != null && !new File(this.f39181g.getPath()).getName().equals(this.f39200z.get())) {
            passIfAlreadyCompleted.setFilename(this.f39200z.get());
        }
        return passIfAlreadyCompleted;
    }

    public String toString() {
        return super.toString() + "@" + this.f39179e + "@" + this.f39180f + "@" + this.f39176O.toString() + "/" + this.f39200z.get();
    }

    public static void cancel(DownloadTask[] downloadTaskArr) {
        OkDownload.with().downloadDispatcher().cancel(downloadTaskArr);
    }

    @Override // java.lang.Comparable
    public int compareTo(@NonNull DownloadTask downloadTask) {
        return downloadTask.getPriority() - getPriority();
    }

    public Object getTag() {
        return this.f39196v;
    }

    public synchronized void removeTag() {
        this.f39196v = null;
    }

    /* loaded from: classes4.dex */
    public static class Builder {
        public static final boolean DEFAULT_AUTO_CALLBACK_TO_UI_THREAD = true;
        public static final int DEFAULT_FLUSH_BUFFER_SIZE = 16384;
        public static final boolean DEFAULT_IS_WIFI_REQUIRED = false;
        public static final int DEFAULT_MIN_INTERVAL_MILLIS_CALLBACK_PROCESS = 3000;
        public static final boolean DEFAULT_PASS_IF_ALREADY_COMPLETED = true;
        public static final int DEFAULT_READ_BUFFER_SIZE = 4096;
        public static final int DEFAULT_SYNC_BUFFER_INTERVAL_MILLIS = 2000;
        public static final int DEFAULT_SYNC_BUFFER_SIZE = 65536;

        /* renamed from: a */
        @NonNull
        public final String f39201a;

        /* renamed from: b */
        @NonNull
        public final Uri f39202b;

        /* renamed from: c */
        public volatile Map<String, List<String>> f39203c;

        /* renamed from: d */
        public int f39204d;

        /* renamed from: e */
        public int f39205e;

        /* renamed from: f */
        public int f39206f;

        /* renamed from: g */
        public int f39207g;

        /* renamed from: h */
        public int f39208h;

        /* renamed from: i */
        public boolean f39209i;

        /* renamed from: j */
        public int f39210j;

        /* renamed from: k */
        public String f39211k;

        /* renamed from: l */
        public boolean f39212l;

        /* renamed from: m */
        public boolean f39213m;

        /* renamed from: n */
        public Boolean f39214n;

        /* renamed from: o */
        public Integer f39215o;

        /* renamed from: p */
        public Boolean f39216p;

        public Builder(@NonNull String str, @NonNull String str2, @Nullable String str3) {
            this(str, Uri.fromFile(new File(str2)));
            if (Util.isEmpty(str3)) {
                this.f39214n = Boolean.TRUE;
            } else {
                this.f39211k = str3;
            }
        }

        public synchronized void addHeader(String str, String str2) {
            if (this.f39203c == null) {
                this.f39203c = new HashMap();
            }
            List<String> list = this.f39203c.get(str);
            if (list == null) {
                list = new ArrayList<>();
                this.f39203c.put(str, list);
            }
            list.add(str2);
        }

        public DownloadTask build() {
            return new DownloadTask(this.f39201a, this.f39202b, this.f39204d, this.f39205e, this.f39206f, this.f39207g, this.f39208h, this.f39209i, this.f39210j, this.f39203c, this.f39211k, this.f39212l, this.f39213m, this.f39214n, this.f39215o, this.f39216p);
        }

        public Builder setAutoCallbackToUIThread(boolean z) {
            this.f39209i = z;
            return this;
        }

        public Builder setConnectionCount(@IntRange(from = 1) int i) {
            this.f39215o = Integer.valueOf(i);
            return this;
        }

        public Builder setFilename(String str) {
            this.f39211k = str;
            return this;
        }

        public Builder setFilenameFromResponse(@Nullable Boolean bool) {
            if (!Util.isUriFileScheme(this.f39202b)) {
                throw new IllegalArgumentException("Uri isn't file scheme we can't let filename from response");
            }
            this.f39214n = bool;
            return this;
        }

        public Builder setFlushBufferSize(int i) {
            if (i < 0) {
                throw new IllegalArgumentException("Value must be positive!");
            }
            this.f39206f = i;
            return this;
        }

        public Builder setHeaderMapFields(Map<String, List<String>> map) {
            this.f39203c = map;
            return this;
        }

        public Builder setMinIntervalMillisCallbackProcess(int i) {
            this.f39210j = i;
            return this;
        }

        public Builder setPassIfAlreadyCompleted(boolean z) {
            this.f39212l = z;
            return this;
        }

        public Builder setPreAllocateLength(boolean z) {
            this.f39216p = Boolean.valueOf(z);
            return this;
        }

        public Builder setPriority(int i) {
            this.f39204d = i;
            return this;
        }

        public Builder setReadBufferSize(int i) {
            if (i < 0) {
                throw new IllegalArgumentException("Value must be positive!");
            }
            this.f39205e = i;
            return this;
        }

        public Builder setSyncBufferIntervalMillis(int i) {
            if (i < 0) {
                throw new IllegalArgumentException("Value must be positive!");
            }
            this.f39208h = i;
            return this;
        }

        public Builder setSyncBufferSize(int i) {
            if (i < 0) {
                throw new IllegalArgumentException("Value must be positive!");
            }
            this.f39207g = i;
            return this;
        }

        public Builder setWifiRequired(boolean z) {
            this.f39213m = z;
            return this;
        }

        public Builder(@NonNull String str, @NonNull File file) {
            this.f39205e = 4096;
            this.f39206f = 16384;
            this.f39207g = 65536;
            this.f39208h = 2000;
            this.f39209i = true;
            this.f39210j = 3000;
            this.f39212l = true;
            this.f39213m = false;
            this.f39201a = str;
            this.f39202b = Uri.fromFile(file);
        }

        public Builder(@NonNull String str, @NonNull Uri uri) {
            this.f39205e = 4096;
            this.f39206f = 16384;
            this.f39207g = 65536;
            this.f39208h = 2000;
            this.f39209i = true;
            this.f39210j = 3000;
            this.f39212l = true;
            this.f39213m = false;
            this.f39201a = str;
            this.f39202b = uri;
            if (Util.isUriContentScheme(uri)) {
                this.f39211k = Util.getFilenameFromContentUri(uri);
            }
        }
    }

    public void enqueue(DownloadListener downloadListener) {
        this.f39194t = downloadListener;
        OkDownload.with().downloadDispatcher().enqueue(this);
    }

    /* loaded from: classes4.dex */
    public static class MockTaskForCompare extends IdentifiedTask {

        /* renamed from: e */
        public final int f39217e;

        /* renamed from: f */
        @NonNull
        public final String f39218f;

        /* renamed from: g */
        @NonNull
        public final File f39219g;

        /* renamed from: h */
        @Nullable
        public final String f39220h;

        /* renamed from: i */
        @NonNull
        public final File f39221i;

        public MockTaskForCompare(int i) {
            this.f39217e = i;
            this.f39218f = "";
            File file = IdentifiedTask.EMPTY_FILE;
            this.f39219g = file;
            this.f39220h = null;
            this.f39221i = file;
        }

        @Override // com.liulishuo.okdownload.core.IdentifiedTask
        @Nullable
        public String getFilename() {
            return this.f39220h;
        }

        @Override // com.liulishuo.okdownload.core.IdentifiedTask
        public int getId() {
            return this.f39217e;
        }

        @Override // com.liulishuo.okdownload.core.IdentifiedTask
        @NonNull
        public File getParentFile() {
            return this.f39221i;
        }

        @Override // com.liulishuo.okdownload.core.IdentifiedTask
        @NonNull
        public File getProvidedPathFile() {
            return this.f39219g;
        }

        @Override // com.liulishuo.okdownload.core.IdentifiedTask
        @NonNull
        public String getUrl() {
            return this.f39218f;
        }

        public MockTaskForCompare(int i, @NonNull DownloadTask downloadTask) {
            this.f39217e = i;
            this.f39218f = downloadTask.f39180f;
            this.f39221i = downloadTask.getParentFile();
            this.f39219g = downloadTask.f39175J;
            this.f39220h = downloadTask.getFilename();
        }
    }

    public Builder toBuilder() {
        return toBuilder(this.f39180f, this.f39181g);
    }
}
