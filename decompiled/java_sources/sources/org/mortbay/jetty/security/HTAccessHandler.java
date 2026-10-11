package org.mortbay.jetty.security;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.StringTokenizer;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.jetty.Handler;
import org.mortbay.jetty.Request;
import org.mortbay.log.Log;
import org.mortbay.log.Logger;
import org.mortbay.resource.Resource;

/* loaded from: classes13.dex */
public class HTAccessHandler extends SecurityHandler {

    /* renamed from: r */
    public static Logger f114981r;

    /* renamed from: s */
    public static /* synthetic */ Class f114982s;

    /* renamed from: n */
    public Handler f114983n;

    /* renamed from: o */
    public String f114984o = null;

    /* renamed from: p */
    public String f114985p = ".htaccess";

    /* renamed from: q */
    public transient HashMap f114986q = new HashMap();

    /* renamed from: org.mortbay.jetty.security.HTAccessHandler$a */
    /* loaded from: classes13.dex */
    public class C20396a implements Principal {

        /* renamed from: e */
        public String f114987e;

        public C20396a(String str) {
            this.f114987e = str;
        }

        @Override // java.security.Principal
        public String getName() {
            return this.f114987e;
        }

        @Override // java.security.Principal
        public String toString() {
            return getName();
        }
    }

    /* renamed from: org.mortbay.jetty.security.HTAccessHandler$b */
    /* loaded from: classes13.dex */
    public static class C20397b {

        /* renamed from: t */
        public static final int f114989t = 0;

        /* renamed from: u */
        public static final int f114990u = 1;

        /* renamed from: v */
        public static final String f114991v = "user";

        /* renamed from: w */
        public static final String f114992w = "group";

        /* renamed from: x */
        public static final String f114993x = "valid-user";

        /* renamed from: a */
        public String f114994a;

        /* renamed from: b */
        public Resource f114995b;

        /* renamed from: d */
        public long f114997d;

        /* renamed from: e */
        public String f114998e;

        /* renamed from: f */
        public Resource f114999f;

        /* renamed from: h */
        public long f115001h;

        /* renamed from: j */
        public String f115003j;

        /* renamed from: k */
        public String f115004k;

        /* renamed from: n */
        public String f115007n;

        /* renamed from: o */
        public int f115008o;

        /* renamed from: r */
        public long f115011r;

        /* renamed from: s */
        public boolean f115012s;

        /* renamed from: c */
        public HashMap f114996c = null;

        /* renamed from: g */
        public HashMap f115000g = null;

        /* renamed from: i */
        public int f115002i = 0;

        /* renamed from: l */
        public HashMap f115005l = new HashMap();

        /* renamed from: m */
        public HashSet f115006m = new HashSet();

        /* renamed from: p */
        public ArrayList f115009p = new ArrayList();

        /* renamed from: q */
        public ArrayList f115010q = new ArrayList();

        public C20397b(Resource resource) {
            this.f115012s = false;
            try {
                m71580o(new BufferedReader(new InputStreamReader(resource.getInputStream())));
                this.f115011r = resource.lastModified();
                String str = this.f114994a;
                if (str != null) {
                    Resource newResource = Resource.newResource(str);
                    this.f114995b = newResource;
                    if (!newResource.exists()) {
                        this.f115012s = true;
                        Logger logger = HTAccessHandler.f114981r;
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("Could not find ht user file: ");
                        stringBuffer.append(this.f114994a);
                        logger.warn(stringBuffer.toString(), null, null);
                    } else if (HTAccessHandler.f114981r.isDebugEnabled()) {
                        Logger logger2 = HTAccessHandler.f114981r;
                        StringBuffer stringBuffer2 = new StringBuffer();
                        stringBuffer2.append("user file: ");
                        stringBuffer2.append(this.f114995b);
                        logger2.debug(stringBuffer2.toString(), null, null);
                    }
                }
                String str2 = this.f114998e;
                if (str2 != null) {
                    Resource newResource2 = Resource.newResource(str2);
                    this.f114999f = newResource2;
                    if (!newResource2.exists()) {
                        this.f115012s = true;
                        Logger logger3 = HTAccessHandler.f114981r;
                        StringBuffer stringBuffer3 = new StringBuffer();
                        stringBuffer3.append("Could not find ht group file: ");
                        stringBuffer3.append(this.f114999f);
                        logger3.warn(stringBuffer3.toString(), null, null);
                        return;
                    }
                    if (HTAccessHandler.f114981r.isDebugEnabled()) {
                        Logger logger4 = HTAccessHandler.f114981r;
                        StringBuffer stringBuffer4 = new StringBuffer();
                        stringBuffer4.append("group file: ");
                        stringBuffer4.append(this.f114999f);
                        logger4.debug(stringBuffer4.toString(), null, null);
                    }
                }
            } catch (IOException e) {
                this.f115012s = true;
                HTAccessHandler.f114981r.warn("LogSupport.EXCEPTION", e);
            }
        }

