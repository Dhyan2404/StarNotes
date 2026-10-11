package com.tencent.beacon.base.net.adapter;

import android.text.TextUtils;
import com.tencent.beacon.base.net.BResponse;
import com.tencent.beacon.base.net.C14950d;
import com.tencent.beacon.base.net.NetException;
import com.tencent.beacon.base.net.RequestType;
import com.tencent.beacon.base.net.call.Callback;
import com.tencent.beacon.base.net.call.HttpRequestEntity;
import com.tencent.beacon.base.net.call.JceRequestEntity;
import com.tencent.beacon.base.net.p065a.C14909d;
import com.tencent.beacon.base.net.p065a.C14910e;
import com.tencent.beacon.base.net.p065a.InterfaceC14908c;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.pack.C15014b;
import com.tencent.beacon.pack.SocketRequestPackage;
import com.tencent.beacon.pack.SocketResponsePackage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ConnectException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* renamed from: com.tencent.beacon.base.net.adapter.h */
/* loaded from: classes10.dex */
public class C14918h extends AbstractNetAdapter {

    /* renamed from: a */
    private InterfaceC14908c<byte[], SocketResponsePackage> f92675a = new C14910e();

    /* renamed from: b */
    private InterfaceC14908c<JceRequestEntity, SocketRequestPackage> f92676b = new C14909d();

    private C14918h() {
    }

    /* renamed from: a */
    public static AbstractNetAdapter m59137a() {
        return new C14918h();
    }

    @Override // com.tencent.beacon.base.net.adapter.AbstractNetAdapter
    public void request(HttpRequestEntity httpRequestEntity, Callback<BResponse> callback) {
    }

    /* renamed from: a */
    private void m59139a(Callback<byte[]> callback, String str, SocketResponsePackage socketResponsePackage) throws NetException {
        String str2 = socketResponsePackage.msg;
        if (str2 != null && str2.equals("decrypt Data fail!")) {
            callback.onFailure(new C14950d(str, "405", socketResponsePackage.statusCode, "server encrypt-status error!"));
        } else {
            callback.onResponse(socketResponsePackage.body);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.tencent.beacon.base.net.adapter.h] */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.net.Socket] */
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v22 */
    /* JADX WARN: Type inference failed for: r10v23 */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v25 */
    /* JADX WARN: Type inference failed for: r10v26 */
    /* JADX WARN: Type inference failed for: r10v27 */
    /* JADX WARN: Type inference failed for: r10v28 */
    /* JADX WARN: Type inference failed for: r10v4, types: [java.net.Socket] */
    /* JADX WARN: Type inference failed for: r10v7 */
    @Override // com.tencent.beacon.base.net.adapter.AbstractNetAdapter
    public void request(JceRequestEntity jceRequestEntity, Callback<byte[]> callback) {
        String domain = jceRequestEntity.getDomain();
        if (TextUtils.isEmpty(domain)) {
            return;
        }
        String name = jceRequestEntity.getType().name();
        try {
            try {
                try {
                    try {
                        try {
                            byte[] byteArray = this.f92676b.mo59122a(jceRequestEntity).toByteArray();
                            if (byteArray != null && byteArray.length > 65535) {
                                StringBuilder sb = new StringBuilder();
                                sb.append("content length is too long:");
                                sb.append(byteArray.length);
                                callback.onFailure(new C14950d(name, "406", -1, sb.toString()));
                                return;
                            }
                            Socket m59138a = m59138a(domain, jceRequestEntity.getPort());
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("send data size: ");
                            sb2.append(jceRequestEntity.getContent().length);
                            C14954c.m59389a("SocketAdapter", 0, sb2.toString(), new Object[0]);
                            m59140a(m59138a, this.f92676b.mo59122a(jceRequestEntity));
                            byte[] m59141a = m59141a(m59138a, jceRequestEntity.getType() == RequestType.EVENT);
                            if (m59141a != null && m59141a.length > 0) {
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append("receivedData: ");
                                sb3.append(m59141a.length);
                                C14954c.m59389a("SocketAdapter", 1, sb3.toString(), new Object[0]);
                                SocketResponsePackage mo59122a = this.f92675a.mo59122a(m59141a);
                                if (mo59122a == null) {
                                    callback.onFailure(new C14950d(name, "402", -1, "responsePackage == null"));
                                    if (m59138a == null || m59138a.isClosed()) {
                                        return;
                                    }
                                    try {
                                        m59138a.close();
                                        return;
                                    } catch (IOException e) {
                                        C14954c.m59393a(e);
                                        return;
                                    }
                                }
                                C14954c.m59389a("SocketAdapter", 2, "socket response code: %s, header: %s, msg: %s", Integer.valueOf(mo59122a.statusCode), mo59122a.header, mo59122a.msg);
                                int i = mo59122a.statusCode;
                                if (i == 200) {
                                    m59139a(callback, name, mo59122a);
                                } else {
                                    StringBuilder sb4 = new StringBuilder();
                                    sb4.append("responsePackage msg: ");
                                    sb4.append(mo59122a.msg);
                                    callback.onFailure(new C14950d(name, "402", i, sb4.toString()));
                                }
                                if (m59138a == null || m59138a.isClosed()) {
                                    return;
                                }
                                m59138a.close();
                                return;
                            }
                            callback.onFailure(new C14950d(name, "402", -1, "receiveData == null"));
                            if (m59138a == null || m59138a.isClosed()) {
                                return;
                            }
                            try {
                                m59138a.close();
                            } catch (IOException e2) {
                                C14954c.m59393a(e2);
                            }
                        } catch (ConnectException e3) {
                            Socket socket = null;
                            callback.onFailure(new C14950d(name, "401", -1, " connect time more than 30s", e3));
                            this = socket;
                            if (0 != 0) {
                                boolean isClosed = socket.isClosed();
                                this = socket;
                                if (!isClosed) {
                                    socket.close();
                                    this = socket;
                                }
                            }
                        }
                    } catch (SocketTimeoutException e4) {
                        Socket socket2 = null;
                        callback.onFailure(new C14950d(name, "401", -1, " request time more than 30s", e4));
                        this = socket2;
                        if (0 != 0) {
                            boolean isClosed2 = socket2.isClosed();
                            this = socket2;
                            if (!isClosed2) {
                                socket2.close();
                                this = socket2;
                            }
                        }
                    }
                } finally {
                }
            } catch (IOException e5) {
                C14954c.m59393a(e5);
            }
        } catch (Throwable th) {
            if (this != 0 && !this.isClosed()) {
                try {
                    this.close();
                } catch (IOException e6) {
                    C14954c.m59393a(e6);
                }
            }
        }
    }

