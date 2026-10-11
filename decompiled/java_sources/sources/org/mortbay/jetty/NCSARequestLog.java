package org.mortbay.jetty;

import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Locale;
import java.util.TimeZone;
import javax.servlet.http.Cookie;
import org.apache.commons.lang3.time.TimeZones;
import org.mortbay.component.AbstractLifeCycle;
import org.mortbay.jetty.servlet.PathMap;
import org.mortbay.log.Log;
import org.mortbay.util.DateCache;
import org.mortbay.util.RolloverFileOutputStream;
import org.mortbay.util.StringUtil;
import org.mortbay.util.TypeUtil;
import org.mortbay.util.Utf8StringBuffer;

/* loaded from: classes13.dex */
public class NCSARequestLog extends AbstractLifeCycle implements RequestLog {

    /* renamed from: e */
    public String f114708e;

    /* renamed from: i */
    public boolean f114712i;

    /* renamed from: j */
    public boolean f114713j;

    /* renamed from: o */
    public String[] f114718o;

    /* renamed from: s */
    public transient OutputStream f114722s;

    /* renamed from: t */
    public transient OutputStream f114723t;

    /* renamed from: u */
    public transient DateCache f114724u;

    /* renamed from: v */
    public transient PathMap f114725v;

    /* renamed from: w */
    public transient Writer f114726w;

    /* renamed from: x */
    public transient ArrayList f114727x;

    /* renamed from: y */
    public transient char[] f114728y;

    /* renamed from: k */
    public String f114714k = "dd/MMM/yyyy:HH:mm:ss Z";

    /* renamed from: l */
    public String f114715l = null;

    /* renamed from: m */
    public Locale f114716m = Locale.getDefault();

    /* renamed from: n */
    public String f114717n = TimeZones.GMT_ID;

    /* renamed from: p */
    public boolean f114719p = false;

    /* renamed from: q */
    public boolean f114720q = false;

    /* renamed from: r */
    public boolean f114721r = false;

    /* renamed from: f */
    public boolean f114709f = true;

    /* renamed from: g */
    public boolean f114710g = true;

    /* renamed from: h */
    public int f114711h = 31;

