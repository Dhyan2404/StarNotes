package com.squareup.okhttp.internal;

import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.squareup.okhttp.Protocol;
import com.sunia.HTREnginev2.lhk;
import java.io.IOException;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import javax.net.ssl.SSLSocket;
import okio.Buffer;

/* loaded from: classes9.dex */
public class Platform {

    /* renamed from: a */
    public static final Platform f63708a = m52652b();

    /* renamed from: com.squareup.okhttp.internal.Platform$a */
    /* loaded from: classes9.dex */
    public static class C13170a extends Platform {

        /* renamed from: b */
        public final lhk<Socket> f63709b;

        /* renamed from: c */
        public final lhk<Socket> f63710c;

        /* renamed from: d */
        public final Method f63711d;

        /* renamed from: e */
        public final Method f63712e;

        /* renamed from: f */
        public final lhk<Socket> f63713f;

        /* renamed from: g */
        public final lhk<Socket> f63714g;

        public C13170a(lhk<Socket> lhkVar, lhk<Socket> lhkVar2, Method method, Method method2, lhk<Socket> lhkVar3, lhk<Socket> lhkVar4) {
            this.f63709b = lhkVar;
            this.f63710c = lhkVar2;
            this.f63711d = method;
            this.f63712e = method2;
            this.f63713f = lhkVar3;
            this.f63714g = lhkVar4;
        }

        @Override // com.squareup.okhttp.internal.Platform
        public void configureTlsExtensions(SSLSocket sSLSocket, String str, List<Protocol> list) {
            if (str != null) {
                this.f63709b.m55434e(sSLSocket, Boolean.TRUE);
                this.f63710c.m55434e(sSLSocket, str);
            }
            lhk<Socket> lhkVar = this.f63714g;
            if (lhkVar == null || !lhkVar.m55436g(sSLSocket)) {
                return;
            }
            this.f63714g.m55435f(sSLSocket, Platform.m52651a(list));
        }

        @Override // com.squareup.okhttp.internal.Platform
        public void connectSocket(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
            try {
                socket.connect(inetSocketAddress, i);
            } catch (SecurityException e) {
                IOException iOException = new IOException("Exception in connect");
                iOException.initCause(e);
                throw iOException;
            }
        }

        @Override // com.squareup.okhttp.internal.Platform
        public String getSelectedProtocol(SSLSocket sSLSocket) {
            byte[] bArr;
            lhk<Socket> lhkVar = this.f63713f;
            if (lhkVar == null || !lhkVar.m55436g(sSLSocket) || (bArr = (byte[]) this.f63713f.m55435f(sSLSocket, new Object[0])) == null) {
                return null;
            }
            return new String(bArr, Util.UTF_8);
        }

