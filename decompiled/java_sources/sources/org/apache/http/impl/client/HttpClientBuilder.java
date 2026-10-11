package org.apache.http.impl.client;

import com.sunia.HTREnginev2.jpi;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProxySelector;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.auth.AuthSchemeProvider;
import org.apache.http.client.AuthenticationStrategy;
import org.apache.http.client.BackoffManager;
import org.apache.http.client.ConnectionBackoffStrategy;
import org.apache.http.client.CookieStore;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.RedirectStrategy;
import org.apache.http.client.ServiceUnavailableRetryStrategy;
import org.apache.http.client.UserTokenHandler;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.entity.InputStreamFactory;
import org.apache.http.client.protocol.RequestAcceptEncoding;
import org.apache.http.client.protocol.RequestAddCookies;
import org.apache.http.client.protocol.RequestAuthCache;
import org.apache.http.client.protocol.RequestClientConnControl;
import org.apache.http.client.protocol.RequestDefaultHeaders;
import org.apache.http.client.protocol.RequestExpectContinue;
import org.apache.http.client.protocol.ResponseContentEncoding;
import org.apache.http.client.protocol.ResponseProcessCookies;
import org.apache.http.config.ConnectionConfig;
import org.apache.http.config.Lookup;
import org.apache.http.config.Registry;
import org.apache.http.config.RegistryBuilder;
import org.apache.http.config.SocketConfig;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.conn.DnsResolver;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.conn.SchemePortResolver;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.conn.socket.ConnectionSocketFactory;
import org.apache.http.conn.socket.LayeredConnectionSocketFactory;
import org.apache.http.conn.socket.PlainConnectionSocketFactory;
import org.apache.http.conn.ssl.DefaultHostnameVerifier;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.conn.ssl.X509HostnameVerifier;
import org.apache.http.conn.util.PublicSuffixMatcher;
import org.apache.http.conn.util.PublicSuffixMatcherLoader;
import org.apache.http.cookie.CookieSpecProvider;
import org.apache.http.impl.NoConnectionReuseStrategy;
import org.apache.http.impl.auth.BasicSchemeFactory;
import org.apache.http.impl.auth.DigestSchemeFactory;
import org.apache.http.impl.auth.KerberosSchemeFactory;
import org.apache.http.impl.auth.NTLMSchemeFactory;
import org.apache.http.impl.auth.SPNegoSchemeFactory;
import org.apache.http.impl.conn.DefaultProxyRoutePlanner;
import org.apache.http.impl.conn.DefaultRoutePlanner;
import org.apache.http.impl.conn.DefaultSchemePortResolver;
import org.apache.http.impl.conn.PoolingHttpClientConnectionManager;
import org.apache.http.impl.conn.SystemDefaultRoutePlanner;
import org.apache.http.impl.execchain.BackoffStrategyExec;
import org.apache.http.impl.execchain.ClientExecChain;
import org.apache.http.impl.execchain.MainClientExec;
import org.apache.http.impl.execchain.ProtocolExec;
import org.apache.http.impl.execchain.RedirectExec;
import org.apache.http.impl.execchain.RetryExec;
import org.apache.http.impl.execchain.ServiceUnavailableRetryExec;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpProcessorBuilder;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.protocol.ImmutableHttpProcessor;
import org.apache.http.protocol.RequestContent;
import org.apache.http.protocol.RequestTargetHost;
import org.apache.http.protocol.RequestUserAgent;
import org.apache.http.ssl.SSLContexts;
import org.apache.http.util.TextUtils;
import org.apache.http.util.VersionInfo;

/* loaded from: classes12.dex */
public class HttpClientBuilder {

    /* renamed from: A */
    public Map<String, InputStreamFactory> f110601A;

    /* renamed from: B */
    public CookieStore f110602B;

    /* renamed from: C */
    public CredentialsProvider f110603C;

    /* renamed from: D */
    public String f110604D;

    /* renamed from: E */
    public HttpHost f110605E;

    /* renamed from: F */
    public Collection<? extends Header> f110606F;

