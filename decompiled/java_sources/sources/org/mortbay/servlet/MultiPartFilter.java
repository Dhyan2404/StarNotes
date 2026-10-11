package org.mortbay.servlet;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.servlet.Filter;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import org.mortbay.jetty.servlet.ServletHandler;
import org.mortbay.util.LazyList;
import org.mortbay.util.MultiMap;

/* loaded from: classes13.dex */
public class MultiPartFilter implements Filter {

    /* renamed from: e */
    public static final String f115241e = "org.mortbay.servlet.MultiPartFilter.files";

    /* renamed from: a */
    public File f115242a;

    /* renamed from: b */
    public boolean f115243b;

    /* renamed from: c */
    public ServletContext f115244c;

    /* renamed from: d */
    public int f115245d = 0;

    /* renamed from: org.mortbay.servlet.MultiPartFilter$a */
    /* loaded from: classes13.dex */
    public static class C20425a extends HttpServletRequestWrapper {

        /* renamed from: b */
        public String f115246b;

        /* renamed from: c */
        public MultiMap f115247c;

        public C20425a(HttpServletRequest httpServletRequest, MultiMap multiMap) {
            super(httpServletRequest);
            this.f115246b = "UTF-8";
            this.f115247c = multiMap;
        }

        @Override // javax.servlet.ServletRequestWrapper, javax.servlet.ServletRequest
        public int getContentLength() {
            return 0;
        }

        @Override // javax.servlet.ServletRequestWrapper, javax.servlet.ServletRequest
        public String getParameter(String str) {
            Object obj = this.f115247c.get(str);
            if (!(obj instanceof byte[]) && LazyList.size(obj) > 0) {
                obj = LazyList.get(obj, 0);
            }
            if (!(obj instanceof byte[])) {
                if (obj != null) {
                    return String.valueOf(obj);
                }
                return null;
            }
            try {
                return new String((byte[]) obj, this.f115246b);
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        @Override // javax.servlet.ServletRequestWrapper, javax.servlet.ServletRequest
        public Map getParameterMap() {
            return Collections.unmodifiableMap(this.f115247c.toStringArrayMap());
        }

        @Override // javax.servlet.ServletRequestWrapper, javax.servlet.ServletRequest
        public Enumeration getParameterNames() {
            return Collections.enumeration(this.f115247c.keySet());
        }

        @Override // javax.servlet.ServletRequestWrapper, javax.servlet.ServletRequest
        public String[] getParameterValues(String str) {
            List values = this.f115247c.getValues(str);
            if (values == null || values.size() == 0) {
                return new String[0];
            }
            String[] strArr = new String[values.size()];
            for (int i = 0; i < values.size(); i++) {
                Object obj = values.get(i);
                if (obj instanceof byte[]) {
                    try {
                        strArr[i] = new String((byte[]) obj, this.f115246b);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } else if (obj instanceof String) {
                    strArr[i] = (String) obj;
                }
            }
            return strArr;
        }

        @Override // javax.servlet.ServletRequestWrapper, javax.servlet.ServletRequest
        public void setCharacterEncoding(String str) throws UnsupportedEncodingException {
            this.f115246b = str;
        }
    }

    /* renamed from: a */
    public final void m71634a(ServletRequest servletRequest) {
        ArrayList arrayList = (ArrayList) servletRequest.getAttribute(f115241e);
        if (arrayList != null) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                File file = (File) it2.next();
                try {
                    file.delete();
                } catch (Exception e) {
                    ServletContext servletContext = this.f115244c;
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("failed to delete ");
                    stringBuffer.append(file);
                    servletContext.log(stringBuffer.toString(), e);
                }
            }
        }
    }

    /* renamed from: b */
    public final String m71635b(String str) {
        String trim = str.substring(str.indexOf(61) + 1).trim();
        int indexOf = trim.indexOf(59);
        if (indexOf > 0) {
            trim = trim.substring(0, indexOf);
        }
        if (trim.startsWith("\"")) {
            return trim.substring(1, trim.indexOf(34, 1));
        }
        int indexOf2 = trim.indexOf(32);
        return indexOf2 > 0 ? trim.substring(0, indexOf2) : trim;
    }

    @Override // javax.servlet.Filter
    public void destroy() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x01bc, code lost:
    
        if (r7 != 13) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01be, code lost:
    
        r1 = r6.read();
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01c7, code lost:
    
        if (r4 <= 0) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01cc, code lost:
    
        if (r4 < (r8.length - 2)) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x01d3, code lost:
    
