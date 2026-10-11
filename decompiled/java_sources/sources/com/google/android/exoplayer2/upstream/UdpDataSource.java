package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;

/* loaded from: classes5.dex */
public final class UdpDataSource extends BaseDataSource {
    public static final int DEFAULT_MAX_PACKET_SIZE = 2000;
    public static final int DEFAULT_SOCKET_TIMEOUT_MILLIS = 8000;
    public static final int UDP_PORT_UNSET = -1;

    /* renamed from: e */
    public final int f28160e;

    /* renamed from: f */
    public final byte[] f28161f;

    /* renamed from: g */
    public final DatagramPacket f28162g;

    /* renamed from: h */
    @Nullable
    public Uri f28163h;

    /* renamed from: i */
    @Nullable
    public DatagramSocket f28164i;

    /* renamed from: j */
    @Nullable
    public MulticastSocket f28165j;

    /* renamed from: k */
    @Nullable
    public InetAddress f28166k;

    /* renamed from: l */
    public boolean f28167l;

    /* renamed from: m */
    public int f28168m;

    /* loaded from: classes5.dex */
    public static final class UdpDataSourceException extends DataSourceException {
        public UdpDataSourceException(Throwable th, int i) {
            super(th, i);
        }
    }

    public UdpDataSource() {
        this(2000);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() {
        this.f28163h = null;
        MulticastSocket multicastSocket = this.f28165j;
        if (multicastSocket != null) {
            try {
                multicastSocket.leaveGroup((InetAddress) Assertions.checkNotNull(this.f28166k));
            } catch (IOException unused) {
            }
            this.f28165j = null;
        }
        DatagramSocket datagramSocket = this.f28164i;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f28164i = null;
        }
        this.f28166k = null;
        this.f28168m = 0;
        if (this.f28167l) {
            this.f28167l = false;
            transferEnded();
        }
    }

    public int getLocalPort() {
        DatagramSocket datagramSocket = this.f28164i;
        if (datagramSocket == null) {
            return -1;
        }
        return datagramSocket.getLocalPort();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    @Nullable
    public Uri getUri() {
        return this.f28163h;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws UdpDataSourceException {
        Uri uri = dataSpec.uri;
        this.f28163h = uri;
        String str = (String) Assertions.checkNotNull(uri.getHost());
        int port = this.f28163h.getPort();
        transferInitializing(dataSpec);
        try {
            this.f28166k = InetAddress.getByName(str);
            InetSocketAddress inetSocketAddress = new InetSocketAddress(this.f28166k, port);
            if (this.f28166k.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(inetSocketAddress);
                this.f28165j = multicastSocket;
                multicastSocket.joinGroup(this.f28166k);
                this.f28164i = this.f28165j;
            } else {
                this.f28164i = new DatagramSocket(inetSocketAddress);
            }
            this.f28164i.setSoTimeout(this.f28160e);
            this.f28167l = true;
            transferStarted(dataSpec);
            return -1L;
        } catch (IOException e) {
            throw new UdpDataSourceException(e, 2001);
        } catch (SecurityException e2) {
            throw new UdpDataSourceException(e2, 2006);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) throws UdpDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        if (this.f28168m == 0) {
            try {
                ((DatagramSocket) Assertions.checkNotNull(this.f28164i)).receive(this.f28162g);
                int length = this.f28162g.getLength();
                this.f28168m = length;
                bytesTransferred(length);
            } catch (SocketTimeoutException e) {
                throw new UdpDataSourceException(e, 2002);
            } catch (IOException e2) {
                throw new UdpDataSourceException(e2, 2001);
            }
        }
        int length2 = this.f28162g.getLength();
        int i3 = this.f28168m;
        int min = Math.min(i3, i2);
        System.arraycopy(this.f28161f, length2 - i3, bArr, i, min);
        this.f28168m -= min;
        return min;
    }

    public UdpDataSource(int i) {
        this(i, 8000);
    }

    public UdpDataSource(int i, int i2) {
        super(true);
        this.f28160e = i2;
        byte[] bArr = new byte[i];
        this.f28161f = bArr;
        this.f28162g = new DatagramPacket(bArr, 0, i);
    }
}