    /* renamed from: G */
    public SocketConfig f110607G;

    /* renamed from: H */
    public ConnectionConfig f110608H;

    /* renamed from: I */
    public RequestConfig f110609I;

    /* renamed from: J */
    public boolean f110610J;

    /* renamed from: K */
    public boolean f110611K;

    /* renamed from: L */
    public long f110612L;

    /* renamed from: M */
    public TimeUnit f110613M;

    /* renamed from: N */
    public boolean f110614N;

    /* renamed from: O */
    public boolean f110615O;

    /* renamed from: P */
    public boolean f110616P;

    /* renamed from: Q */
    public boolean f110617Q;

    /* renamed from: R */
    public boolean f110618R;

    /* renamed from: S */
    public boolean f110619S;

    /* renamed from: T */
    public boolean f110620T;

    /* renamed from: U */
    public boolean f110621U;

    /* renamed from: V */
    public int f110622V = 0;

    /* renamed from: W */
    public int f110623W = 0;

    /* renamed from: X */
    public long f110624X = -1;

    /* renamed from: Y */
    public TimeUnit f110625Y = TimeUnit.MILLISECONDS;

    /* renamed from: Z */
    public List<Closeable> f110626Z;

    /* renamed from: a */
    public HttpRequestExecutor f110627a;

    /* renamed from: a0 */
    public PublicSuffixMatcher f110628a0;

    /* renamed from: b */
    public HostnameVerifier f110629b;

    /* renamed from: c */
    public LayeredConnectionSocketFactory f110630c;

    /* renamed from: d */
    public SSLContext f110631d;

    /* renamed from: e */
    public HttpClientConnectionManager f110632e;

    /* renamed from: f */
    public boolean f110633f;

    /* renamed from: g */
    public SchemePortResolver f110634g;

    /* renamed from: h */
    public ConnectionReuseStrategy f110635h;

    /* renamed from: i */
    public ConnectionKeepAliveStrategy f110636i;

    /* renamed from: j */
    public AuthenticationStrategy f110637j;

    /* renamed from: k */
    public AuthenticationStrategy f110638k;

    /* renamed from: l */
    public UserTokenHandler f110639l;

    /* renamed from: m */
    public HttpProcessor f110640m;

    /* renamed from: n */
    public DnsResolver f110641n;

    /* renamed from: o */
    public LinkedList<HttpRequestInterceptor> f110642o;

    /* renamed from: p */
    public LinkedList<HttpRequestInterceptor> f110643p;

    /* renamed from: q */
    public LinkedList<HttpResponseInterceptor> f110644q;

    /* renamed from: r */
    public LinkedList<HttpResponseInterceptor> f110645r;

    /* renamed from: s */
    public HttpRequestRetryHandler f110646s;

    /* renamed from: t */
    public HttpRoutePlanner f110647t;

    /* renamed from: u */
    public RedirectStrategy f110648u;

    /* renamed from: v */
    public ConnectionBackoffStrategy f110649v;

    /* renamed from: w */
    public BackoffManager f110650w;

    /* renamed from: x */
    public ServiceUnavailableRetryStrategy f110651x;

    /* renamed from: y */
    public Lookup<AuthSchemeProvider> f110652y;

    /* renamed from: z */
    public Lookup<CookieSpecProvider> f110653z;

    /* renamed from: org.apache.http.impl.client.HttpClientBuilder$a */
    /* loaded from: classes12.dex */
    public class C19360a implements Closeable {

        /* renamed from: e */
        public final /* synthetic */ IdleConnectionEvictor f110654e;