        if (r14 == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01d5, code lost:
    
        r13.write(13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x01d8, code lost:
    
        if (r15 == false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x01da, code lost:
    
        r13.write(10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x01df, code lost:
    
        r13.write(r8, 0, r4);
        r4 = -1;
        r14 = false;
        r15 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x01e6, code lost:
    
        if (r4 > 0) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x01e9, code lost:
    
        if (r7 != (-1)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x01ec, code lost:
    
        if (r14 == false) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x01ee, code lost:
    
        r13.write(13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x01f1, code lost:
    
        if (r15 == false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x01f3, code lost:
    
        r0 = 10;
        r13.write(10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x01fb, code lost:
    
        if (r7 != 13) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x01fd, code lost:
    
        r14 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0201, code lost:
    
        if (r7 == r0) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0203, code lost:
    
        if (r1 != r0) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0206, code lost:
    
        r15 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x020a, code lost:
    
        if (r1 != r0) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x020c, code lost:
    
        r1 = -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x020d, code lost:
    
        r4 = r19;
        r7 = -2;
        r19 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0208, code lost:
    
        r15 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0200, code lost:
    
        r14 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x01f9, code lost:
    
        r0 = 10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x021b, code lost:
    
        if (r4 != r8.length) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x021e, code lost:
    
        r17 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0220, code lost:
    
        r13.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0223, code lost:
    
        if (r10 != null) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0225, code lost:
    
        r9.add(r12, ((java.io.ByteArrayOutputStream) r13).toByteArray());
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x022e, code lost:
    
        r1 = r21;
        r2 = r22;
        r13 = r16;
        r10 = r17;
        r4 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x01d1, code lost:
    
        if (r4 != (r8.length - 1)) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x01c3, code lost:
    
        r1 = -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x01c5, code lost:
    
        r1 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0179, code lost:
    
        r7 = r6.read();
        r20 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0125, code lost:
    
        if (r7.length() <= 0) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0127, code lost:
    
        r10 = java.io.File.createTempFile("MultiPart", "", r1.f115242a);
        r13 = new java.io.FileOutputStream(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x0138, code lost:
    
        if (r1.f115245d <= 0) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x013a, code lost:
    
        r13 = new java.io.BufferedOutputStream(r13, r1.f115245d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0142, code lost:
    
        r2.setAttribute(r12, r10);
        r9.add(r12, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x014a, code lost:
    
        if (r1.f115243b == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x014c, code lost:
    
        r10.deleteOnExit();
        r7 = (java.util.ArrayList) r2.getAttribute(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0155, code lost:
    
        if (r7 != null) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0157, code lost:
    
        r7 = new java.util.ArrayList();
        r2.setAttribute(r4, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x015f, code lost:
    
        r7.add(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x023c, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x023d, code lost:
    
        r12 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0241, code lost:
    
        r12.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0244, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x023f, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x0240, code lost:
    
        r12 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x024c, code lost:
    
        throw new java.io.IOException("Missing content-disposition");
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00c0, code lost:
    
        if (r13 == null) goto L169;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00c2, code lost:
    
        r14 = new java.util.StringTokenizer(r13, com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView.f47214k);
        r7 = null;
        r12 = null;
        r15 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00cc, code lost:
    
        r17 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d2, code lost:
    
        if (r14.hasMoreTokens() == false) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00d4, code lost:
    
        r18 = r10;
        r10 = r14.nextToken().trim();
        r16 = r13;
        r13 = r10.toLowerCase();
        r19 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00ec, code lost:
    
        if (r10.startsWith(com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants.FORAM_DATA) == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00ee, code lost:
    
        r15 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x010a, code lost:
    
        r13 = r16;
        r10 = r18;
        r14 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00f7, code lost:
    
        if (r13.startsWith("name=") == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00f9, code lost:
    
        r12 = r1.m71635b(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0104, code lost:
    
        if (r13.startsWith("filename=") == false) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0106, code lost:
    
        r7 = r1.m71635b(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0111, code lost:
    
        r18 = r10;
        r16 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0115, code lost:
    
        if (r15 != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0118, code lost:
    
        if (r12 != null) goto L170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x011a, code lost:
    
        r13 = r16;
        r10 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x011f, code lost:
    
        if (r7 == null) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0163, code lost:
    
        r13 = new java.io.ByteArrayOutputStream();
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0168, code lost:
    
        r10 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0169, code lost:
    
        r7 = -2;
        r19 = -2;
        r14 = false;
        r15 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x016e, code lost:
    
        r1 = r19;
        r19 = r4;
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0173, code lost:
    
        if (r1 == r7) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0175, code lost:
    
        r7 = r1;
        r20 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0186, code lost:
    
        if (r7 == (-1)) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0188, code lost:
    
        if (r7 == 13) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x018a, code lost:
    
        if (r7 != 10) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x018d, code lost:
    
        if (r4 < 0) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0190, code lost:
    
        if (r4 >= r8.length) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0194, code lost:
    
        if (r7 != r8[r4]) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x019f, code lost:
    
        if (r14 == false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01a1, code lost:
    
        r13.write(13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01a4, code lost:
    
        if (r15 == false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01a6, code lost:
    
        r13.write(10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01a9, code lost:
    
        if (r4 <= 0) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01ab, code lost:
    
        r13.write(r8, 0, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01af, code lost:
    
        r13.write(r7);
        r1 = -2;
        r4 = -1;
        r7 = -2;
        r14 = false;
        r15 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0196, code lost:
    
        r4 = r4 + 1;
        r1 = -2;
        r7 = -2;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v19, types: [int] */
    /* JADX WARN: Type inference failed for: r20v0, types: [int] */
    /* JADX WARN: Type inference failed for: r24v0, types: [javax.servlet.FilterChain] */
    @Override // javax.servlet.Filter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doFilter(javax.servlet.ServletRequest r22, javax.servlet.ServletResponse r23, javax.servlet.FilterChain r24) throws java.io.IOException, javax.servlet.ServletException {
        /*
            Method dump skipped, instructions count: 693
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.servlet.MultiPartFilter.doFilter(javax.servlet.ServletRequest, javax.servlet.ServletResponse, javax.servlet.FilterChain):void");
    }

    @Override // javax.servlet.Filter
    public void init(FilterConfig filterConfig) throws ServletException {
        this.f115242a = (File) filterConfig.getServletContext().getAttribute(ServletHandler.__J_S_CONTEXT_TEMPDIR);
        this.f115243b = "true".equals(filterConfig.getInitParameter("deleteFiles"));
        String initParameter = filterConfig.getInitParameter("fileOutputBuffer");
        if (initParameter != null) {
            this.f115245d = Integer.parseInt(initParameter);
        }
        this.f115244c = filterConfig.getServletContext();
    }
}