        @Override // com.squareup.okhttp.internal.Platform
        public void tagSocket(Socket socket) throws SocketException {
            Method method = this.f63711d;
            if (method == null) {
                return;
            }
            try {
                method.invoke(null, socket);
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }

        @Override // com.squareup.okhttp.internal.Platform
        public void untagSocket(Socket socket) throws SocketException {
            Method method = this.f63712e;
            if (method == null) {
                return;
            }
            try {
                method.invoke(null, socket);
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    /* renamed from: com.squareup.okhttp.internal.Platform$b */
    /* loaded from: classes9.dex */
    public static class C13171b extends Platform {

        /* renamed from: b */
        public final Method f63715b;

        /* renamed from: c */
        public final Method f63716c;

        /* renamed from: d */
        public final Method f63717d;

        /* renamed from: e */
        public final Class<?> f63718e;

        /* renamed from: f */
        public final Class<?> f63719f;

        public C13171b(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
            this.f63715b = method;
            this.f63716c = method2;
            this.f63717d = method3;
            this.f63718e = cls;
            this.f63719f = cls2;
        }

        @Override // com.squareup.okhttp.internal.Platform
        public void afterHandshake(SSLSocket sSLSocket) {
            try {
                this.f63717d.invoke(null, sSLSocket);
            } catch (IllegalAccessException | InvocationTargetException unused) {
                throw new AssertionError();
            }
        }

        @Override // com.squareup.okhttp.internal.Platform
        public void configureTlsExtensions(SSLSocket sSLSocket, String str, List<Protocol> list) {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Protocol protocol = list.get(i);
                if (protocol != Protocol.HTTP_1_0) {
                    arrayList.add(protocol.toString());
                }
            }
            try {
                this.f63715b.invoke(null, sSLSocket, Proxy.newProxyInstance(Platform.class.getClassLoader(), new Class[]{this.f63718e, this.f63719f}, new C13172c(arrayList)));
            } catch (IllegalAccessException | InvocationTargetException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.squareup.okhttp.internal.Platform
        public String getSelectedProtocol(SSLSocket sSLSocket) {
            try {
                C13172c c13172c = (C13172c) Proxy.getInvocationHandler(this.f63716c.invoke(null, sSLSocket));
                if (!c13172c.f63721f && c13172c.f63722g == null) {
                    Internal.logger.log(Level.INFO, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?");
                    return null;
                }
                if (c13172c.f63721f) {
                    return null;
                }
                return c13172c.f63722g;
            } catch (IllegalAccessException | InvocationTargetException unused) {
                throw new AssertionError();
            }
        }
    }

    /* renamed from: com.squareup.okhttp.internal.Platform$c */
    /* loaded from: classes9.dex */
    public static class C13172c implements InvocationHandler {

        /* renamed from: e */
        public final List<String> f63720e;

        /* renamed from: f */
        public boolean f63721f;

        /* renamed from: g */
        public String f63722g;

        public C13172c(List<String> list) {
            this.f63720e = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = Util.EMPTY_STRING_ARRAY;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return Boolean.TRUE;
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.f63721f = true;
                return null;
            }
            if (name.equals("protocols") && objArr.length == 0) {
                return this.f63720e;
            }
            if ((name.equals("selectProtocol") || name.equals("select")) && String.class == returnType && objArr.length == 1) {
                Object obj2 = objArr[0];
                if (obj2 instanceof List) {
                    List list = (List) obj2;
                    int size = list.size();
                    for (int i = 0; i < size; i++) {
                        if (this.f63720e.contains(list.get(i))) {
                            String str = (String) list.get(i);
                            this.f63722g = str;
                            return str;
                        }
                    }
                    String str2 = this.f63720e.get(0);
                    this.f63722g = str2;
                    return str2;
                }
            }
            if ((!name.equals("protocolSelected") && !name.equals("selected")) || objArr.length != 1) {
                return method.invoke(this, objArr);
            }
            this.f63722g = (String) objArr[0];
            return null;
        }
    }

    /* renamed from: a */
    public static byte[] m52651a(List<Protocol> list) {
        Buffer buffer = new Buffer();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Protocol protocol = list.get(i);
            if (protocol != Protocol.HTTP_1_0) {
                buffer.writeByte(protocol.toString().length());
                buffer.writeUtf8(protocol.toString());
            }
        }
        return buffer.readByteArray();
    }

    /* renamed from: b */
    public static Platform m52652b() {
        Method method;
        lhk lhkVar;
        Method method2;
        try {
            try {
                Class.forName("com.android.org.conscrypt.OpenSSLSocketImpl");
            } catch (ClassNotFoundException unused) {
                try {
                    Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN");
                    Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider");
                    return new C13171b(cls.getMethod("put", SSLSocket.class, cls2), cls.getMethod("get", SSLSocket.class), cls.getMethod(SyncConstant.SYNC_ACTION_REMOVE, SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"));
                } catch (ClassNotFoundException | NoSuchMethodException unused2) {
                    return new Platform();
                }
            }
        } catch (ClassNotFoundException unused3) {
            Class.forName("org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl");
        }
        lhk lhkVar2 = null;
        lhk lhkVar3 = new lhk(null, "setUseSessionTickets", Boolean.TYPE);
        lhk lhkVar4 = new lhk(null, "setHostname", String.class);
        try {
            Class<?> cls3 = Class.forName("android.net.TrafficStats");
            method2 = cls3.getMethod("tagSocket", Socket.class);
            try {
                method = cls3.getMethod("untagSocket", Socket.class);
                try {
                    Class.forName("android.net.Network");
                    lhkVar = new lhk(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
                    try {
                        lhkVar2 = new lhk(null, "setAlpnProtocols", byte[].class);
                    } catch (ClassNotFoundException | NoSuchMethodException unused4) {
                    }
                } catch (ClassNotFoundException | NoSuchMethodException unused5) {
                    lhkVar = null;
                }
            } catch (ClassNotFoundException | NoSuchMethodException unused6) {
                method = null;
                lhkVar = null;
            }
        } catch (ClassNotFoundException | NoSuchMethodException unused7) {
            method = null;
            lhkVar = null;
            method2 = null;
        }
        return new C13170a(lhkVar3, lhkVar4, method2, method, lhkVar, lhkVar2);
    }

    public static Platform get() {
        return f63708a;
    }

    public void afterHandshake(SSLSocket sSLSocket) {
    }

    public void configureTlsExtensions(SSLSocket sSLSocket, String str, List<Protocol> list) {
    }

    public void connectSocket(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        socket.connect(inetSocketAddress, i);
    }

    public String getPrefix() {
        return "OkHttp";
    }

    public String getSelectedProtocol(SSLSocket sSLSocket) {
        return null;
    }

    public void logW(String str) {
        System.out.println(str);
    }

    public void tagSocket(Socket socket) throws SocketException {
    }

    public void untagSocket(Socket socket) throws SocketException {
    }
}