        public C19360a(IdleConnectionEvictor idleConnectionEvictor) {
            this.f110654e = idleConnectionEvictor;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f110654e.shutdown();
            try {
                this.f110654e.awaitTermination(1L, TimeUnit.SECONDS);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }

    /* renamed from: org.apache.http.impl.client.HttpClientBuilder$b */
    /* loaded from: classes12.dex */
    public class C19361b implements Closeable {

        /* renamed from: e */
        public final /* synthetic */ HttpClientConnectionManager f110656e;

        public C19361b(HttpClientConnectionManager httpClientConnectionManager) {
            this.f110656e = httpClientConnectionManager;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f110656e.shutdown();
        }
    }

    /* renamed from: a */
    public static String[] m68496a(String str) {
        if (TextUtils.isBlank(str)) {
            return null;
        }
        return str.split(" *, *");
    }

    public static HttpClientBuilder create() {
        return new HttpClientBuilder();
    }

    public void addCloseable(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        if (this.f110626Z == null) {
            this.f110626Z = new ArrayList();
        }
        this.f110626Z.add(closeable);
    }

    public final HttpClientBuilder addInterceptorFirst(HttpResponseInterceptor httpResponseInterceptor) {
        if (httpResponseInterceptor == null) {
            return this;
        }
        if (this.f110644q == null) {
            this.f110644q = new LinkedList<>();
        }
        this.f110644q.addFirst(httpResponseInterceptor);
        return this;
    }

    public final HttpClientBuilder addInterceptorLast(HttpResponseInterceptor httpResponseInterceptor) {
        if (httpResponseInterceptor == null) {
            return this;
        }
        if (this.f110645r == null) {
            this.f110645r = new LinkedList<>();
        }
        this.f110645r.addLast(httpResponseInterceptor);
        return this;
    }

    public CloseableHttpClient build() {
        HttpClientConnectionManager httpClientConnectionManager;
        HttpRoutePlanner httpRoutePlanner;
        CredentialsProvider credentialsProvider;
        HttpClientConnectionManager httpClientConnectionManager2;
        ArrayList arrayList;
        ConnectionBackoffStrategy connectionBackoffStrategy;
        ConnectionSocketFactory sSLConnectionSocketFactory;
        PublicSuffixMatcher publicSuffixMatcher = this.f110628a0;
        if (publicSuffixMatcher == null) {
            publicSuffixMatcher = PublicSuffixMatcherLoader.getDefault();
        }
        PublicSuffixMatcher publicSuffixMatcher2 = publicSuffixMatcher;
        HttpRequestExecutor httpRequestExecutor = this.f110627a;
        if (httpRequestExecutor == null) {
            httpRequestExecutor = new HttpRequestExecutor();
        }
        HttpRequestExecutor httpRequestExecutor2 = httpRequestExecutor;
        HttpClientConnectionManager httpClientConnectionManager3 = this.f110632e;
        if (httpClientConnectionManager3 == null) {
            ConnectionSocketFactory connectionSocketFactory = this.f110630c;
            if (connectionSocketFactory == null) {
                String[] m68496a = this.f110614N ? m68496a(System.getProperty("https.protocols")) : null;
                String[] m68496a2 = this.f110614N ? m68496a(System.getProperty("https.cipherSuites")) : null;
                HostnameVerifier hostnameVerifier = this.f110629b;
                if (hostnameVerifier == null) {
                    hostnameVerifier = new DefaultHostnameVerifier(publicSuffixMatcher2);
                }
                if (this.f110631d != null) {
                    sSLConnectionSocketFactory = new SSLConnectionSocketFactory(this.f110631d, m68496a, m68496a2, hostnameVerifier);
                } else if (this.f110614N) {
                    sSLConnectionSocketFactory = new SSLConnectionSocketFactory((SSLSocketFactory) SSLSocketFactory.getDefault(), m68496a, m68496a2, hostnameVerifier);
                } else {
                    connectionSocketFactory = new SSLConnectionSocketFactory(SSLContexts.createDefault(), hostnameVerifier);
                }
                connectionSocketFactory = sSLConnectionSocketFactory;
            }
            Registry build = RegistryBuilder.create().register("http", PlainConnectionSocketFactory.getSocketFactory()).register("https", connectionSocketFactory).build();
            DnsResolver dnsResolver = this.f110641n;
            long j = this.f110624X;
            TimeUnit timeUnit = this.f110625Y;
            if (timeUnit == null) {
                timeUnit = TimeUnit.MILLISECONDS;
            }
            PoolingHttpClientConnectionManager poolingHttpClientConnectionManager = new PoolingHttpClientConnectionManager(build, null, null, dnsResolver, j, timeUnit);
            SocketConfig socketConfig = this.f110607G;
            if (socketConfig != null) {
                poolingHttpClientConnectionManager.setDefaultSocketConfig(socketConfig);
            }
            ConnectionConfig connectionConfig = this.f110608H;
            if (connectionConfig != null) {
                poolingHttpClientConnectionManager.setDefaultConnectionConfig(connectionConfig);
            }
            if (this.f110614N && "true".equalsIgnoreCase(System.getProperty("http.keepAlive", "true"))) {
                int parseInt = Integer.parseInt(System.getProperty("http.maxConnections", "5"));
                poolingHttpClientConnectionManager.setDefaultMaxPerRoute(parseInt);
                poolingHttpClientConnectionManager.setMaxTotal(parseInt * 2);
            }
            int i = this.f110622V;
            if (i > 0) {
                poolingHttpClientConnectionManager.setMaxTotal(i);
            }
            int i2 = this.f110623W;
            if (i2 > 0) {
                poolingHttpClientConnectionManager.setDefaultMaxPerRoute(i2);
            }
            httpClientConnectionManager = poolingHttpClientConnectionManager;
        } else {
            httpClientConnectionManager = httpClientConnectionManager3;
        }
        ConnectionReuseStrategy connectionReuseStrategy = this.f110635h;
        if (connectionReuseStrategy == null) {
            connectionReuseStrategy = this.f110614N ? "true".equalsIgnoreCase(System.getProperty("http.keepAlive", "true")) ? DefaultClientConnectionReuseStrategy.INSTANCE : NoConnectionReuseStrategy.INSTANCE : DefaultClientConnectionReuseStrategy.INSTANCE;
        }
        ConnectionReuseStrategy connectionReuseStrategy2 = connectionReuseStrategy;
        ConnectionKeepAliveStrategy connectionKeepAliveStrategy = this.f110636i;
        if (connectionKeepAliveStrategy == null) {
            connectionKeepAliveStrategy = DefaultConnectionKeepAliveStrategy.INSTANCE;
        }
        ConnectionKeepAliveStrategy connectionKeepAliveStrategy2 = connectionKeepAliveStrategy;
        AuthenticationStrategy authenticationStrategy = this.f110637j;
        if (authenticationStrategy == null) {
            authenticationStrategy = TargetAuthenticationStrategy.INSTANCE;
        }
        AuthenticationStrategy authenticationStrategy2 = authenticationStrategy;
        AuthenticationStrategy authenticationStrategy3 = this.f110638k;
        if (authenticationStrategy3 == null) {
            authenticationStrategy3 = ProxyAuthenticationStrategy.INSTANCE;
        }
        AuthenticationStrategy authenticationStrategy4 = authenticationStrategy3;
        UserTokenHandler userTokenHandler = this.f110639l;
        if (userTokenHandler == null) {
            userTokenHandler = !this.f110620T ? DefaultUserTokenHandler.INSTANCE : NoopUserTokenHandler.INSTANCE;
        }
        UserTokenHandler userTokenHandler2 = userTokenHandler;
        String str = this.f110604D;
        if (str == null) {
            if (this.f110614N) {
                str = System.getProperty("http.agent");
            }
            if (str == null && !this.f110621U) {
                str = VersionInfo.getUserAgent("Apache-HttpClient", "org.apache.http.client", getClass());
            }
        }
        String str2 = str;
        ClientExecChain decorateMainExec = decorateMainExec(createMainExec(httpRequestExecutor2, httpClientConnectionManager, connectionReuseStrategy2, connectionKeepAliveStrategy2, new ImmutableHttpProcessor(new RequestTargetHost(), new RequestUserAgent(str2)), authenticationStrategy2, authenticationStrategy4, userTokenHandler2));
        HttpProcessor httpProcessor = this.f110640m;
        if (httpProcessor == null) {
            HttpProcessorBuilder create = HttpProcessorBuilder.create();
            LinkedList<HttpRequestInterceptor> linkedList = this.f110642o;
            if (linkedList != null) {
                Iterator<HttpRequestInterceptor> it2 = linkedList.iterator();
                while (it2.hasNext()) {
                    create.addFirst(it2.next());
                }
            }
            LinkedList<HttpResponseInterceptor> linkedList2 = this.f110644q;
            if (linkedList2 != null) {
                Iterator<HttpResponseInterceptor> it3 = linkedList2.iterator();
                while (it3.hasNext()) {
                    create.addFirst(it3.next());
                }
            }
            create.addAll(new RequestDefaultHeaders(this.f110606F), new RequestContent(), new RequestTargetHost(), new RequestClientConnControl(), new RequestUserAgent(str2), new RequestExpectContinue());
            if (!this.f110618R) {
                create.add(new RequestAddCookies());
            }
            if (!this.f110617Q) {
                if (this.f110601A != null) {
                    ArrayList arrayList2 = new ArrayList(this.f110601A.keySet());
                    Collections.sort(arrayList2);
                    create.add(new RequestAcceptEncoding(arrayList2));
                } else {
                    create.add(new RequestAcceptEncoding());
                }
            }
            if (!this.f110619S) {
                create.add(new RequestAuthCache());
            }
            if (!this.f110618R) {
                create.add(new ResponseProcessCookies());
            }
            if (!this.f110617Q) {
                if (this.f110601A != null) {
                    RegistryBuilder create2 = RegistryBuilder.create();
                    for (Map.Entry<String, InputStreamFactory> entry : this.f110601A.entrySet()) {
                        create2.register(entry.getKey(), entry.getValue());
                    }
                    create.add(new ResponseContentEncoding(create2.build()));
                } else {
                    create.add(new ResponseContentEncoding());
                }
            }
            LinkedList<HttpRequestInterceptor> linkedList3 = this.f110643p;
            if (linkedList3 != null) {
                Iterator<HttpRequestInterceptor> it4 = linkedList3.iterator();
                while (it4.hasNext()) {
                    create.addLast(it4.next());
                }
            }
            LinkedList<HttpResponseInterceptor> linkedList4 = this.f110645r;
            if (linkedList4 != null) {
                Iterator<HttpResponseInterceptor> it5 = linkedList4.iterator();
                while (it5.hasNext()) {
                    create.addLast(it5.next());
                }
            }
            httpProcessor = create.build();
        }
        ClientExecChain decorateProtocolExec = decorateProtocolExec(new ProtocolExec(decorateMainExec, httpProcessor));
        if (!this.f110616P) {
            HttpRequestRetryHandler httpRequestRetryHandler = this.f110646s;
            if (httpRequestRetryHandler == null) {
                httpRequestRetryHandler = DefaultHttpRequestRetryHandler.INSTANCE;
            }
            decorateProtocolExec = new RetryExec(decorateProtocolExec, httpRequestRetryHandler);
        }
        HttpRoutePlanner httpRoutePlanner2 = this.f110647t;
        if (httpRoutePlanner2 == null) {
            SchemePortResolver schemePortResolver = this.f110634g;
            if (schemePortResolver == null) {
                schemePortResolver = DefaultSchemePortResolver.INSTANCE;
            }
            HttpHost httpHost = this.f110605E;
            httpRoutePlanner = httpHost != null ? new DefaultProxyRoutePlanner(httpHost, schemePortResolver) : this.f110614N ? new SystemDefaultRoutePlanner(schemePortResolver, ProxySelector.getDefault()) : new DefaultRoutePlanner(schemePortResolver);
        } else {
            httpRoutePlanner = httpRoutePlanner2;
        }
        ServiceUnavailableRetryStrategy serviceUnavailableRetryStrategy = this.f110651x;
        if (serviceUnavailableRetryStrategy != null) {
            decorateProtocolExec = new ServiceUnavailableRetryExec(decorateProtocolExec, serviceUnavailableRetryStrategy);
        }
        if (!this.f110615O) {
            RedirectStrategy redirectStrategy = this.f110648u;
            if (redirectStrategy == null) {
                redirectStrategy = DefaultRedirectStrategy.INSTANCE;
            }
            decorateProtocolExec = new RedirectExec(decorateProtocolExec, httpRoutePlanner, redirectStrategy);
        }
        BackoffManager backoffManager = this.f110650w;
        if (backoffManager != null && (connectionBackoffStrategy = this.f110649v) != null) {
            decorateProtocolExec = new BackoffStrategyExec(decorateProtocolExec, connectionBackoffStrategy, backoffManager);
        }
        Lookup lookup = this.f110652y;
        if (lookup == null) {
            lookup = RegistryBuilder.create().register("Basic", new BasicSchemeFactory()).register("Digest", new DigestSchemeFactory()).register("NTLM", new NTLMSchemeFactory()).register("Negotiate", new SPNegoSchemeFactory()).register("Kerberos", new KerberosSchemeFactory()).build();
        }
        Lookup<CookieSpecProvider> lookup2 = this.f110653z;
        if (lookup2 == null) {
            lookup2 = CookieSpecRegistries.createDefault(publicSuffixMatcher2);
        }
        CookieStore cookieStore = this.f110602B;
        if (cookieStore == null) {
            cookieStore = new BasicCookieStore();
        }
        CredentialsProvider credentialsProvider2 = this.f110603C;
        if (credentialsProvider2 == null) {
            credentialsProvider2 = this.f110614N ? new SystemDefaultCredentialsProvider() : new BasicCredentialsProvider();
        }
        ArrayList arrayList3 = this.f110626Z != null ? new ArrayList(this.f110626Z) : null;
        if (this.f110633f) {
            credentialsProvider = credentialsProvider2;
            httpClientConnectionManager2 = httpClientConnectionManager;
            arrayList = arrayList3;
        } else {
            ArrayList arrayList4 = arrayList3 == null ? new ArrayList(1) : arrayList3;
            if (this.f110610J || this.f110611K) {
                long j2 = this.f110612L;
                long j3 = j2 > 0 ? j2 : 10L;
                TimeUnit timeUnit2 = this.f110613M;
                credentialsProvider = credentialsProvider2;
                httpClientConnectionManager2 = httpClientConnectionManager;
                IdleConnectionEvictor idleConnectionEvictor = new IdleConnectionEvictor(httpClientConnectionManager, j3, timeUnit2 != null ? timeUnit2 : TimeUnit.SECONDS, j2, timeUnit2);
                arrayList4.add(new C19360a(idleConnectionEvictor));
                idleConnectionEvictor.start();
            } else {
                credentialsProvider = credentialsProvider2;
                httpClientConnectionManager2 = httpClientConnectionManager;
            }
            arrayList4.add(new C19361b(httpClientConnectionManager2));
            arrayList = arrayList4;
        }
        RequestConfig requestConfig = this.f110609I;
        if (requestConfig == null) {
            requestConfig = RequestConfig.DEFAULT;
        }
        return new jpi(decorateProtocolExec, httpClientConnectionManager2, httpRoutePlanner, lookup2, lookup, cookieStore, credentialsProvider, requestConfig, arrayList);
    }

    public ClientExecChain createMainExec(HttpRequestExecutor httpRequestExecutor, HttpClientConnectionManager httpClientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy, HttpProcessor httpProcessor, AuthenticationStrategy authenticationStrategy, AuthenticationStrategy authenticationStrategy2, UserTokenHandler userTokenHandler) {
        return new MainClientExec(httpRequestExecutor, httpClientConnectionManager, connectionReuseStrategy, connectionKeepAliveStrategy, httpProcessor, authenticationStrategy, authenticationStrategy2, userTokenHandler);
    }

    public ClientExecChain decorateMainExec(ClientExecChain clientExecChain) {
        return clientExecChain;
    }

    public ClientExecChain decorateProtocolExec(ClientExecChain clientExecChain) {
        return clientExecChain;
    }

    public final HttpClientBuilder disableAuthCaching() {
        this.f110619S = true;
        return this;
    }

    public final HttpClientBuilder disableAutomaticRetries() {
        this.f110616P = true;
        return this;
    }

    public final HttpClientBuilder disableConnectionState() {
        this.f110620T = true;
        return this;
    }

    public final HttpClientBuilder disableContentCompression() {
        this.f110617Q = true;
        return this;
    }

    public final HttpClientBuilder disableCookieManagement() {
        this.f110618R = true;
        return this;
    }

    public final HttpClientBuilder disableDefaultUserAgent() {
        this.f110621U = true;
        return this;
    }

    public final HttpClientBuilder disableRedirectHandling() {
        this.f110615O = true;
        return this;
    }

    public final HttpClientBuilder evictExpiredConnections() {
        this.f110610J = true;
        return this;
    }

    @Deprecated
    public final HttpClientBuilder evictIdleConnections(Long l, TimeUnit timeUnit) {
        return evictIdleConnections(l.longValue(), timeUnit);
    }

    public final HttpClientBuilder setBackoffManager(BackoffManager backoffManager) {
        this.f110650w = backoffManager;
        return this;
    }

    public final HttpClientBuilder setConnectionBackoffStrategy(ConnectionBackoffStrategy connectionBackoffStrategy) {
        this.f110649v = connectionBackoffStrategy;
        return this;
    }

    public final HttpClientBuilder setConnectionManager(HttpClientConnectionManager httpClientConnectionManager) {
        this.f110632e = httpClientConnectionManager;
        return this;
    }

    public final HttpClientBuilder setConnectionManagerShared(boolean z) {
        this.f110633f = z;
        return this;
    }

    public final HttpClientBuilder setConnectionReuseStrategy(ConnectionReuseStrategy connectionReuseStrategy) {
        this.f110635h = connectionReuseStrategy;
        return this;
    }

    public final HttpClientBuilder setConnectionTimeToLive(long j, TimeUnit timeUnit) {
        this.f110624X = j;
        this.f110625Y = timeUnit;
        return this;
    }

    public final HttpClientBuilder setContentDecoderRegistry(Map<String, InputStreamFactory> map) {
        this.f110601A = map;
        return this;
    }

    public final HttpClientBuilder setDefaultAuthSchemeRegistry(Lookup<AuthSchemeProvider> lookup) {
        this.f110652y = lookup;
        return this;
    }

    public final HttpClientBuilder setDefaultConnectionConfig(ConnectionConfig connectionConfig) {
        this.f110608H = connectionConfig;
        return this;
    }

    public final HttpClientBuilder setDefaultCookieSpecRegistry(Lookup<CookieSpecProvider> lookup) {
        this.f110653z = lookup;
        return this;
    }

    public final HttpClientBuilder setDefaultCookieStore(CookieStore cookieStore) {
        this.f110602B = cookieStore;
        return this;
    }

    public final HttpClientBuilder setDefaultCredentialsProvider(CredentialsProvider credentialsProvider) {
        this.f110603C = credentialsProvider;
        return this;
    }

    public final HttpClientBuilder setDefaultHeaders(Collection<? extends Header> collection) {
        this.f110606F = collection;
        return this;
    }

    public final HttpClientBuilder setDefaultRequestConfig(RequestConfig requestConfig) {
        this.f110609I = requestConfig;
        return this;
    }

    public final HttpClientBuilder setDefaultSocketConfig(SocketConfig socketConfig) {
        this.f110607G = socketConfig;
        return this;
    }

    public final HttpClientBuilder setDnsResolver(DnsResolver dnsResolver) {
        this.f110641n = dnsResolver;
        return this;
    }

    @Deprecated
    public final HttpClientBuilder setHostnameVerifier(X509HostnameVerifier x509HostnameVerifier) {
        this.f110629b = x509HostnameVerifier;
        return this;
    }

    public final HttpClientBuilder setHttpProcessor(HttpProcessor httpProcessor) {
        this.f110640m = httpProcessor;
        return this;
    }

    public final HttpClientBuilder setKeepAliveStrategy(ConnectionKeepAliveStrategy connectionKeepAliveStrategy) {
        this.f110636i = connectionKeepAliveStrategy;
        return this;
    }

    public final HttpClientBuilder setMaxConnPerRoute(int i) {
        this.f110623W = i;
        return this;
    }

    public final HttpClientBuilder setMaxConnTotal(int i) {
        this.f110622V = i;
        return this;
    }

    public final HttpClientBuilder setProxy(HttpHost httpHost) {
        this.f110605E = httpHost;
        return this;
    }

    public final HttpClientBuilder setProxyAuthenticationStrategy(AuthenticationStrategy authenticationStrategy) {
        this.f110638k = authenticationStrategy;
        return this;
    }

    public final HttpClientBuilder setPublicSuffixMatcher(PublicSuffixMatcher publicSuffixMatcher) {
        this.f110628a0 = publicSuffixMatcher;
        return this;
    }

    public final HttpClientBuilder setRedirectStrategy(RedirectStrategy redirectStrategy) {
        this.f110648u = redirectStrategy;
        return this;
    }

    public final HttpClientBuilder setRequestExecutor(HttpRequestExecutor httpRequestExecutor) {
        this.f110627a = httpRequestExecutor;
        return this;
    }

    public final HttpClientBuilder setRetryHandler(HttpRequestRetryHandler httpRequestRetryHandler) {
        this.f110646s = httpRequestRetryHandler;
        return this;
    }

    public final HttpClientBuilder setRoutePlanner(HttpRoutePlanner httpRoutePlanner) {
        this.f110647t = httpRoutePlanner;
        return this;
    }

    public final HttpClientBuilder setSSLContext(SSLContext sSLContext) {
        this.f110631d = sSLContext;
        return this;
    }

    public final HttpClientBuilder setSSLHostnameVerifier(HostnameVerifier hostnameVerifier) {
        this.f110629b = hostnameVerifier;
        return this;
    }

    public final HttpClientBuilder setSSLSocketFactory(LayeredConnectionSocketFactory layeredConnectionSocketFactory) {
        this.f110630c = layeredConnectionSocketFactory;
        return this;
    }

    public final HttpClientBuilder setSchemePortResolver(SchemePortResolver schemePortResolver) {
        this.f110634g = schemePortResolver;
        return this;
    }

    public final HttpClientBuilder setServiceUnavailableRetryStrategy(ServiceUnavailableRetryStrategy serviceUnavailableRetryStrategy) {
        this.f110651x = serviceUnavailableRetryStrategy;
        return this;
    }

    @Deprecated
    public final HttpClientBuilder setSslcontext(SSLContext sSLContext) {
        return setSSLContext(sSLContext);
    }

    public final HttpClientBuilder setTargetAuthenticationStrategy(AuthenticationStrategy authenticationStrategy) {
        this.f110637j = authenticationStrategy;
        return this;
    }

    public final HttpClientBuilder setUserAgent(String str) {
        this.f110604D = str;
        return this;
    }

    public final HttpClientBuilder setUserTokenHandler(UserTokenHandler userTokenHandler) {
        this.f110639l = userTokenHandler;
        return this;
    }

    public final HttpClientBuilder useSystemProperties() {
        this.f110614N = true;
        return this;
    }

    public final HttpClientBuilder evictIdleConnections(long j, TimeUnit timeUnit) {
        this.f110611K = true;
        this.f110612L = j;
        this.f110613M = timeUnit;
        return this;
    }

    public final HttpClientBuilder addInterceptorFirst(HttpRequestInterceptor httpRequestInterceptor) {
        if (httpRequestInterceptor == null) {
            return this;
        }
        if (this.f110642o == null) {
            this.f110642o = new LinkedList<>();
        }
        this.f110642o.addFirst(httpRequestInterceptor);
        return this;
    }

    public final HttpClientBuilder addInterceptorLast(HttpRequestInterceptor httpRequestInterceptor) {
        if (httpRequestInterceptor == null) {
            return this;
        }
        if (this.f110643p == null) {
            this.f110643p = new LinkedList<>();
        }
        this.f110643p.addLast(httpRequestInterceptor);
        return this;
    }
}
