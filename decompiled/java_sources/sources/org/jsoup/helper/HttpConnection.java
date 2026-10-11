package org.jsoup.helper;

import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import java.io.BufferedInputStream;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import org.apache.poi.smtp.MIMEHeaders;
import org.jsoup.Connection;
import org.jsoup.UncheckedIOException;
import org.jsoup.internal.ConstrainableInputStream;
import org.jsoup.internal.Normalizer;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;
import org.jsoup.parser.Parser;
import org.jsoup.parser.TokenQueue;
import org.mortbay.util.MultiPartWriter;

/* loaded from: classes13.dex */
public class HttpConnection implements Connection {
    public static final String CONTENT_ENCODING = "Content-Encoding";
    public static final String CONTENT_TYPE = "Content-Type";
    public static final String DEFAULT_UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36";
    public static final String FORM_URL_ENCODED = "application/x-www-form-urlencoded";
    public static final String MULTIPART_FORM_DATA = "multipart/form-data";

    /* renamed from: c */
    public static final String f113984c = "User-Agent";

    /* renamed from: d */
    public static final int f113985d = 307;

    /* renamed from: e */
    public static final String f113986e = "application/octet-stream";

    /* renamed from: a */
    public Connection.Request f113987a = new Request();

    /* renamed from: b */
    public Connection.Response f113988b = new Response();

    /* loaded from: classes13.dex */
    public static class KeyVal implements Connection.KeyVal {

        /* renamed from: a */
        public String f113989a;

        /* renamed from: b */
        public String f113990b;

        /* renamed from: c */
        public InputStream f113991c;

        /* renamed from: d */
        public String f113992d;

        public static KeyVal create(String str, String str2) {
            return new KeyVal().key(str).value(str2);
        }

        @Override // org.jsoup.Connection.KeyVal
        public String contentType() {
            return this.f113992d;
        }

        @Override // org.jsoup.Connection.KeyVal
        public boolean hasInputStream() {
            return this.f113991c != null;
        }

        @Override // org.jsoup.Connection.KeyVal
        public InputStream inputStream() {
            return this.f113991c;
        }

        @Override // org.jsoup.Connection.KeyVal
        public String key() {
            return this.f113989a;
        }

        public String toString() {
            return this.f113989a + "=" + this.f113990b;
        }

        @Override // org.jsoup.Connection.KeyVal
        public String value() {
            return this.f113990b;
        }

        public static KeyVal create(String str, String str2, InputStream inputStream) {
            return new KeyVal().key(str).value(str2).inputStream(inputStream);
        }

        @Override // org.jsoup.Connection.KeyVal
        public Connection.KeyVal contentType(String str) {
            Validate.notEmpty(str);
            this.f113992d = str;
            return this;
        }

        @Override // org.jsoup.Connection.KeyVal
        public KeyVal inputStream(InputStream inputStream) {
            Validate.notNull(this.f113990b, "Data input stream must not be null");
            this.f113991c = inputStream;
            return this;
        }

        @Override // org.jsoup.Connection.KeyVal
        public KeyVal key(String str) {
            Validate.notEmpty(str, "Data key must not be empty");
            this.f113989a = str;
            return this;
        }

        @Override // org.jsoup.Connection.KeyVal
        public KeyVal value(String str) {
            Validate.notNull(str, "Data value must not be null");
            this.f113990b = str;
            return this;
        }
    }

    /* loaded from: classes13.dex */
    public static class Request extends AbstractC20246a<Connection.Request> implements Connection.Request {

        /* renamed from: e */
        public Proxy f113993e;

        /* renamed from: f */
        public int f113994f;

        /* renamed from: g */
        public int f113995g;

        /* renamed from: h */
        public boolean f113996h;

        /* renamed from: i */
        public Collection<Connection.KeyVal> f113997i;

        /* renamed from: j */
        public String f113998j;

        /* renamed from: k */
        public boolean f113999k;

        /* renamed from: l */
        public boolean f114000l;

        /* renamed from: m */
        public Parser f114001m;

        /* renamed from: n */
        public boolean f114002n;

        /* renamed from: o */
        public String f114003o;

        /* renamed from: p */
        public SSLSocketFactory f114004p;

        public Request() {
            super();
            this.f113998j = null;
            this.f113999k = false;
            this.f114000l = false;
            this.f114002n = false;
            this.f114003o = "UTF-8";
            this.f113994f = 30000;
            this.f113995g = 2097152;
            this.f113996h = true;
            this.f113997i = new ArrayList();
            this.f114020b = Connection.Method.GET;
            addHeader("Accept-Encoding", "gzip");
            addHeader("User-Agent", HttpConnection.DEFAULT_UA);
            this.f114001m = Parser.htmlParser();
        }

        @Override // org.jsoup.helper.HttpConnection.AbstractC20246a, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ String cookie(String str) {
            return super.cookie(str);
        }

