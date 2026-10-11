package com.liulishuo.okdownload.core.download;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.liulishuo.okdownload.DownloadListener;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.OkDownload;
import com.liulishuo.okdownload.core.Util;
import com.liulishuo.okdownload.core.breakpoint.BreakpointInfo;
import com.liulishuo.okdownload.core.connection.DownloadConnection;
import com.liulishuo.okdownload.core.exception.DownloadSecurityException;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.mortbay.jetty.HttpHeaderValues;

/* loaded from: classes4.dex */
public class ConnectTrial {

    /* renamed from: h */
    public static final String f39402h = "ConnectTrial";

    /* renamed from: i */
    public static final Pattern f39403i = Pattern.compile("attachment;\\s*filename\\s*=\\s*\"([^\"]*)\"");

    /* renamed from: j */
    public static final Pattern f39404j = Pattern.compile("attachment;\\s*filename\\s*=\\s*(.*)");

    /* renamed from: a */
    @NonNull
    public final DownloadTask f39405a;

    /* renamed from: b */
    @NonNull
    public final BreakpointInfo f39406b;

    /* renamed from: c */
    public boolean f39407c;

    /* renamed from: d */
    @IntRange(from = -1)
    public long f39408d;

    /* renamed from: e */
    @Nullable
    public String f39409e;

    /* renamed from: f */
    @Nullable
    public String f39410f;

    /* renamed from: g */
    public int f39411g;

    public ConnectTrial(@NonNull DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo) {
        this.f39405a = downloadTask;
        this.f39406b = breakpointInfo;
    }

    @Nullable
    /* renamed from: a */
    public static String m31034a(DownloadConnection.Connected connected) {
        return connected.getResponseHeaderField(Util.ETAG);
    }

    @Nullable
    /* renamed from: b */
    public static String m31035b(DownloadConnection.Connected connected) throws IOException {
        return m31038f(connected.getResponseHeaderField("Content-Disposition"));
    }

    /* renamed from: c */
    public static long m31036c(DownloadConnection.Connected connected) {
        long m31039g = m31039g(connected.getResponseHeaderField("Content-Range"));
        if (m31039g != -1) {
            return m31039g;
        }
        if (!m31040h(connected.getResponseHeaderField("Transfer-Encoding"))) {
            Util.m30986w(f39402h, "Transfer-Encoding isn't chunked but there is no valid instance length found either!");
        }
        return -1L;
    }

    /* renamed from: d */
    public static boolean m31037d(@NonNull DownloadConnection.Connected connected) throws IOException {
        if (connected.getResponseCode() == 206) {
            return true;
        }
        return HttpHeaderValues.BYTES.equals(connected.getResponseHeaderField("Accept-Ranges"));
    }

    @Nullable
    /* renamed from: f */
    public static String m31038f(String str) throws IOException {
        String group;
        if (str == null) {
            return null;
        }
        try {
            Matcher matcher = f39403i.matcher(str);
            if (matcher.find()) {
                group = matcher.group(1);
            } else {
                Matcher matcher2 = f39404j.matcher(str);
                group = matcher2.find() ? matcher2.group(1) : null;
            }
            if (group != null && group.contains("../")) {
                throw new DownloadSecurityException("The filename [" + group + "] from the response is not allowable, because it contains '../', which can raise the directory traversal vulnerability");
            }
            return group;
        } catch (IllegalStateException unused) {
            return null;
        }
    }

    /* renamed from: g */
    public static long m31039g(@Nullable String str) {
        if (str == null) {
            return -1L;
        }
        String[] split = str.split("/");
        if (split.length >= 2) {
            try {
                return Long.parseLong(split[1]);
            } catch (NumberFormatException unused) {
                Util.m30986w(f39402h, "parse instance length failed with " + str);
            }
        }
        return -1L;
    }

    /* renamed from: h */
    public static boolean m31040h(@Nullable String str) {
        return str != null && str.equals("chunked");
    }