    /* renamed from: a */
    private byte[] m59141a(Socket socket, boolean z) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        InputStream inputStream = null;
        try {
            InputStream inputStream2 = socket.getInputStream();
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    byte[] bArr = new byte[2048];
                    while (true) {
                        int read = inputStream2.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, read);
                    }
                    byteArrayOutputStream.flush();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    if (!z) {
                        ByteBuffer allocate = ByteBuffer.allocate(byteArray.length - 4);
                        allocate.put(byteArray, 2, byteArray.length - 4);
                        byteArray = allocate.array();
                    }
                    byteArrayOutputStream.close();
                    inputStream2.close();
                    C14953b.m59365a(inputStream2, byteArrayOutputStream);
                    return byteArray;
                } catch (Throwable th) {
                    th = th;
                    inputStream = inputStream2;
                    try {
                        C14954c.m59393a(th);
                        C14953b.m59365a(inputStream, byteArrayOutputStream);
                        throw th;
                    } catch (Throwable th2) {
                        C14953b.m59365a(inputStream, byteArrayOutputStream);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                byteArrayOutputStream = null;
            }
        } catch (Throwable th4) {
            th = th4;
            byteArrayOutputStream = null;
        }
    }

    /* renamed from: a */
    private void m59140a(Socket socket, SocketRequestPackage socketRequestPackage) throws IOException {
        C15014b c15014b = new C15014b();
        socketRequestPackage.writeTo(c15014b);
        OutputStream outputStream = socket.getOutputStream();
        byte[] m59761b = c15014b.m59761b();
        outputStream.write(m59142a(m59761b, m59761b.length));
        outputStream.flush();
    }

    /* renamed from: a */
    private byte[] m59142a(byte[] bArr, int i) {
        int i2 = i + 4;
        ByteBuffer allocate = ByteBuffer.allocate(i2);
        allocate.order(ByteOrder.BIG_ENDIAN);
        allocate.putShort((short) (i2 & 65535));
        allocate.put(bArr);
        allocate.put((byte) 13);
        allocate.put((byte) 10);
        return allocate.array();
    }

    /* renamed from: a */
    private Socket m59138a(String str, int i) throws IOException {
        C14954c.m59391a("SocketAdapter", "create socket domain: %s, port: %d", str, Integer.valueOf(i));
        Socket socket = new Socket(InetAddress.getByName(str).getHostAddress(), i);
        socket.setSoTimeout(30000);
        return socket;
    }
}