    public NCSARequestLog() {
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        if (this.f114714k != null) {
            DateCache dateCache = new DateCache(this.f114714k, this.f114716m);
            this.f114724u = dateCache;
            dateCache.setTimeZoneID(this.f114717n);
        }
        if (this.f114708e != null) {
            this.f114723t = new RolloverFileOutputStream(this.f114708e, this.f114710g, this.f114711h, TimeZone.getTimeZone(this.f114717n), this.f114715l, null);
            this.f114712i = true;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Opened ");
            stringBuffer.append(getDatedFilename());
            Log.info(stringBuffer.toString());
        } else {
            this.f114723t = System.err;
        }
        this.f114722s = this.f114723t;
        String[] strArr = this.f114718o;
        if (strArr != null && strArr.length > 0) {
            this.f114725v = new PathMap();
            int i = 0;
            while (true) {
                String[] strArr2 = this.f114718o;
                if (i >= strArr2.length) {
                    break;
                }
                PathMap pathMap = this.f114725v;
                String str = strArr2[i];
                pathMap.put(str, str);
                i++;
            }
        } else {
            this.f114725v = null;
        }
        this.f114726w = new OutputStreamWriter(this.f114722s);
        this.f114727x = new ArrayList();
        this.f114728y = new char[1024];
        super.doStart();
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    public void doStop() throws Exception {
        super.doStop();
        try {
            Writer writer = this.f114726w;
            if (writer != null) {
                writer.flush();
            }
        } catch (IOException e) {
            Log.ignore(e);
        }
        OutputStream outputStream = this.f114722s;
        if (outputStream != null && this.f114712i) {
            try {
                outputStream.close();
            } catch (IOException e2) {
                Log.ignore(e2);
            }
        }
        this.f114722s = null;
        this.f114723t = null;
        this.f114712i = false;
        this.f114724u = null;
        this.f114726w = null;
        this.f114727x = null;
        this.f114728y = null;
    }

    public String getDatedFilename() {
        OutputStream outputStream = this.f114723t;
        if (outputStream instanceof RolloverFileOutputStream) {
            return ((RolloverFileOutputStream) outputStream).getDatedFilename();
        }
        return null;
    }

    public String getFilename() {
        return this.f114708e;
    }

    public String getFilenameDateFormat() {
        return this.f114715l;
    }

    public String[] getIgnorePaths() {
        return this.f114718o;
    }

    public boolean getLogCookies() {
        return this.f114720q;
    }

    public String getLogDateFormat() {
        return this.f114714k;
    }

    public boolean getLogLatency() {
        return this.f114719p;
    }

    public Locale getLogLocale() {
        return this.f114716m;
    }

    public boolean getLogServer() {
        return this.f114721r;
    }

    public String getLogTimeZone() {
        return this.f114717n;
    }

    public int getRetainDays() {
        return this.f114711h;
    }

    public boolean isAppend() {
        return this.f114710g;
    }

    public boolean isExtended() {
        return this.f114709f;
    }

    @Override // org.mortbay.jetty.RequestLog
    public void log(Request request, Response response) {
        PathMap pathMap;
        Utf8StringBuffer utf8StringBuffer;
        StringBuffer stringBuffer;
        if (isStarted()) {
            try {
                pathMap = this.f114725v;
            } catch (IOException e) {
                Log.warn(e);
            }
            if ((pathMap == null || pathMap.getMatch(request.getRequestURI()) == null) && this.f114723t != null) {
                synchronized (this.f114726w) {
                    int size = this.f114727x.size();
                    utf8StringBuffer = size == 0 ? new Utf8StringBuffer(160) : (Utf8StringBuffer) this.f114727x.remove(size - 1);
                    stringBuffer = utf8StringBuffer.getStringBuffer();
                }
                synchronized (stringBuffer) {
                    if (this.f114721r) {
                        stringBuffer.append(request.getServerName());
                        stringBuffer.append(' ');
                    }
                    String header = this.f114713j ? request.getHeader("X-Forwarded-For") : null;
                    if (header == null) {
                        header = request.getRemoteAddr();
                    }
                    stringBuffer.append(header);
                    stringBuffer.append(" - ");
                    String remoteUser = request.getRemoteUser();
                    if (remoteUser == null) {
                        remoteUser = " - ";
                    }
                    stringBuffer.append(remoteUser);
                    stringBuffer.append(" [");
                    DateCache dateCache = this.f114724u;
                    if (dateCache != null) {
                        stringBuffer.append(dateCache.format(request.getTimeStamp()));
                    } else {
                        stringBuffer.append(request.getTimeStampBuffer().toString());
                    }
                    stringBuffer.append("] \"");
                    stringBuffer.append(request.getMethod());
                    stringBuffer.append(' ');
                    request.getUri().writeTo(utf8StringBuffer);
                    stringBuffer.append(' ');
                    stringBuffer.append(request.getProtocol());
                    stringBuffer.append("\" ");
                    int status = response.getStatus();
                    if (status <= 0) {
                        status = 404;
                    }
                    stringBuffer.append((char) (((status / 100) % 10) + 48));
                    stringBuffer.append((char) (((status / 10) % 10) + 48));
                    stringBuffer.append((char) ((status % 10) + 48));
                    long contentCount = response.getContentCount();
                    if (contentCount >= 0) {
                        stringBuffer.append(' ');
                        if (contentCount > 99999) {
                            stringBuffer.append(Long.toString(contentCount));
                        } else {
                            if (contentCount > 9999) {
                                stringBuffer.append((char) (((contentCount / 10000) % 10) + 48));
                            }
                            if (contentCount > 999) {
                                stringBuffer.append((char) (((contentCount / 1000) % 10) + 48));
                            }
                            if (contentCount > 99) {
                                stringBuffer.append((char) (((contentCount / 100) % 10) + 48));
                            }
                            if (contentCount > 9) {
                                stringBuffer.append((char) (((contentCount / 10) % 10) + 48));
                            }
                            stringBuffer.append((char) ((contentCount % 10) + 48));
                        }
                        stringBuffer.append(' ');
                    } else {
                        stringBuffer.append(" - ");
                    }
                }
                if (!this.f114709f && !this.f114720q && !this.f114719p) {
                    synchronized (this.f114726w) {
                        stringBuffer.append(StringUtil.__LINE_SEPARATOR);
                        int length = stringBuffer.length();
                        char[] cArr = this.f114728y;
                        if (length > cArr.length) {
                            length = cArr.length;
                        }
                        stringBuffer.getChars(0, length, cArr, 0);
                        this.f114726w.write(this.f114728y, 0, length);
                        this.f114726w.flush();
                        utf8StringBuffer.reset();
                        this.f114727x.add(utf8StringBuffer);
                    }
                    return;
                }
                synchronized (this.f114726w) {
                    int length2 = stringBuffer.length();
                    char[] cArr2 = this.f114728y;
                    if (length2 > cArr2.length) {
                        length2 = cArr2.length;
                    }
                    stringBuffer.getChars(0, length2, cArr2, 0);
                    this.f114726w.write(this.f114728y, 0, length2);
                    utf8StringBuffer.reset();
                    this.f114727x.add(utf8StringBuffer);
                    if (this.f114709f) {
                        logExtended(request, response, this.f114726w);
                    }
                    if (this.f114720q) {
                        Cookie[] cookies = request.getCookies();
                        if (cookies != null && cookies.length != 0) {
                            this.f114726w.write(" \"");
                            for (int i = 0; i < cookies.length; i++) {
                                if (i != 0) {
                                    this.f114726w.write(59);
                                }
                                this.f114726w.write(cookies[i].getName());
                                this.f114726w.write(61);
                                this.f114726w.write(cookies[i].getValue());
                            }
                            this.f114726w.write(34);
                        }
                        this.f114726w.write(" -");
                    }
                    if (this.f114719p) {
                        this.f114726w.write(32);
                        this.f114726w.write(TypeUtil.toString(System.currentTimeMillis() - request.getTimeStamp()));
                    }
                    this.f114726w.write(StringUtil.__LINE_SEPARATOR);
                    this.f114726w.flush();
                }
                return;
                Log.warn(e);
            }
        }
    }

    public void logExtended(Request request, Response response, Writer writer) throws IOException {
        String header = request.getHeader("Referer");
        if (header == null) {
            writer.write("\"-\" ");
        } else {
            writer.write(34);
            writer.write(header);
            writer.write("\" ");
        }
        String header2 = request.getHeader("User-Agent");
        if (header2 == null) {
            writer.write("\"-\" ");
            return;
        }
        writer.write(34);
        writer.write(header2);
        writer.write(34);
    }

    public void setAppend(boolean z) {
        this.f114710g = z;
    }

    public void setExtended(boolean z) {
        this.f114709f = z;
    }

    public void setFilename(String str) {
        if (str != null) {
            str = str.trim();
            if (str.length() == 0) {
                str = null;
            }
        }
        this.f114708e = str;
    }

    public void setFilenameDateFormat(String str) {
        this.f114715l = str;
    }

    public void setIgnorePaths(String[] strArr) {
        this.f114718o = strArr;
    }

    public void setLogCookies(boolean z) {
        this.f114720q = z;
    }

    public void setLogDateFormat(String str) {
        this.f114714k = str;
    }

    public void setLogLatency(boolean z) {
        this.f114719p = z;
    }

    public void setLogLocale(Locale locale) {
        this.f114716m = locale;
    }

    public void setLogServer(boolean z) {
        this.f114721r = z;
    }

    public void setLogTimeZone(String str) {
        this.f114717n = str;
    }

    public void setPreferProxiedForAddress(boolean z) {
        this.f114713j = z;
    }

    public void setRetainDays(int i) {
        this.f114711h = i;
    }

    public NCSARequestLog(String str) {
        setFilename(str);
    }
}