        @Override // org.jsoup.helper.HttpConnection.AbstractC20246a, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Map cookies() {
            return super.cookies();
        }

        @Override // org.jsoup.Connection.Request
        public Collection<Connection.KeyVal> data() {
            return this.f113997i;
        }

        @Override // org.jsoup.Connection.Request
        public Connection.Request followRedirects(boolean z) {
            this.f113996h = z;
            return this;
        }

        @Override // org.jsoup.helper.HttpConnection.AbstractC20246a, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ boolean hasCookie(String str) {
            return super.hasCookie(str);
        }

        @Override // org.jsoup.helper.HttpConnection.AbstractC20246a, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ boolean hasHeader(String str) {
            return super.hasHeader(str);
        }

        @Override // org.jsoup.helper.HttpConnection.AbstractC20246a, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ boolean hasHeaderWithValue(String str, String str2) {
            return super.hasHeaderWithValue(str, str2);
        }

        @Override // org.jsoup.helper.HttpConnection.AbstractC20246a, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ String header(String str) {
            return super.header(str);
        }

        @Override // org.jsoup.helper.HttpConnection.AbstractC20246a, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ List headers(String str) {
            return super.headers(str);
        }

        @Override // org.jsoup.Connection.Request
        public Connection.Request ignoreContentType(boolean z) {
            this.f114000l = z;
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public Connection.Request ignoreHttpErrors(boolean z) {
            this.f113999k = z;
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public int maxBodySize() {
            return this.f113995g;
        }

        @Override // org.jsoup.helper.HttpConnection.AbstractC20246a, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Connection.Method method() {
            return super.method();
        }

        @Override // org.jsoup.helper.HttpConnection.AbstractC20246a, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Map multiHeaders() {
            return super.multiHeaders();
        }

        @Override // org.jsoup.Connection.Request
        public String postDataCharset() {
            return this.f114003o;
        }

        @Override // org.jsoup.Connection.Request
        public Proxy proxy() {
            return this.f113993e;
        }

        @Override // org.jsoup.Connection.Request
        public String requestBody() {
            return this.f113998j;
        }

        @Override // org.jsoup.Connection.Request
        public SSLSocketFactory sslSocketFactory() {
            return this.f114004p;
        }

        @Override // org.jsoup.Connection.Request
        public int timeout() {
            return this.f113994f;
        }

        @Override // org.jsoup.helper.HttpConnection.AbstractC20246a, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ URL url() {
            return super.url();
        }

        @Override // org.jsoup.Connection.Request
        public boolean followRedirects() {
            return this.f113996h;
        }

        @Override // org.jsoup.helper.HttpConnection.AbstractC20246a, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Map headers() {
            return super.headers();
        }

        @Override // org.jsoup.Connection.Request
        public boolean ignoreContentType() {
            return this.f114000l;
        }

        @Override // org.jsoup.Connection.Request
        public boolean ignoreHttpErrors() {
            return this.f113999k;
        }

        @Override // org.jsoup.Connection.Request
        public Connection.Request maxBodySize(int i) {
            Validate.isTrue(i >= 0, "maxSize must be 0 (unlimited) or larger");
            this.f113995g = i;
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public Request parser(Parser parser) {
            this.f114001m = parser;
            this.f114002n = true;
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public Connection.Request postDataCharset(String str) {
            Validate.notNull(str, "Charset must not be null");
            if (!Charset.isSupported(str)) {
                throw new IllegalCharsetNameException(str);
            }
            this.f114003o = str;
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public Connection.Request requestBody(String str) {
            this.f113998j = str;
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public void sslSocketFactory(SSLSocketFactory sSLSocketFactory) {
            this.f114004p = sSLSocketFactory;
        }

        @Override // org.jsoup.Connection.Request
        public Request data(Connection.KeyVal keyVal) {
            Validate.notNull(keyVal, "Key val must not be null");
            this.f113997i.add(keyVal);
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public Parser parser() {
            return this.f114001m;
        }

        @Override // org.jsoup.Connection.Request
        public Request timeout(int i) {
            Validate.isTrue(i >= 0, "Timeout milliseconds must be 0 (infinite) or greater");
            this.f113994f = i;
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public Request proxy(String str, int i) {
            this.f113993e = new Proxy(Proxy.Type.HTTP, InetSocketAddress.createUnresolved(str, i));
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public Request proxy(Proxy proxy) {
            this.f113993e = proxy;
            return this;
        }
    }

    /* loaded from: classes13.dex */
    public static class Response extends AbstractC20246a<Connection.Response> implements Connection.Response {

        /* renamed from: p */
        public static final int f114005p = 20;

        /* renamed from: q */
        public static final String f114006q = "Location";

        /* renamed from: r */
        public static final Pattern f114007r = Pattern.compile("(application|text)/\\w*\\+?xml.*");

        /* renamed from: e */
        public int f114008e;

        /* renamed from: f */
        public String f114009f;

        /* renamed from: g */
        public ByteBuffer f114010g;

        /* renamed from: h */
        public InputStream f114011h;

        /* renamed from: i */
        public HttpURLConnection f114012i;

        /* renamed from: j */
        public String f114013j;

        /* renamed from: k */
        public String f114014k;

        /* renamed from: l */
        public boolean f114015l;

        /* renamed from: m */
        public boolean f114016m;

        /* renamed from: n */
        public int f114017n;

        /* renamed from: o */
        public Connection.Request f114018o;

        public Response() {
            super();
            this.f114015l = false;
            this.f114016m = false;
            this.f114017n = 0;
        }

        /* renamed from: e */
        public static HttpURLConnection m71075e(Connection.Request request) throws IOException {
            HttpURLConnection httpURLConnection = (HttpURLConnection) (request.proxy() == null ? request.url().openConnection() : request.url().openConnection(request.proxy()));
            httpURLConnection.setRequestMethod(request.method().name());
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setConnectTimeout(request.timeout());
            httpURLConnection.setReadTimeout(request.timeout() / 2);
            if (request.sslSocketFactory() != null && (httpURLConnection instanceof HttpsURLConnection)) {
                ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(request.sslSocketFactory());
            }
            if (request.method().hasBody()) {
                httpURLConnection.setDoOutput(true);
            }
            if (request.cookies().size() > 0) {
                httpURLConnection.addRequestProperty("Cookie", m71079l(request));
            }
            for (Map.Entry<String, List<String>> entry : request.multiHeaders().entrySet()) {
                Iterator<String> it2 = entry.getValue().iterator();
                while (it2.hasNext()) {
                    httpURLConnection.addRequestProperty(entry.getKey(), it2.next());
                }
            }
            return httpURLConnection;
        }

        /* renamed from: f */
        public static LinkedHashMap<String, List<String>> m71076f(HttpURLConnection httpURLConnection) {
            LinkedHashMap<String, List<String>> linkedHashMap = new LinkedHashMap<>();
            int i = 0;
            while (true) {
                String headerFieldKey = httpURLConnection.getHeaderFieldKey(i);
                String headerField = httpURLConnection.getHeaderField(i);
                if (headerFieldKey == null && headerField == null) {
                    return linkedHashMap;
                }
                i++;
                if (headerFieldKey != null && headerField != null) {
                    if (linkedHashMap.containsKey(headerFieldKey)) {
                        linkedHashMap.get(headerFieldKey).add(headerField);
                    } else {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(headerField);
                        linkedHashMap.put(headerFieldKey, arrayList);
                    }
                }
            }
        }

        /* renamed from: i */
        public static void m71077i(Connection.Request request, OutputStream outputStream, String str) throws IOException {
            Collection<Connection.KeyVal> data = request.data();
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, request.postDataCharset()));
            if (str != null) {
                for (Connection.KeyVal keyVal : data) {
                    bufferedWriter.write(MultiPartWriter.f115320h);
                    bufferedWriter.write(str);
                    bufferedWriter.write("\r\n");
                    bufferedWriter.write("Content-Disposition: form-data; name=\"");
                    bufferedWriter.write(HttpConnection.m71072e(keyVal.key()));
                    bufferedWriter.write("\"");
                    if (keyVal.hasInputStream()) {
                        bufferedWriter.write("; filename=\"");
                        bufferedWriter.write(HttpConnection.m71072e(keyVal.value()));
                        bufferedWriter.write("\"\r\nContent-Type: ");
                        bufferedWriter.write(keyVal.contentType() != null ? keyVal.contentType() : "application/octet-stream");
                        bufferedWriter.write("\r\n\r\n");
                        bufferedWriter.flush();
                        DataUtil.m71061c(keyVal.inputStream(), outputStream);
                        outputStream.flush();
                    } else {
                        bufferedWriter.write("\r\n\r\n");
                        bufferedWriter.write(keyVal.value());
                    }
                    bufferedWriter.write("\r\n");
                }
                bufferedWriter.write(MultiPartWriter.f115320h);
                bufferedWriter.write(str);
                bufferedWriter.write(MultiPartWriter.f115320h);
            } else if (request.requestBody() != null) {
                bufferedWriter.write(request.requestBody());
            } else {
                boolean z = true;
                for (Connection.KeyVal keyVal2 : data) {
                    if (z) {
                        z = false;
                    } else {
                        bufferedWriter.append('&');
                    }
                    bufferedWriter.write(URLEncoder.encode(keyVal2.key(), request.postDataCharset()));
                    bufferedWriter.write(61);
                    bufferedWriter.write(URLEncoder.encode(keyVal2.value(), request.postDataCharset()));
                }
            }
            bufferedWriter.close();
        }

        /* renamed from: j */
        public static String m71078j(Connection.Request request) {
            String m71064f;
            StringBuilder sb;
            if (request.hasHeader("Content-Type")) {
                if (request.header("Content-Type").contains("multipart/form-data") && !request.header("Content-Type").contains(MIMEHeaders.KEY_BOUNDARY)) {
                    m71064f = DataUtil.m71064f();
                    sb = new StringBuilder();
                    sb.append("multipart/form-data; boundary=");
                    sb.append(m71064f);
                    request.header("Content-Type", sb.toString());
                    return m71064f;
                }
                return null;
            }
            if (!HttpConnection.m71069b(request)) {
                request.header("Content-Type", "application/x-www-form-urlencoded; charset=" + request.postDataCharset());
                return null;
            }
            m71064f = DataUtil.m71064f();
            sb = new StringBuilder();
            sb.append("multipart/form-data; boundary=");
            sb.append(m71064f);
            request.header("Content-Type", sb.toString());
            return m71064f;
        }

        /* renamed from: l */
        public static String m71079l(Connection.Request request) {
            StringBuilder borrowBuilder = StringUtil.borrowBuilder();
            boolean z = true;
            for (Map.Entry<String, String> entry : request.cookies().entrySet()) {
                if (z) {
                    z = false;
                } else {
                    borrowBuilder.append("; ");
                }
                borrowBuilder.append(entry.getKey());
                borrowBuilder.append('=');
                borrowBuilder.append(entry.getValue());
            }
            return StringUtil.releaseBuilder(borrowBuilder);
        }

        /* renamed from: m */
        public static void m71080m(Connection.Request request) throws IOException {
            boolean z;
            URL url = request.url();
            StringBuilder borrowBuilder = StringUtil.borrowBuilder();
            borrowBuilder.append(url.getProtocol());
            borrowBuilder.append("://");
            borrowBuilder.append(url.getAuthority());
            borrowBuilder.append(url.getPath());
            borrowBuilder.append("?");
            if (url.getQuery() != null) {
                borrowBuilder.append(url.getQuery());
                z = false;
            } else {
                z = true;
            }
            for (Connection.KeyVal keyVal : request.data()) {
                Validate.isFalse(keyVal.hasInputStream(), "InputStream data not supported in URL query string.");
                if (z) {
                    z = false;
                } else {
                    borrowBuilder.append('&');
                }
                borrowBuilder.append(URLEncoder.encode(keyVal.key(), "UTF-8"));
                borrowBuilder.append('=');
                borrowBuilder.append(URLEncoder.encode(keyVal.value(), "UTF-8"));
            }
            request.url(new URL(StringUtil.releaseBuilder(borrowBuilder)));
            request.data().clear();
        }

        /* renamed from: n */
        public static Response m71081n(Connection.Request request) throws IOException {
            return m71082o(request, null);
        }

        /* JADX WARN: Code restructure failed: missing block: B:62:0x0162, code lost:
        
            if (org.jsoup.helper.HttpConnection.Response.f114007r.matcher(r10).matches() == false) goto L71;
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x0166, code lost:
        
            if ((r9 instanceof org.jsoup.helper.HttpConnection.Request) == false) goto L71;
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x016f, code lost:
        
            if (((org.jsoup.helper.HttpConnection.Request) r9).f114002n != false) goto L71;
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x0171, code lost:
        
            r9.parser(org.jsoup.parser.Parser.xmlParser());
         */
        /* JADX WARN: Removed duplicated region for block: B:23:0x008b A[Catch: IOException -> 0x01fd, TryCatch #1 {IOException -> 0x01fd, blocks: (B:21:0x0082, B:23:0x008b, B:24:0x0092), top: B:20:0x0082 }] */
        /* renamed from: o */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static org.jsoup.helper.HttpConnection.Response m71082o(org.jsoup.Connection.Request r9, org.jsoup.helper.HttpConnection.Response r10) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 516
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.jsoup.helper.HttpConnection.Response.m71082o(org.jsoup.Connection$Request, org.jsoup.helper.HttpConnection$Response):org.jsoup.helper.HttpConnection$Response");
        }

        @Override // org.jsoup.Connection.Response
        public String body() {
            m71083g();
            String str = this.f114013j;
            if (str == null) {
                str = "UTF-8";
            }
            String charBuffer = Charset.forName(str).decode(this.f114010g).toString();
            this.f114010g.rewind();
            return charBuffer;
        }

        @Override // org.jsoup.Connection.Response
        public byte[] bodyAsBytes() {
            m71083g();
            return this.f114010g.array();
        }

        @Override // org.jsoup.Connection.Response
        public BufferedInputStream bodyStream() {
            Validate.isTrue(this.f114015l, "Request must be executed (with .execute(), .get(), or .post() before getting response body");
            Validate.isFalse(this.f114016m, "Request has already been read");
            this.f114016m = true;
            return ConstrainableInputStream.wrap(this.f114011h, 32768, this.f114018o.maxBodySize());
        }

        @Override // org.jsoup.Connection.Response
        public Connection.Response bufferUp() {
            m71083g();
            return this;
        }

        @Override // org.jsoup.Connection.Response
        public String charset() {
            return this.f114013j;
        }

        @Override // org.jsoup.Connection.Response
        public String contentType() {
            return this.f114014k;
        }

        @Override // org.jsoup.helper.HttpConnection.AbstractC20246a, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ String cookie(String str) {
            return super.cookie(str);
        }

        @Override // org.jsoup.helper.HttpConnection.AbstractC20246a, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Map cookies() {
            return super.cookies();
        }

        /* renamed from: g */
        public final void m71083g() {
            Validate.isTrue(this.f114015l, "Request must be executed (with .execute(), .get(), or .post() before getting response body");
            if (this.f114010g == null) {
                Validate.isFalse(this.f114016m, "Request has already been read (with .parse())");
                try {
                    try {
                        this.f114010g = DataUtil.readToByteBuffer(this.f114011h, this.f114018o.maxBodySize());
                    } catch (IOException e) {
                        throw new UncheckedIOException(e);
                    }
                } finally {
                    this.f114016m = true;
                    m71085k();
                }
            }
        }

        /* renamed from: h */
        public final void m71084h(HttpURLConnection httpURLConnection, Response response) throws IOException {
            this.f114012i = httpURLConnection;
            this.f114020b = Connection.Method.valueOf(httpURLConnection.getRequestMethod());
            this.f114019a = httpURLConnection.getURL();
            this.f114008e = httpURLConnection.getResponseCode();
            this.f114009f = httpURLConnection.getResponseMessage();
            this.f114014k = httpURLConnection.getContentType();
            m71086p(m71076f(httpURLConnection));
            if (response != null) {
                for (Map.Entry entry : response.cookies().entrySet()) {
                    if (!hasCookie((String) entry.getKey())) {
                        cookie((String) entry.getKey(), (String) entry.getValue());
                    }
                }
                response.m71085k();
            }
        }

        @Override // org.jsoup.helper.HttpConnection.AbstractC20246a, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ boolean hasCookie(String str) {
            return super.hasCookie(str);
        }

        @Override // org.jsoup.helper.HttpConnection.AbstractC20246a, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ boolean hasHeader(String str) {
            return super.hasHeader(str);
        }

        @Override // org.jsoup.helper.HttpConnection.AbstractC20246a, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ boolean hasHeaderWithValue(String str, String str2) {
            return super.hasHeaderWithValue(str, str2);
        }

        @Override // org.jsoup.helper.HttpConnection.AbstractC20246a, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ String header(String str) {
            return super.header(str);
        }

        @Override // org.jsoup.helper.HttpConnection.AbstractC20246a, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ List headers(String str) {
            return super.headers(str);
        }

        /* renamed from: k */
        public final void m71085k() {
            InputStream inputStream = this.f114011h;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused) {
                } catch (Throwable th) {
                    this.f114011h = null;
                    throw th;
                }
                this.f114011h = null;
            }
            HttpURLConnection httpURLConnection = this.f114012i;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
                this.f114012i = null;
            }
        }

        @Override // org.jsoup.helper.HttpConnection.AbstractC20246a, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Connection.Method method() {
            return super.method();
        }

        @Override // org.jsoup.helper.HttpConnection.AbstractC20246a, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Map multiHeaders() {
            return super.multiHeaders();
        }

        /* renamed from: p */
        public void m71086p(Map<String, List<String>> map) {
            for (Map.Entry<String, List<String>> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key != null) {
                    List<String> value = entry.getValue();
                    if (key.equalsIgnoreCase("Set-Cookie")) {
                        for (String str : value) {
                            if (str != null) {
                                TokenQueue tokenQueue = new TokenQueue(str);
                                String trim = tokenQueue.chompTo("=").trim();
                                String trim2 = tokenQueue.consumeTo(AndroidTreeView.f47214k).trim();
                                if (trim.length() > 0) {
                                    cookie(trim, trim2);
                                }
                            }
                        }
                    }
                    Iterator<String> it2 = value.iterator();
                    while (it2.hasNext()) {
                        addHeader(key, it2.next());
                    }
                }
            }
        }

        @Override // org.jsoup.Connection.Response
        public Document parse() throws IOException {
            Validate.isTrue(this.f114015l, "Request must be executed (with .execute(), .get(), or .post() before parsing response");
            if (this.f114010g != null) {
                this.f114011h = new ByteArrayInputStream(this.f114010g.array());
                this.f114016m = false;
            }
            Validate.isFalse(this.f114016m, "Input stream already read and parsed, cannot re-read.");
            Document m71065g = DataUtil.m71065g(this.f114011h, this.f114013j, this.f114019a.toExternalForm(), this.f114018o.parser());
            this.f114013j = m71065g.outputSettings().charset().name();
            this.f114016m = true;
            m71085k();
            return m71065g;
        }

        @Override // org.jsoup.Connection.Response
        public int statusCode() {
            return this.f114008e;
        }

        @Override // org.jsoup.Connection.Response
        public String statusMessage() {
            return this.f114009f;
        }

        @Override // org.jsoup.helper.HttpConnection.AbstractC20246a, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ URL url() {
            return super.url();
        }

        public Response(Response response) throws IOException {
            super();
            this.f114015l = false;
            this.f114016m = false;
            this.f114017n = 0;
            if (response != null) {
                int i = response.f114017n + 1;
                this.f114017n = i;
                if (i >= 20) {
                    throw new IOException(String.format("Too many redirects occurred trying to load URL %s", response.url()));
                }
            }
        }

        @Override // org.jsoup.helper.HttpConnection.AbstractC20246a, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Map headers() {
            return super.headers();
        }

        @Override // org.jsoup.Connection.Response
        public Response charset(String str) {
            this.f114013j = str;
            return this;
        }
    }

    /* renamed from: org.jsoup.helper.HttpConnection$a */
    /* loaded from: classes13.dex */
    public static abstract class AbstractC20246a<T extends Connection.Base> implements Connection.Base<T> {

        /* renamed from: a */
        public URL f114019a;

        /* renamed from: b */
        public Connection.Method f114020b;

        /* renamed from: c */
        public Map<String, List<String>> f114021c;

        /* renamed from: d */
        public Map<String, String> f114022d;

        public AbstractC20246a() {
            this.f114021c = new LinkedHashMap();
            this.f114022d = new LinkedHashMap();
        }

        /* renamed from: a */
        public static String m71087a(String str) {
            try {
                byte[] bytes = str.getBytes("ISO-8859-1");
                return !m71088b(bytes) ? str : new String(bytes, "UTF-8");
            } catch (UnsupportedEncodingException unused) {
                return str;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0026, code lost:
        
            if ((((r8[1] & 255) == 187) & ((r8[2] & 255) == 191)) != false) goto L18;
         */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static boolean m71088b(byte[] r8) {
            /*
                int r0 = r8.length
                r1 = 1
                r2 = 0
                r3 = 3
                if (r0 < r3) goto L29
                r0 = r8[r2]
                r0 = r0 & 255(0xff, float:3.57E-43)
                r4 = 239(0xef, float:3.35E-43)
                if (r0 != r4) goto L29
                r0 = r8[r1]
                r0 = r0 & 255(0xff, float:3.57E-43)
                r4 = 187(0xbb, float:2.62E-43)
                if (r0 != r4) goto L18
                r0 = r1
                goto L19
            L18:
                r0 = r2
            L19:
                r4 = 2
                r4 = r8[r4]
                r4 = r4 & 255(0xff, float:3.57E-43)
                r5 = 191(0xbf, float:2.68E-43)
                if (r4 != r5) goto L24
                r4 = r1
                goto L25
            L24:
                r4 = r2
            L25:
                r0 = r0 & r4
                if (r0 == 0) goto L29
                goto L2a
            L29:
                r3 = r2
            L2a:
                int r0 = r8.length
            L2b:
                if (r3 >= r0) goto L61
                r4 = r8[r3]
                r5 = r4 & 128(0x80, float:1.794E-43)
                if (r5 != 0) goto L34
                goto L5e
            L34:
                r5 = r4 & 224(0xe0, float:3.14E-43)
                r6 = 192(0xc0, float:2.69E-43)
                if (r5 != r6) goto L3d
                int r4 = r3 + 1
                goto L4e
            L3d:
                r5 = r4 & 240(0xf0, float:3.36E-43)
                r7 = 224(0xe0, float:3.14E-43)
                if (r5 != r7) goto L46
                int r4 = r3 + 2
                goto L4e
            L46:
                r4 = r4 & 248(0xf8, float:3.48E-43)
                r5 = 240(0xf0, float:3.36E-43)
                if (r4 != r5) goto L60
                int r4 = r3 + 3
            L4e:
                int r5 = r8.length
                if (r4 < r5) goto L52
                return r2
            L52:
                if (r3 >= r4) goto L5e
                int r3 = r3 + 1
                r5 = r8[r3]
                r5 = r5 & r6
                r7 = 128(0x80, float:1.794E-43)
                if (r5 == r7) goto L52
                return r2
            L5e:
                int r3 = r3 + r1
                goto L2b
            L60:
                return r2
            L61:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: org.jsoup.helper.HttpConnection.AbstractC20246a.m71088b(byte[]):boolean");
        }

        @Override // org.jsoup.Connection.Base
        public T addHeader(String str, String str2) {
            Validate.notEmpty(str);
            if (str2 == null) {
                str2 = "";
            }
            List<String> headers = headers(str);
            if (headers.isEmpty()) {
                headers = new ArrayList<>();
                this.f114021c.put(str, headers);
            }
            headers.add(m71087a(str2));
            return this;
        }

        /* renamed from: c */
        public final List<String> m71089c(String str) {
            Validate.notNull(str);
            for (Map.Entry<String, List<String>> entry : this.f114021c.entrySet()) {
                if (str.equalsIgnoreCase(entry.getKey())) {
                    return entry.getValue();
                }
            }
            return Collections.emptyList();
        }

        @Override // org.jsoup.Connection.Base
        public String cookie(String str) {
            Validate.notEmpty(str, "Cookie name must not be empty");
            return this.f114022d.get(str);
        }

        @Override // org.jsoup.Connection.Base
        public Map<String, String> cookies() {
            return this.f114022d;
        }

        /* renamed from: d */
        public final Map.Entry<String, List<String>> m71090d(String str) {
            String lowerCase = Normalizer.lowerCase(str);
            for (Map.Entry<String, List<String>> entry : this.f114021c.entrySet()) {
                if (Normalizer.lowerCase(entry.getKey()).equals(lowerCase)) {
                    return entry;
                }
            }
            return null;
        }

        @Override // org.jsoup.Connection.Base
        public boolean hasCookie(String str) {
            Validate.notEmpty(str, "Cookie name must not be empty");
            return this.f114022d.containsKey(str);
        }

        @Override // org.jsoup.Connection.Base
        public boolean hasHeader(String str) {
            Validate.notEmpty(str, "Header name must not be empty");
            return !m71089c(str).isEmpty();
        }

        @Override // org.jsoup.Connection.Base
        public boolean hasHeaderWithValue(String str, String str2) {
            Validate.notEmpty(str);
            Validate.notEmpty(str2);
            Iterator<String> it2 = headers(str).iterator();
            while (it2.hasNext()) {
                if (str2.equalsIgnoreCase(it2.next())) {
                    return true;
                }
            }
            return false;
        }

        @Override // org.jsoup.Connection.Base
        public String header(String str) {
            Validate.notNull(str, "Header name must not be null");
            List<String> m71089c = m71089c(str);
            if (m71089c.size() > 0) {
                return StringUtil.join(m71089c, ", ");
            }
            return null;
        }

        @Override // org.jsoup.Connection.Base
        public List<String> headers(String str) {
            Validate.notEmpty(str);
            return m71089c(str);
        }

        @Override // org.jsoup.Connection.Base
        public T method(Connection.Method method) {
            Validate.notNull(method, "Method must not be null");
            this.f114020b = method;
            return this;
        }

        @Override // org.jsoup.Connection.Base
        public Map<String, List<String>> multiHeaders() {
            return this.f114021c;
        }

        @Override // org.jsoup.Connection.Base
        public T removeCookie(String str) {
            Validate.notEmpty(str, "Cookie name must not be empty");
            this.f114022d.remove(str);
            return this;
        }

        @Override // org.jsoup.Connection.Base
        public T removeHeader(String str) {
            Validate.notEmpty(str, "Header name must not be empty");
            Map.Entry<String, List<String>> m71090d = m71090d(str);
            if (m71090d != null) {
                this.f114021c.remove(m71090d.getKey());
            }
            return this;
        }

        @Override // org.jsoup.Connection.Base
        public URL url() {
            return this.f114019a;
        }

        @Override // org.jsoup.Connection.Base
        public T cookie(String str, String str2) {
            Validate.notEmpty(str, "Cookie name must not be empty");
            Validate.notNull(str2, "Cookie value must not be null");
            this.f114022d.put(str, str2);
            return this;
        }

        @Override // org.jsoup.Connection.Base
        public T header(String str, String str2) {
            Validate.notEmpty(str, "Header name must not be empty");
            removeHeader(str);
            addHeader(str, str2);
            return this;
        }

        @Override // org.jsoup.Connection.Base
        public Map<String, String> headers() {
            LinkedHashMap linkedHashMap = new LinkedHashMap(this.f114021c.size());
            for (Map.Entry<String, List<String>> entry : this.f114021c.entrySet()) {
                String key = entry.getKey();
                List<String> value = entry.getValue();
                if (value.size() > 0) {
                    linkedHashMap.put(key, value.get(0));
                }
            }
            return linkedHashMap;
        }

        @Override // org.jsoup.Connection.Base
        public Connection.Method method() {
            return this.f114020b;
        }

        @Override // org.jsoup.Connection.Base
        public T url(URL url) {
            Validate.notNull(url, "URL must not be null");
            this.f114019a = url;
            return this;
        }
    }

    /* renamed from: a */
    public static String m71068a(String str) {
        try {
            return m71073f(new URL(str)).toExternalForm();
        } catch (Exception unused) {
            return str;
        }
    }

    /* renamed from: b */
    public static boolean m71069b(Connection.Request request) {
        Iterator<Connection.KeyVal> it2 = request.data().iterator();
        while (it2.hasNext()) {
            if (it2.next().hasInputStream()) {
                return true;
            }
        }
        return false;
    }

    public static Connection connect(String str) {
        HttpConnection httpConnection = new HttpConnection();
        httpConnection.url(str);
        return httpConnection;
    }

    /* renamed from: e */
    public static String m71072e(String str) {
        if (str == null) {
            return null;
        }
        return str.replace("\"", "%22");
    }

    /* renamed from: f */
    public static URL m71073f(URL url) {
        try {
            return new URL(new URI(url.toExternalForm().replace(" ", "%20")).toASCIIString());
        } catch (MalformedURLException | URISyntaxException unused) {
            return url;
        }
    }

    @Override // org.jsoup.Connection
    public Connection cookie(String str, String str2) {
        this.f113987a.cookie(str, str2);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection cookies(Map<String, String> map) {
        Validate.notNull(map, "Cookie map must not be null");
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f113987a.cookie(entry.getKey(), entry.getValue());
        }
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection.KeyVal data(String str) {
        Validate.notEmpty(str, "Data key must not be empty");
        for (Connection.KeyVal keyVal : request().data()) {
            if (keyVal.key().equals(str)) {
                return keyVal;
            }
        }
        return null;
    }

    @Override // org.jsoup.Connection
    public Connection.Response execute() throws IOException {
        Response m71081n = Response.m71081n(this.f113987a);
        this.f113988b = m71081n;
        return m71081n;
    }

    @Override // org.jsoup.Connection
    public Connection followRedirects(boolean z) {
        this.f113987a.followRedirects(z);
        return this;
    }

    @Override // org.jsoup.Connection
    public Document get() throws IOException {
        this.f113987a.method(Connection.Method.GET);
        execute();
        return this.f113988b.parse();
    }

    @Override // org.jsoup.Connection
    public Connection header(String str, String str2) {
        this.f113987a.header(str, str2);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection headers(Map<String, String> map) {
        Validate.notNull(map, "Header map must not be null");
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f113987a.header(entry.getKey(), entry.getValue());
        }
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection ignoreContentType(boolean z) {
        this.f113987a.ignoreContentType(z);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection ignoreHttpErrors(boolean z) {
        this.f113987a.ignoreHttpErrors(z);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection maxBodySize(int i) {
        this.f113987a.maxBodySize(i);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection method(Connection.Method method) {
        this.f113987a.method(method);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection parser(Parser parser) {
        this.f113987a.parser(parser);
        return this;
    }

    @Override // org.jsoup.Connection
    public Document post() throws IOException {
        this.f113987a.method(Connection.Method.POST);
        execute();
        return this.f113988b.parse();
    }

    @Override // org.jsoup.Connection
    public Connection postDataCharset(String str) {
        this.f113987a.postDataCharset(str);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection proxy(String str, int i) {
        this.f113987a.proxy(str, i);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection referrer(String str) {
        Validate.notNull(str, "Referrer must not be null");
        this.f113987a.header("Referer", str);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection.Request request() {
        return this.f113987a;
    }

    @Override // org.jsoup.Connection
    public Connection requestBody(String str) {
        this.f113987a.requestBody(str);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection.Response response() {
        return this.f113988b;
    }

    @Override // org.jsoup.Connection
    public Connection sslSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.f113987a.sslSocketFactory(sSLSocketFactory);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection timeout(int i) {
        this.f113987a.timeout(i);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection url(String str) {
        Validate.notEmpty(str, "Must supply a valid URL");
        try {
            this.f113987a.url(new URL(m71068a(str)));
            return this;
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException("Malformed URL: " + str, e);
        }
    }

    @Override // org.jsoup.Connection
    public Connection userAgent(String str) {
        Validate.notNull(str, "User agent must not be null");
        this.f113987a.header("User-Agent", str);
        return this;
    }

    public static Connection connect(URL url) {
        HttpConnection httpConnection = new HttpConnection();
        httpConnection.url(url);
        return httpConnection;
    }

    @Override // org.jsoup.Connection
    public Connection data(String str, String str2) {
        this.f113987a.data(KeyVal.create(str, str2));
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection proxy(Proxy proxy) {
        this.f113987a.proxy(proxy);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection request(Connection.Request request) {
        this.f113987a = request;
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection response(Connection.Response response) {
        this.f113988b = response;
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection url(URL url) {
        this.f113987a.url(url);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection data(String str, String str2, InputStream inputStream) {
        this.f113987a.data(KeyVal.create(str, str2, inputStream));
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection data(String str, String str2, InputStream inputStream, String str3) {
        this.f113987a.data(KeyVal.create(str, str2, inputStream).contentType(str3));
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection data(Collection<Connection.KeyVal> collection) {
        Validate.notNull(collection, "Data collection must not be null");
        Iterator<Connection.KeyVal> it2 = collection.iterator();
        while (it2.hasNext()) {
            this.f113987a.data(it2.next());
        }
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection data(Map<String, String> map) {
        Validate.notNull(map, "Data map must not be null");
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f113987a.data(KeyVal.create(entry.getKey(), entry.getValue()));
        }
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection data(String... strArr) {
        Validate.notNull(strArr, "Data key value pairs must not be null");
        Validate.isTrue(strArr.length % 2 == 0, "Must supply an even number of key value pairs");
        for (int i = 0; i < strArr.length; i += 2) {
            String str = strArr[i];
            String str2 = strArr[i + 1];
            Validate.notEmpty(str, "Data key must not be empty");
            Validate.notNull(str2, "Data value must not be null");
            this.f113987a.data(KeyVal.create(str, str2));
        }
        return this;
    }
}
