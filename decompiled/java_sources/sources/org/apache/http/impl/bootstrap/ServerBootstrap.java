package org.apache.http.impl.bootstrap;

import java.net.InetAddress;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import javax.net.ServerSocketFactory;
import javax.net.ssl.SSLContext;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.ExceptionLogger;
import org.apache.http.HttpConnectionFactory;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponseFactory;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.config.ConnectionConfig;
import org.apache.http.config.SocketConfig;
import org.apache.http.impl.DefaultBHttpServerConnection;
import org.apache.http.impl.DefaultBHttpServerConnectionFactory;
import org.apache.http.impl.DefaultConnectionReuseStrategy;
import org.apache.http.impl.DefaultHttpResponseFactory;
import org.apache.http.protocol.HttpExpectationVerifier;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpProcessorBuilder;
import org.apache.http.protocol.HttpRequestHandler;
import org.apache.http.protocol.HttpRequestHandlerMapper;
import org.apache.http.protocol.HttpService;
import org.apache.http.protocol.ResponseConnControl;
import org.apache.http.protocol.ResponseContent;
import org.apache.http.protocol.ResponseDate;
import org.apache.http.protocol.ResponseServer;
import org.apache.http.protocol.UriHttpRequestHandlerMapper;

/* loaded from: classes12.dex */
public class ServerBootstrap {

    /* renamed from: a */
    public int f110532a;

    /* renamed from: b */
    public InetAddress f110533b;

    /* renamed from: c */
    public SocketConfig f110534c;

    /* renamed from: d */
    public ConnectionConfig f110535d;

    /* renamed from: e */
    public LinkedList<HttpRequestInterceptor> f110536e;

    /* renamed from: f */
    public LinkedList<HttpRequestInterceptor> f110537f;

    /* renamed from: g */
    public LinkedList<HttpResponseInterceptor> f110538g;

    /* renamed from: h */
    public LinkedList<HttpResponseInterceptor> f110539h;

    /* renamed from: i */
    public String f110540i;

    /* renamed from: j */
    public HttpProcessor f110541j;

    /* renamed from: k */
    public ConnectionReuseStrategy f110542k;

    /* renamed from: l */
    public HttpResponseFactory f110543l;

    /* renamed from: m */
    public HttpRequestHandlerMapper f110544m;

    /* renamed from: n */
    public Map<String, HttpRequestHandler> f110545n;

    /* renamed from: o */
    public HttpExpectationVerifier f110546o;

    /* renamed from: p */
    public ServerSocketFactory f110547p;

    /* renamed from: q */
    public SSLContext f110548q;

    /* renamed from: r */
    public SSLServerSetupHandler f110549r;

    /* renamed from: s */
    public HttpConnectionFactory<? extends DefaultBHttpServerConnection> f110550s;

    /* renamed from: t */
    public ExceptionLogger f110551t;

    public static ServerBootstrap bootstrap() {
        return new ServerBootstrap();
    }

    public final ServerBootstrap addInterceptorFirst(HttpResponseInterceptor httpResponseInterceptor) {
        if (httpResponseInterceptor == null) {
            return this;
        }
        if (this.f110538g == null) {
            this.f110538g = new LinkedList<>();
        }
        this.f110538g.addFirst(httpResponseInterceptor);
        return this;
    }

