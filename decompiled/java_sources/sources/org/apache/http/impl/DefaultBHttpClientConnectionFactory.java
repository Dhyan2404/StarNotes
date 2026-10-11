package org.apache.http.impl;

import java.io.IOException;
import java.net.Socket;
import org.apache.http.HttpConnectionFactory;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.config.ConnectionConfig;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.io.HttpMessageParserFactory;
import org.apache.http.io.HttpMessageWriterFactory;

@Contract(threading = ThreadingBehavior.IMMUTABLE_CONDITIONAL)
/* loaded from: classes12.dex */
public class DefaultBHttpClientConnectionFactory implements HttpConnectionFactory<DefaultBHttpClientConnection> {
    public static final DefaultBHttpClientConnectionFactory INSTANCE = new DefaultBHttpClientConnectionFactory();

    /* renamed from: a */
    public final ConnectionConfig f110388a;

    /* renamed from: b */
    public final ContentLengthStrategy f110389b;

    /* renamed from: c */
    public final ContentLengthStrategy f110390c;

    /* renamed from: d */
    public final HttpMessageWriterFactory<HttpRequest> f110391d;

    /* renamed from: e */
    public final HttpMessageParserFactory<HttpResponse> f110392e;

    public DefaultBHttpClientConnectionFactory(ConnectionConfig connectionConfig, ContentLengthStrategy contentLengthStrategy, ContentLengthStrategy contentLengthStrategy2, HttpMessageWriterFactory<HttpRequest> httpMessageWriterFactory, HttpMessageParserFactory<HttpResponse> httpMessageParserFactory) {
        this.f110388a = connectionConfig == null ? ConnectionConfig.DEFAULT : connectionConfig;
        this.f110389b = contentLengthStrategy;
        this.f110390c = contentLengthStrategy2;
        this.f110391d = httpMessageWriterFactory;
        this.f110392e = httpMessageParserFactory;
    }

    @Override // org.apache.http.HttpConnectionFactory
    public DefaultBHttpClientConnection createConnection(Socket socket) throws IOException {
        DefaultBHttpClientConnection defaultBHttpClientConnection = new DefaultBHttpClientConnection(this.f110388a.getBufferSize(), this.f110388a.getFragmentSizeHint(), ConnSupport.createDecoder(this.f110388a), ConnSupport.createEncoder(this.f110388a), this.f110388a.getMessageConstraints(), this.f110389b, this.f110390c, this.f110391d, this.f110392e);
        defaultBHttpClientConnection.bind(socket);
        return defaultBHttpClientConnection;
    }

    public DefaultBHttpClientConnectionFactory(ConnectionConfig connectionConfig, HttpMessageWriterFactory<HttpRequest> httpMessageWriterFactory, HttpMessageParserFactory<HttpResponse> httpMessageParserFactory) {
        this(connectionConfig, null, null, httpMessageWriterFactory, httpMessageParserFactory);
    }

    public DefaultBHttpClientConnectionFactory(ConnectionConfig connectionConfig) {
        this(connectionConfig, null, null, null, null);
    }

    public DefaultBHttpClientConnectionFactory() {
        this(null, null, null, null, null);
    }
}