        /* renamed from: a */
        public boolean m71566a(String str, String str2) {
            boolean z;
            boolean z2;
            if (this.f115009p.size() == 0 && this.f115010q.size() == 0) {
                return true;
            }
            for (int i = 0; i < this.f115009p.size(); i++) {
                String str3 = (String) this.f115009p.get(i);
                if (!str3.equals("all")) {
                    char charAt = str3.charAt(0);
                    if (charAt < '0' || charAt > '9') {
                        if (!str.endsWith(str3)) {
                        }
                    } else if (!str2.startsWith(str3)) {
                    }
                }
                z = true;
            }
            z = false;
            for (int i2 = 0; i2 < this.f115010q.size(); i2++) {
                String str4 = (String) this.f115010q.get(i2);
                if (!str4.equals("all")) {
                    char charAt2 = str4.charAt(0);
                    if (charAt2 < '0' || charAt2 > '9') {
                        if (!str.endsWith(str4)) {
                        }
                    } else if (!str2.startsWith(str4)) {
                    }
                }
                z2 = true;
            }
            z2 = false;
            return this.f115008o < 0 ? !z2 || z : z && !z2;
        }

        /* renamed from: b */
        public boolean m71567b(String str, String str2, UserRealm userRealm, Request request) {
            if (this.f115007n == null) {
                return true;
            }
            String str3 = null;
            if ((userRealm == null ? null : userRealm.authenticate(str, str2, request)) == null) {
                String m71574i = m71574i(str);
                String substring = m71574i != null ? m71574i.substring(0, 2) : str;
                if (str != null && str2 != null) {
                    str3 = UnixCrypt.crypt(str2, substring);
                }
                if (m71574i == null || ((m71574i.equals("") && !str2.equals("")) || !m71574i.equals(str3))) {
                    return false;
                }
            }
            if (this.f115007n.equalsIgnoreCase("user")) {
                if (this.f115006m.contains(str)) {
                    return true;
                }
            } else if (this.f115007n.equalsIgnoreCase("group")) {
                ArrayList m71575j = m71575j(str);
                if (m71575j != null) {
                    int size = m71575j.size();
                    while (true) {
                        int i = size - 1;
                        if (size <= 0) {
                            break;
                        }
                        if (this.f115006m.contains(m71575j.get(i))) {
                            return true;
                        }
                        size = i;
                    }
                }
            } else if (this.f115007n.equalsIgnoreCase(f114993x)) {
                return true;
            }
            return false;
        }

        /* renamed from: c */
        public Resource m71568c() {
            return this.f114999f;
        }

        /* renamed from: d */
        public long m71569d() {
            return this.f115011r;
        }

        /* renamed from: e */
        public HashMap m71570e() {
            return this.f115005l;
        }

        /* renamed from: f */
        public String m71571f() {
            return this.f115004k;
        }

        /* renamed from: g */
        public int m71572g() {
            return this.f115002i;
        }