    public final ServerBootstrap addInterceptorLast(HttpResponseInterceptor httpResponseInterceptor) {
        if (httpResponseInterceptor == null) {
            return this;
        }
        if (this.f110539h == null) {
            this.f110539h = new LinkedList<>();
        }
        this.f110539h.addLast(httpResponseInterceptor);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [org.apache.http.protocol.HttpRequestHandlerMapper] */
    /* JADX WARN: Type inference failed for: r1v24, types: [org.apache.http.protocol.UriHttpRequestHandlerMapper] */
    /* JADX WARN: Type inference failed for: r1v3 */
    public HttpServer create() {
        HttpProcessor httpProcessor = this.f110541j;
        if (httpProcessor == null) {
            HttpProcessorBuilder create = HttpProcessorBuilder.create();
            LinkedList<HttpRequestInterceptor> linkedList = this.f110536e;
            if (linkedList != null) {
                Iterator<HttpRequestInterceptor> it2 = linkedList.iterator();
                while (it2.hasNext()) {
                    create.addFirst(it2.next());
                }
            }
            LinkedList<HttpResponseInterceptor> linkedList2 = this.f110538g;
            if (linkedList2 != null) {
                Iterator<HttpResponseInterceptor> it3 = linkedList2.iterator();
                while (it3.hasNext()) {
                    create.addFirst(it3.next());
                }
            }
            String str = this.f110540i;
            if (str == null) {
                str = "Apache-HttpCore/1.1";
            }
            create.addAll(new ResponseDate(), new ResponseServer(str), new ResponseContent(), new ResponseConnControl());
            LinkedList<HttpRequestInterceptor> linkedList3 = this.f110537f;
            if (linkedList3 != null) {
                Iterator<HttpRequestInterceptor> it4 = linkedList3.iterator();
                while (it4.hasNext()) {
                    create.addLast(it4.next());
                }
            }
            LinkedList<HttpResponseInterceptor> linkedList4 = this.f110539h;
            if (linkedList4 != null) {
                Iterator<HttpResponseInterceptor> it5 = linkedList4.iterator();
                while (it5.hasNext()) {
                    create.addLast(it5.next());
                }
            }
            httpProcessor = create.build();
        }
        HttpProcessor httpProcessor2 = httpProcessor;
        ?? r1 = this.f110544m;
        if (r1 == 0) {
            r1 = new UriHttpRequestHandlerMapper();
            Map<String, HttpRequestHandler> map = this.f110545n;
            if (map != null) {
                for (Map.Entry<String, HttpRequestHandler> entry : map.entrySet()) {
                    r1.register(entry.getKey(), entry.getValue());
                }
            }
        }
        HttpRequestHandlerMapper httpRequestHandlerMapper = r1;
        ConnectionReuseStrategy connectionReuseStrategy = this.f110542k;
        if (connectionReuseStrategy == null) {
            connectionReuseStrategy = DefaultConnectionReuseStrategy.INSTANCE;
        }
        ConnectionReuseStrategy connectionReuseStrategy2 = connectionReuseStrategy;
        HttpResponseFactory httpResponseFactory = this.f110543l;
        if (httpResponseFactory == null) {
            httpResponseFactory = DefaultHttpResponseFactory.INSTANCE;
        }
        HttpService httpService = new HttpService(httpProcessor2, connectionReuseStrategy2, httpResponseFactory, httpRequestHandlerMapper, this.f110546o);
        ServerSocketFactory serverSocketFactory = this.f110547p;
        if (serverSocketFactory == null) {
            SSLContext sSLContext = this.f110548q;
            serverSocketFactory = sSLContext != null ? sSLContext.getServerSocketFactory() : ServerSocketFactory.getDefault();
        }
        ServerSocketFactory serverSocketFactory2 = serverSocketFactory;
        HttpConnectionFactory httpConnectionFactory = this.f110550s;
        if (httpConnectionFactory == null) {
            httpConnectionFactory = this.f110535d != null ? new DefaultBHttpServerConnectionFactory(this.f110535d) : DefaultBHttpServerConnectionFactory.INSTANCE;
        }
        HttpConnectionFactory httpConnectionFactory2 = httpConnectionFactory;
        ExceptionLogger exceptionLogger = this.f110551t;
        if (exceptionLogger == null) {
            exceptionLogger = ExceptionLogger.NO_OP;
        }
        ExceptionLogger exceptionLogger2 = exceptionLogger;
        int i = this.f110532a;
        int i2 = i > 0 ? i : 0;
        InetAddress inetAddress = this.f110533b;
        SocketConfig socketConfig = this.f110534c;
        if (socketConfig == null) {
            socketConfig = SocketConfig.DEFAULT;
        }
        return new HttpServer(i2, inetAddress, socketConfig, serverSocketFactory2, httpService, httpConnectionFactory2, this.f110549r, exceptionLogger2);
    }

    public final ServerBootstrap registerHandler(String str, HttpRequestHandler httpRequestHandler) {
        if (str != null && httpRequestHandler != null) {
            if (this.f110545n == null) {
                this.f110545n = new HashMap();
            }
            this.f110545n.put(str, httpRequestHandler);
        }
        return this;
    }

    public final ServerBootstrap setConnectionConfig(ConnectionConfig connectionConfig) {
        this.f110535d = connectionConfig;
        return this;
    }

    public final ServerBootstrap setConnectionFactory(HttpConnectionFactory<? extends DefaultBHttpServerConnection> httpConnectionFactory) {
        this.f110550s = httpConnectionFactory;
        return this;
    }

    public final ServerBootstrap setConnectionReuseStrategy(ConnectionReuseStrategy connectionReuseStrategy) {
        this.f110542k = connectionReuseStrategy;
        return this;
    }

    public final ServerBootstrap setExceptionLogger(ExceptionLogger exceptionLogger) {
        this.f110551t = exceptionLogger;
        return this;
    }

    public final ServerBootstrap setExpectationVerifier(HttpExpectationVerifier httpExpectationVerifier) {
        this.f110546o = httpExpectationVerifier;
        return this;
    }

    public final ServerBootstrap setHandlerMapper(HttpRequestHandlerMapper httpRequestHandlerMapper) {
        this.f110544m = httpRequestHandlerMapper;
        return this;
    }

    public final ServerBootstrap setHttpProcessor(HttpProcessor httpProcessor) {
        this.f110541j = httpProcessor;
        return this;
    }

    public final ServerBootstrap setListenerPort(int i) {
        this.f110532a = i;
        return this;
    }

    public final ServerBootstrap setLocalAddress(InetAddress inetAddress) {
        this.f110533b = inetAddress;
        return this;
    }

    public final ServerBootstrap setResponseFactory(HttpResponseFactory httpResponseFactory) {
        this.f110543l = httpResponseFactory;
        return this;
    }

    public final ServerBootstrap setServerInfo(String str) {
        this.f110540i = str;
        return this;
    }

    public final ServerBootstrap setServerSocketFactory(ServerSocketFactory serverSocketFactory) {
        this.f110547p = serverSocketFactory;
        return this;
    }

    public final ServerBootstrap setSocketConfig(SocketConfig socketConfig) {
        this.f110534c = socketConfig;
        return this;
    }

    public final ServerBootstrap setSslContext(SSLContext sSLContext) {
        this.f110548q = sSLContext;
        return this;
    }

    public final ServerBootstrap setSslSetupHandler(SSLServerSetupHandler sSLServerSetupHandler) {
        this.f110549r = sSLServerSetupHandler;
        return this;
    }

    public final ServerBootstrap addInterceptorFirst(HttpRequestInterceptor httpRequestInterceptor) {
        if (httpRequestInterceptor == null) {
            return this;
        }
        if (this.f110536e == null) {
            this.f110536e = new LinkedList<>();
        }
        this.f110536e.addFirst(httpRequestInterceptor);
        return this;
    }

    public final ServerBootstrap addInterceptorLast(HttpRequestInterceptor httpRequestInterceptor) {
        if (httpRequestInterceptor == null) {
            return this;
        }
        if (this.f110537f == null) {
            this.f110537f = new LinkedList<>();
        }
        this.f110537f.addLast(httpRequestInterceptor);
        return this;
    }
}
