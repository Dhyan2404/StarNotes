package org.mortbay.jetty.nio;

import java.io.IOException;
import java.lang.reflect.Method;
import java.nio.channels.Channel;
import java.nio.channels.ServerSocketChannel;
import org.mortbay.log.Log;

/* loaded from: classes13.dex */
public class InheritedChannelConnector extends SelectChannelConnector {

    /* renamed from: K0 */
    public static /* synthetic */ Class f114950K0;

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    @Override // org.mortbay.jetty.nio.SelectChannelConnector, org.mortbay.jetty.Connector
    public void open() throws IOException {
        synchronized (this) {
            try {
                Class cls = f114950K0;
                if (cls == null) {
                    cls = class$("java.lang.System");
                    f114950K0 = cls;
                }
                Method method = cls.getMethod("inheritedChannel", null);
                if (method != null) {
                    Channel channel = (Channel) method.invoke(null, null);
                    if (channel instanceof ServerSocketChannel) {
                        this._acceptChannel = (ServerSocketChannel) channel;
                    }
                }
                ServerSocketChannel serverSocketChannel = this._acceptChannel;
                if (serverSocketChannel != null) {
                    serverSocketChannel.configureBlocking(false);
                }
            } catch (Exception e) {
                Log.warn(e);
            }
            if (this._acceptChannel != null) {
                throw new IOException("No System.inheritedChannel()");
            }
            super.open();
        }
    }
}
