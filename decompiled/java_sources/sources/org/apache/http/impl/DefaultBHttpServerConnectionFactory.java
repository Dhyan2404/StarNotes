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
public class DefaultBHttpServerConnectionFactory implements HttpConnectionFactory<DefaultBHttpServerConnection> {
    public static final DefaultBHttpServerConnectionFactory INSTANCE = new DefaultBHttpServerConnectionFactory();

    /* renamed from: a */
    public final ConnectionConfig f110395a;

    /* renamed from: b */
    public final ContentLengthStrategy f110396b;

    /* renamed from: c */
    public final ContentLengthStrategy f110397c;

    /* renamed from: d */
    public final HttpMessageParserFactory<HttpRequest> f110398d;

    /* renamed from: e */
    public final HttpMessageWriterFactory<HttpResponse> f110399e;

    public DefaultBHttpServerConnectionFactory(ConnectionConfig connectionConfig, ContentLengthStrategy contentLengthStrategy, ContentLengthStrategy contentLengthStrategy2, HttpMessageParserFactory<HttpRequest> httpMessageParserFactory, HttpMessageWriterFactory<HttpResponse> httpMessageWriterFactory) {
        this.f110395a = connectionConfig == null ? ConnectionConfig.DEFAULT : connectionConfig;
        this.f110396b = contentLengthStrategy;
        this.f110397c = contentLengthStrategy2;
        this.f110398d = httpMessageParserFactory;
        this.f110399e = httpMessageWriterFactory;
    }

    @Override // org.apache.http.HttpConnectionFactory
    public DefaultBHttpServerConnection createConnection(Socket socket) throws IOException {
        DefaultBHttpServerConnection defaultBHttpServerConnection = new DefaultBHttpServerConnection(this.f110395a.getBufferSize(), this.f110395a.getFragmentSizeHint(), ConnSupport.createDecoder(this.f110395a), ConnSupport.createEncoder(this.f110395a), this.f110395a.getMessageConstraints(), this.f110396b, this.f110397c, this.f110398d, this.f110399e);
        defaultBHttpServerConnection.bind(socket);
        return defaultBHttpServerConnection;
    }

    public DefaultBHttpServerConnectionFactory(ConnectionConfig connectionConfig, HttpMessageParserFactory<HttpRequest> httpMessageParserFactory, HttpMessageWriterFactory<HttpResponse> httpMessageWriterFactory) {
        this(connectionConfig, null, null, httpMessageParserFactory, httpMessageWriterFactory);
    }

    public DefaultBHttpServerConnectionFactory(ConnectionConfig connectionConfig) {
        this(connectionConfig, null, null, null, null);
    }

    public DefaultBHttpServerConnectionFactory() {
        this(null, null, null, null, null);
    }
}