    /* renamed from: e */
    public boolean m31041e(long j, @NonNull DownloadConnection.Connected connected) {
        String responseHeaderField;
        if (j != -1) {
            return false;
        }
        String responseHeaderField2 = connected.getResponseHeaderField("Content-Range");
        return (responseHeaderField2 == null || responseHeaderField2.length() <= 0) && !m31040h(connected.getResponseHeaderField("Transfer-Encoding")) && (responseHeaderField = connected.getResponseHeaderField("Content-Length")) != null && responseHeaderField.length() > 0;
    }

    public void executeTrial() throws IOException {
        OkDownload.with().downloadStrategy().inspectNetworkOnWifi(this.f39405a);
        OkDownload.with().downloadStrategy().inspectNetworkAvailable();
        DownloadConnection create = OkDownload.with().connectionFactory().create(this.f39405a.getUrl());
        try {
            if (!Util.isEmpty(this.f39406b.getEtag())) {
                create.addHeader("If-Match", this.f39406b.getEtag());
            }
            create.addHeader("Range", "bytes=0-0");
            Map<String, List<String>> headerMapFields = this.f39405a.getHeaderMapFields();
            if (headerMapFields != null) {
                Util.addUserRequestHeaderField(headerMapFields, create);
            }
            DownloadListener dispatch = OkDownload.with().callbackDispatcher().dispatch();
            dispatch.connectTrialStart(this.f39405a, create.getRequestProperties());
            DownloadConnection.Connected execute = create.execute();
            this.f39405a.setRedirectLocation(execute.getRedirectLocation());
            Util.m30983d(f39402h, "task[" + this.f39405a.getId() + "] redirect location: " + this.f39405a.getRedirectLocation());
            this.f39411g = execute.getResponseCode();
            this.f39407c = m31037d(execute);
            this.f39408d = m31036c(execute);
            this.f39409e = m31034a(execute);
            this.f39410f = m31035b(execute);
            Map<String, List<String>> responseHeaderFields = execute.getResponseHeaderFields();
            if (responseHeaderFields == null) {
                responseHeaderFields = new HashMap<>();
            }
            dispatch.connectTrialEnd(this.f39405a, this.f39411g, responseHeaderFields);
            if (m31041e(this.f39408d, execute)) {
                m31042i();
            }
        } finally {
            create.release();
        }
    }

    public long getInstanceLength() {
        return this.f39408d;
    }

    public int getResponseCode() {
        return this.f39411g;
    }

    @Nullable
    public String getResponseEtag() {
        return this.f39409e;
    }

    @Nullable
    public String getResponseFilename() {
        return this.f39410f;
    }

    /* renamed from: i */
    public void m31042i() throws IOException {
        DownloadConnection create = OkDownload.with().connectionFactory().create(this.f39405a.getUrl());
        DownloadListener dispatch = OkDownload.with().callbackDispatcher().dispatch();
        try {
            create.setRequestMethod("HEAD");
            Map<String, List<String>> headerMapFields = this.f39405a.getHeaderMapFields();
            if (headerMapFields != null) {
                Util.addUserRequestHeaderField(headerMapFields, create);
            }
            dispatch.connectTrialStart(this.f39405a, create.getRequestProperties());
            DownloadConnection.Connected execute = create.execute();
            dispatch.connectTrialEnd(this.f39405a, execute.getResponseCode(), execute.getResponseHeaderFields());
            this.f39408d = Util.parseContentLength(execute.getResponseHeaderField("Content-Length"));
        } finally {
            create.release();
        }
    }

    public boolean isAcceptRange() {
        return this.f39407c;
    }

    public boolean isChunked() {
        return this.f39408d == -1;
    }

    public boolean isEtagOverdue() {
        return (this.f39406b.getEtag() == null || this.f39406b.getEtag().equals(this.f39409e)) ? false : true;
    }
}
