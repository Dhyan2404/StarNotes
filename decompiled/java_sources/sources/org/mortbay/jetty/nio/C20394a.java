package org.mortbay.jetty.nio;

import java.io.IOException;
import java.nio.channels.SelectionKey;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import org.mortbay.io.Connection;
import org.mortbay.io.nio.SelectChannelEndPoint;
import org.mortbay.io.nio.SelectorManager;
import org.mortbay.jetty.HttpConnection;

/* renamed from: org.mortbay.jetty.nio.a */
/* loaded from: classes13.dex */
public class C20394a extends SelectorManager {

    /* renamed from: q */
    public final /* synthetic */ SelectChannelConnector f114962q;

    public C20394a(SelectChannelConnector selectChannelConnector) {
        this.f114962q = selectChannelConnector;
    }

    @Override // org.mortbay.io.nio.SelectorManager
    public SocketChannel acceptChannel(SelectionKey selectionKey) throws IOException {
        SocketChannel accept = ((ServerSocketChannel) selectionKey.channel()).accept();
        if (accept == null) {
            return null;
        }
        accept.configureBlocking(false);
        this.f114962q.configure(accept.socket());
        return accept;
    }

    @Override // org.mortbay.io.nio.SelectorManager
    public boolean dispatch(Runnable runnable) throws IOException {
        return this.f114962q.getThreadPool().dispatch(runnable);
    }

    @Override // org.mortbay.io.nio.SelectorManager
    public void endPointClosed(SelectChannelEndPoint selectChannelEndPoint) {
        this.f114962q.connectionClosed((HttpConnection) selectChannelEndPoint.getConnection());
    }

    @Override // org.mortbay.io.nio.SelectorManager
    public void endPointOpened(SelectChannelEndPoint selectChannelEndPoint) {
        this.f114962q.connectionOpened((HttpConnection) selectChannelEndPoint.getConnection());
    }

    @Override // org.mortbay.io.nio.SelectorManager
    public Connection newConnection(SocketChannel socketChannel, SelectChannelEndPoint selectChannelEndPoint) {
        return this.f114962q.newConnection(socketChannel, selectChannelEndPoint);
    }

    @Override // org.mortbay.io.nio.SelectorManager
    public SelectChannelEndPoint newEndPoint(SocketChannel socketChannel, SelectorManager.SelectSet selectSet, SelectionKey selectionKey) throws IOException {
        return this.f114962q.newEndPoint(socketChannel, selectSet, selectionKey);
    }
}