        /* renamed from: h */
        public String m71573h() {
            return this.f115003j;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:51:0x00bc A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* renamed from: i */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.String m71574i(java.lang.String r9) {
            /*
                r8 = this;
                java.lang.String r0 = "LogSupport.EXCEPTION"
                org.mortbay.resource.Resource r1 = r8.f114995b
                r2 = 0
                if (r1 != 0) goto L8
                return r2
            L8:
                java.util.HashMap r3 = r8.f114996c
                if (r3 == 0) goto L16
                long r3 = r8.f114997d
                long r5 = r1.lastModified()
                int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r1 == 0) goto Laf
            L16:
                org.mortbay.log.Logger r1 = org.mortbay.jetty.security.HTAccessHandler.m71564g()
                boolean r1 = r1.isDebugEnabled()
                if (r1 == 0) goto L3a
                org.mortbay.log.Logger r1 = org.mortbay.jetty.security.HTAccessHandler.m71564g()
                java.lang.StringBuffer r3 = new java.lang.StringBuffer
                r3.<init>()
                java.lang.String r4 = "LOAD "
                r3.append(r4)
                org.mortbay.resource.Resource r4 = r8.f114995b
                r3.append(r4)
                java.lang.String r3 = r3.toString()
                r1.debug(r3, r2, r2)
            L3a:
                java.util.HashMap r1 = new java.util.HashMap
                r1.<init>()
                r8.f114996c = r1
                java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L9d java.io.IOException -> L9f
                java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L9d java.io.IOException -> L9f
                org.mortbay.resource.Resource r4 = r8.f114995b     // Catch: java.lang.Throwable -> L9d java.io.IOException -> L9f
                java.io.InputStream r4 = r4.getInputStream()     // Catch: java.lang.Throwable -> L9d java.io.IOException -> L9f
                r3.<init>(r4)     // Catch: java.lang.Throwable -> L9d java.io.IOException -> L9f
                r1.<init>(r3)     // Catch: java.lang.Throwable -> L9d java.io.IOException -> L9f
                org.mortbay.resource.Resource r2 = r8.f114995b     // Catch: java.io.IOException -> L9b java.lang.Throwable -> Lb8
                long r2 = r2.lastModified()     // Catch: java.io.IOException -> L9b java.lang.Throwable -> Lb8
                r8.f114997d = r2     // Catch: java.io.IOException -> L9b java.lang.Throwable -> Lb8
            L59:
                java.lang.String r2 = r1.readLine()     // Catch: java.io.IOException -> L9b java.lang.Throwable -> Lb8
                if (r2 == 0) goto L8e
                java.lang.String r2 = r2.trim()     // Catch: java.io.IOException -> L9b java.lang.Throwable -> Lb8
                java.lang.String r3 = "#"
                boolean r3 = r2.startsWith(r3)     // Catch: java.io.IOException -> L9b java.lang.Throwable -> Lb8
                if (r3 == 0) goto L6c
                goto L59
            L6c:
                r3 = 58
                int r3 = r2.indexOf(r3)     // Catch: java.io.IOException -> L9b java.lang.Throwable -> Lb8
                if (r3 >= 0) goto L75
                goto L59
            L75:
                r4 = 0
                java.lang.String r4 = r2.substring(r4, r3)     // Catch: java.io.IOException -> L9b java.lang.Throwable -> Lb8
                java.lang.String r4 = r4.trim()     // Catch: java.io.IOException -> L9b java.lang.Throwable -> Lb8
                int r3 = r3 + 1
                java.lang.String r2 = r2.substring(r3)     // Catch: java.io.IOException -> L9b java.lang.Throwable -> Lb8
                java.lang.String r2 = r2.trim()     // Catch: java.io.IOException -> L9b java.lang.Throwable -> Lb8
                java.util.HashMap r3 = r8.f114996c     // Catch: java.io.IOException -> L9b java.lang.Throwable -> Lb8
                r3.put(r4, r2)     // Catch: java.io.IOException -> L9b java.lang.Throwable -> Lb8
                goto L59
            L8e:
                r1.close()     // Catch: java.io.IOException -> L92
                goto Laf
            L92:
                r1 = move-exception
                org.mortbay.log.Logger r2 = org.mortbay.jetty.security.HTAccessHandler.m71564g()
                r2.warn(r0, r1)
                goto Laf
            L9b:
                r2 = move-exception
                goto La3
            L9d:
                r8 = move-exception
                goto Lba
            L9f:
                r1 = move-exception
                r7 = r2
                r2 = r1
                r1 = r7
            La3:
                org.mortbay.log.Logger r3 = org.mortbay.jetty.security.HTAccessHandler.m71564g()     // Catch: java.lang.Throwable -> Lb8
                r3.warn(r0, r2)     // Catch: java.lang.Throwable -> Lb8
                if (r1 == 0) goto Laf
                r1.close()     // Catch: java.io.IOException -> L92
            Laf:
                java.util.HashMap r8 = r8.f114996c
                java.lang.Object r8 = r8.get(r9)
                java.lang.String r8 = (java.lang.String) r8
                return r8
            Lb8:
                r8 = move-exception
                r2 = r1
            Lba:
                if (r2 == 0) goto Lc8
                r2.close()     // Catch: java.io.IOException -> Lc0
                goto Lc8
            Lc0:
                r9 = move-exception
                org.mortbay.log.Logger r1 = org.mortbay.jetty.security.HTAccessHandler.m71564g()
                r1.warn(r0, r9)
            Lc8:
                throw r8
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.security.HTAccessHandler.C20397b.m71574i(java.lang.String):java.lang.String");
        }

        /* JADX WARN: Removed duplicated region for block: B:67:0x00db A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* renamed from: j */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.util.ArrayList m71575j(java.lang.String r9) {
            /*
                r8 = this;
                java.lang.String r0 = "LogSupport.EXCEPTION"
                org.mortbay.resource.Resource r1 = r8.f114999f
                r2 = 0
                if (r1 != 0) goto L8
                return r2
            L8:
                java.util.HashMap r3 = r8.f115000g
                if (r3 == 0) goto L16
                long r3 = r8.f115001h
                long r5 = r1.lastModified()
                int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r1 == 0) goto Lce
            L16:
                org.mortbay.log.Logger r1 = org.mortbay.jetty.security.HTAccessHandler.m71564g()
                boolean r1 = r1.isDebugEnabled()
                if (r1 == 0) goto L3a
                org.mortbay.log.Logger r1 = org.mortbay.jetty.security.HTAccessHandler.m71564g()
                java.lang.StringBuffer r3 = new java.lang.StringBuffer
                r3.<init>()
                java.lang.String r4 = "LOAD "
                r3.append(r4)
                org.mortbay.resource.Resource r4 = r8.f114999f
                r3.append(r4)
                java.lang.String r3 = r3.toString()
                r1.debug(r3, r2, r2)
            L3a:
                java.util.HashMap r1 = new java.util.HashMap
                r1.<init>()
                r8.f115000g = r1
                java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> Lbc java.io.IOException -> Lbe
                java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> Lbc java.io.IOException -> Lbe
                org.mortbay.resource.Resource r4 = r8.f114999f     // Catch: java.lang.Throwable -> Lbc java.io.IOException -> Lbe
                java.io.InputStream r4 = r4.getInputStream()     // Catch: java.lang.Throwable -> Lbc java.io.IOException -> Lbe
                r3.<init>(r4)     // Catch: java.lang.Throwable -> Lbc java.io.IOException -> Lbe
                r1.<init>(r3)     // Catch: java.lang.Throwable -> Lbc java.io.IOException -> Lbe
                org.mortbay.resource.Resource r2 = r8.f114999f     // Catch: java.io.IOException -> Lba java.lang.Throwable -> Ld7
                long r2 = r2.lastModified()     // Catch: java.io.IOException -> Lba java.lang.Throwable -> Ld7
                r8.f115001h = r2     // Catch: java.io.IOException -> Lba java.lang.Throwable -> Ld7
            L59:
                java.lang.String r2 = r1.readLine()     // Catch: java.io.IOException -> Lba java.lang.Throwable -> Ld7
                if (r2 == 0) goto Lad
                java.lang.String r2 = r2.trim()     // Catch: java.io.IOException -> Lba java.lang.Throwable -> Ld7
                java.lang.String r3 = "#"
                boolean r3 = r2.startsWith(r3)     // Catch: java.io.IOException -> Lba java.lang.Throwable -> Ld7
                if (r3 != 0) goto L59
                int r3 = r2.length()     // Catch: java.io.IOException -> Lba java.lang.Throwable -> Ld7
                if (r3 != 0) goto L72
                goto L59
            L72:
                java.util.StringTokenizer r3 = new java.util.StringTokenizer     // Catch: java.io.IOException -> Lba java.lang.Throwable -> Ld7
                java.lang.String r4 = ": \t"
                r3.<init>(r2, r4)     // Catch: java.io.IOException -> Lba java.lang.Throwable -> Ld7
                boolean r2 = r3.hasMoreTokens()     // Catch: java.io.IOException -> Lba java.lang.Throwable -> Ld7
                if (r2 != 0) goto L80
                goto L59
            L80:
                java.lang.String r2 = r3.nextToken()     // Catch: java.io.IOException -> Lba java.lang.Throwable -> Ld7
                boolean r4 = r3.hasMoreTokens()     // Catch: java.io.IOException -> Lba java.lang.Throwable -> Ld7
                if (r4 != 0) goto L8b
                goto L59
            L8b:
                boolean r4 = r3.hasMoreTokens()     // Catch: java.io.IOException -> Lba java.lang.Throwable -> Ld7
                if (r4 == 0) goto L59
                java.lang.String r4 = r3.nextToken()     // Catch: java.io.IOException -> Lba java.lang.Throwable -> Ld7
                java.util.HashMap r5 = r8.f115000g     // Catch: java.io.IOException -> Lba java.lang.Throwable -> Ld7
                java.lang.Object r5 = r5.get(r4)     // Catch: java.io.IOException -> Lba java.lang.Throwable -> Ld7
                java.util.ArrayList r5 = (java.util.ArrayList) r5     // Catch: java.io.IOException -> Lba java.lang.Throwable -> Ld7
                if (r5 != 0) goto La9
                java.util.ArrayList r5 = new java.util.ArrayList     // Catch: java.io.IOException -> Lba java.lang.Throwable -> Ld7
                r5.<init>()     // Catch: java.io.IOException -> Lba java.lang.Throwable -> Ld7
                java.util.HashMap r6 = r8.f115000g     // Catch: java.io.IOException -> Lba java.lang.Throwable -> Ld7
                r6.put(r4, r5)     // Catch: java.io.IOException -> Lba java.lang.Throwable -> Ld7
            La9:
                r5.add(r2)     // Catch: java.io.IOException -> Lba java.lang.Throwable -> Ld7
                goto L8b
            Lad:
                r1.close()     // Catch: java.io.IOException -> Lb1
                goto Lce
            Lb1:
                r1 = move-exception
                org.mortbay.log.Logger r2 = org.mortbay.jetty.security.HTAccessHandler.m71564g()
                r2.warn(r0, r1)
                goto Lce
            Lba:
                r2 = move-exception
                goto Lc2
            Lbc:
                r8 = move-exception
                goto Ld9
            Lbe:
                r1 = move-exception
                r7 = r2
                r2 = r1
                r1 = r7
            Lc2:
                org.mortbay.log.Logger r3 = org.mortbay.jetty.security.HTAccessHandler.m71564g()     // Catch: java.lang.Throwable -> Ld7
                r3.warn(r0, r2)     // Catch: java.lang.Throwable -> Ld7
                if (r1 == 0) goto Lce
                r1.close()     // Catch: java.io.IOException -> Lb1
            Lce:
                java.util.HashMap r8 = r8.f115000g
                java.lang.Object r8 = r8.get(r9)
                java.util.ArrayList r8 = (java.util.ArrayList) r8
                return r8
            Ld7:
                r8 = move-exception
                r2 = r1
            Ld9:
                if (r2 == 0) goto Le7
                r2.close()     // Catch: java.io.IOException -> Ldf
                goto Le7
            Ldf:
                r9 = move-exception
                org.mortbay.log.Logger r1 = org.mortbay.jetty.security.HTAccessHandler.m71564g()
                r1.warn(r0, r9)
            Le7:
                throw r8
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.security.HTAccessHandler.C20397b.m71575j(java.lang.String):java.util.ArrayList");
        }

        /* renamed from: k */
        public Resource m71576k() {
            return this.f114995b;
        }

        /* renamed from: l */
        public boolean m71577l() {
            return this.f115009p.size() > 0 || this.f115010q.size() > 0;
        }

        /* renamed from: m */
        public boolean m71578m() {
            return this.f115007n != null;
        }

        /* renamed from: n */
        public boolean m71579n() {
            return this.f115012s;
        }

        /* renamed from: o */
        public final void m71580o(BufferedReader bufferedReader) throws IOException {
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    return;
                }
                String trim = readLine.trim();
                if (!trim.startsWith("#")) {
                    if (trim.startsWith("AuthUserFile")) {
                        this.f114994a = trim.substring(13).trim();
                    } else if (trim.startsWith("AuthGroupFile")) {
                        this.f114998e = trim.substring(14).trim();
                    } else if (trim.startsWith("AuthName")) {
                        this.f115004k = trim.substring(8).trim();
                    } else if (trim.startsWith("AuthType")) {
                        this.f115003j = trim.substring(8).trim();
                    } else if (trim.startsWith("<Limit")) {
                        int length = trim.length();
                        int indexOf = trim.indexOf(62);
                        if (indexOf >= 0) {
                            length = indexOf;
                        }
                        StringTokenizer stringTokenizer = new StringTokenizer(trim.substring(6, length));
                        while (stringTokenizer.hasMoreTokens()) {
                            this.f115005l.put(stringTokenizer.nextToken(), Boolean.TRUE);
                        }
                        while (true) {
                            String readLine2 = bufferedReader.readLine();
                            if (readLine2 != null) {
                                String trim2 = readLine2.trim();
                                if (!trim2.startsWith("#")) {
                                    int i = 7;
                                    if (trim2.startsWith("satisfy")) {
                                        int length2 = trim2.length();
                                        while (i < length2 && trim2.charAt(i) <= ' ') {
                                            i++;
                                        }
                                        int i2 = i;
                                        while (i2 < length2 && trim2.charAt(i2) > ' ') {
                                            i2++;
                                        }
                                        String substring = trim2.substring(i, i2);
                                        if (substring.equals("all")) {
                                            this.f115002i = 1;
                                        } else if (substring.equals("any")) {
                                            this.f115002i = 0;
                                        }
                                    } else if (trim2.startsWith("require")) {
                                        int length3 = trim2.length();
                                        while (i < length3 && trim2.charAt(i) <= ' ') {
                                            i++;
                                        }
                                        int i3 = i;
                                        while (i3 < length3 && trim2.charAt(i3) > ' ') {
                                            i3++;
                                        }
                                        String lowerCase = trim2.substring(i, i3).toLowerCase();
                                        this.f115007n = lowerCase;
                                        if ("user".equals(lowerCase)) {
                                            this.f115007n = "user";
                                        } else if ("group".equals(this.f115007n)) {
                                            this.f115007n = "group";
                                        } else if (f114993x.equals(this.f115007n)) {
                                            this.f115007n = f114993x;
                                        }
                                        int i4 = i3 + 1;
                                        if (i4 < length3) {
                                            while (i4 < length3 && trim2.charAt(i4) <= ' ') {
                                                i4++;
                                            }
                                            StringTokenizer stringTokenizer2 = new StringTokenizer(trim2.substring(i4));
                                            while (stringTokenizer2.hasMoreTokens()) {
                                                this.f115006m.add(stringTokenizer2.nextToken());
                                            }
                                        }
                                    } else if (trim2.startsWith(Constants.ATTRNAME_ORDER)) {
                                        if (HTAccessHandler.f114981r.isDebugEnabled()) {
                                            Logger logger = HTAccessHandler.f114981r;
                                            StringBuffer stringBuffer = new StringBuffer();
                                            stringBuffer.append("orderline=");
                                            stringBuffer.append(trim2);
                                            stringBuffer.append("order=");
                                            stringBuffer.append(this.f115008o);
                                            logger.debug(stringBuffer.toString(), null, null);
                                        }
                                        if (trim2.indexOf("allow,deny") > 0) {
                                            HTAccessHandler.f114981r.debug("==>allow+deny", null, null);
                                            this.f115008o = 1;
                                        } else if (trim2.indexOf("deny,allow") > 0) {
                                            HTAccessHandler.f114981r.debug("==>deny,allow", null, null);
                                            this.f115008o = -1;
                                        } else if (trim2.indexOf("mutual-failure") > 0) {
                                            HTAccessHandler.f114981r.debug("==>mutual", null, null);
                                            this.f115008o = 0;
                                        }
                                    } else if (trim2.startsWith("allow from")) {
                                        int length4 = trim2.length();
                                        int i5 = 10;
                                        while (i5 < length4 && trim2.charAt(i5) <= ' ') {
                                            i5++;
                                        }
                                        if (HTAccessHandler.f114981r.isDebugEnabled()) {
                                            Logger logger2 = HTAccessHandler.f114981r;
                                            StringBuffer stringBuffer2 = new StringBuffer();
                                            stringBuffer2.append("allow process:");
                                            stringBuffer2.append(trim2.substring(i5));
                                            logger2.debug(stringBuffer2.toString(), null, null);
                                        }
                                        StringTokenizer stringTokenizer3 = new StringTokenizer(trim2.substring(i5));
                                        while (stringTokenizer3.hasMoreTokens()) {
                                            this.f115009p.add(stringTokenizer3.nextToken());
                                        }
                                    } else if (trim2.startsWith("deny from")) {
                                        int length5 = trim2.length();
                                        int i6 = 9;
                                        while (i6 < length5 && trim2.charAt(i6) <= ' ') {
                                            i6++;
                                        }
                                        if (HTAccessHandler.f114981r.isDebugEnabled()) {
                                            Logger logger3 = HTAccessHandler.f114981r;
                                            StringBuffer stringBuffer3 = new StringBuffer();
                                            stringBuffer3.append("deny process:");
                                            stringBuffer3.append(trim2.substring(i6));
                                            logger3.debug(stringBuffer3.toString(), null, null);
                                        }
                                        StringTokenizer stringTokenizer4 = new StringTokenizer(trim2.substring(i6));
                                        while (stringTokenizer4.hasMoreTokens()) {
                                            this.f115010q.add(stringTokenizer4.nextToken());
                                        }
                                    } else if (trim2.startsWith("</Limit>")) {
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("AuthUserFile=");
            stringBuffer.append(this.f114994a);
            stringBuffer.append(", AuthGroupFile=");
            stringBuffer.append(this.f114998e);
            stringBuffer.append(", AuthName=");
            stringBuffer.append(this.f115004k);
            stringBuffer.append(", AuthType=");
            stringBuffer.append(this.f115003j);
            stringBuffer.append(", Methods=");
            stringBuffer.append(this.f115005l);
            stringBuffer.append(", satisfy=");
            stringBuffer.append(this.f115002i);
            int i = this.f115008o;
            if (i < 0) {
                stringBuffer.append(", order=deny,allow");
            } else if (i > 0) {
                stringBuffer.append(", order=allow,deny");
            } else {
                stringBuffer.append(", order=mutual-failure");
            }
            stringBuffer.append(", Allow from=");
            stringBuffer.append(this.f115009p);
            stringBuffer.append(", deny from=");
            stringBuffer.append(this.f115010q);
            stringBuffer.append(", requireName=");
            stringBuffer.append(this.f115007n);
            stringBuffer.append(" ");
            stringBuffer.append(this.f115006m);
            return stringBuffer.toString();
        }
    }

    static {
        Class cls = f114982s;
        if (cls == null) {
            cls = class$("org.mortbay.jetty.security.HTAccessHandler");
            f114982s = cls;
        }
        f114981r = Log.getLogger(cls.getName());
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public Principal getPrincipal(String str, UserRealm userRealm) {
        return userRealm == null ? new C20396a(str) : userRealm.getPrincipal(str);
    }

    public Handler getProtegee() {
        return this.f114983n;
    }

    /* renamed from: h */
    public final void m71565h(String str, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, int i) throws IOException, ServletException {
        Handler handler = getHandler();
        if (handler != null) {
            handler.handle(str, httpServletRequest, httpServletResponse, i);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:99:0x0199, code lost:
    
        if (r8.m71569d() != r12.lastModified()) goto L62;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0131 A[Catch: Exception -> 0x029d, TryCatch #1 {Exception -> 0x029d, blocks: (B:16:0x00a4, B:21:0x00b4, B:23:0x00d7, B:25:0x00f7, B:27:0x00fd, B:32:0x010c, B:34:0x0110, B:36:0x011a, B:41:0x0127, B:43:0x0131, B:45:0x014a, B:49:0x0167, B:51:0x016f, B:52:0x0185, B:102:0x0291, B:104:0x0295, B:109:0x0104, B:114:0x00ae), top: B:15:0x00a4 }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:96:? A[RETURN, SYNTHETIC] */
    @Override // org.mortbay.jetty.security.SecurityHandler, org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.Handler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handle(java.lang.String r19, javax.servlet.http.HttpServletRequest r20, javax.servlet.http.HttpServletResponse r21, int r22) throws java.io.IOException, javax.servlet.ServletException {
        /*
            Method dump skipped, instructions count: 688
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.security.HTAccessHandler.handle(java.lang.String, javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, int):void");
    }

    public void setAccessFile(String str) {
        if (str == null) {
            this.f114985p = ".htaccess";
        } else {
            this.f114985p = str;
        }
    }

    public void setDefault(String str) {
        this.f114984o = str;
    }

    public void setProtegee(Handler handler) {
        this.f114983n = handler;
    }
}
