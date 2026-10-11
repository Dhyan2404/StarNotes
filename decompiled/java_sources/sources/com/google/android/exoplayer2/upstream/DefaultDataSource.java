package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DefaultHttpDataSource;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import com.onyx.android.sdk.base.utils.UriUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public final class DefaultDataSource implements DataSource {

    /* renamed from: l */
    public static final String f28019l = "DefaultDataSource";

    /* renamed from: m */
    public static final String f28020m = "asset";

    /* renamed from: n */
    public static final String f28021n = "content";

    /* renamed from: o */
    public static final String f28022o = "rtmp";

    /* renamed from: p */
    public static final String f28023p = "udp";

    /* renamed from: q */
    public static final String f28024q = "data";

    /* renamed from: r */
    public static final String f28025r = "rawresource";

    /* renamed from: s */
    public static final String f28026s = "android.resource";

    /* renamed from: a */
    public final Context f28027a;

    /* renamed from: b */
    public final List<TransferListener> f28028b;

    /* renamed from: c */
    public final DataSource f28029c;

    /* renamed from: d */
    @Nullable
    public DataSource f28030d;

    /* renamed from: e */
    @Nullable
    public DataSource f28031e;

    /* renamed from: f */
    @Nullable
    public DataSource f28032f;

    /* renamed from: g */
    @Nullable
    public DataSource f28033g;

    /* renamed from: h */
    @Nullable
    public DataSource f28034h;

    /* renamed from: i */
    @Nullable
    public DataSource f28035i;

    /* renamed from: j */
    @Nullable
    public DataSource f28036j;

    /* renamed from: k */
    @Nullable
    public DataSource f28037k;

    /* loaded from: classes5.dex */
    public static final class Factory implements DataSource.Factory {

        /* renamed from: a */
        public final Context f28038a;

        /* renamed from: b */
        public final DataSource.Factory f28039b;

        /* renamed from: c */
        @Nullable
        public TransferListener f28040c;

        public Factory(Context context) {
            this(context, new DefaultHttpDataSource.Factory());
        }

        public Factory setTransferListener(@Nullable TransferListener transferListener) {
            this.f28040c = transferListener;
            return this;
        }

        public Factory(Context context, DataSource.Factory factory) {
            this.f28038a = context.getApplicationContext();
            this.f28039b = factory;
        }

        @Override // com.google.android.exoplayer2.upstream.DataSource.Factory
        public DefaultDataSource createDataSource() {
            DefaultDataSource defaultDataSource = new DefaultDataSource(this.f28038a, this.f28039b.createDataSource());
            TransferListener transferListener = this.f28040c;
            if (transferListener != null) {
                defaultDataSource.addTransferListener(transferListener);
            }
            return defaultDataSource;
        }
    }

    public DefaultDataSource(Context context, boolean z) {
        this(context, null, 8000, 8000, z);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void addTransferListener(TransferListener transferListener) {
        Assertions.checkNotNull(transferListener);
        this.f28029c.addTransferListener(transferListener);
        this.f28028b.add(transferListener);
        m21327l(this.f28030d, transferListener);
        m21327l(this.f28031e, transferListener);
        m21327l(this.f28032f, transferListener);
        m21327l(this.f28033g, transferListener);
        m21327l(this.f28034h, transferListener);
        m21327l(this.f28035i, transferListener);
        m21327l(this.f28036j, transferListener);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() throws IOException {
        DataSource dataSource = this.f28037k;
        if (dataSource != null) {
            try {
                dataSource.close();
            } finally {
                this.f28037k = null;
            }
        }
    }

    /* renamed from: d */
    public final void m21319d(DataSource dataSource) {
        for (int i = 0; i < this.f28028b.size(); i++) {
            dataSource.addTransferListener(this.f28028b.get(i));
        }
    }

    /* renamed from: e */
    public final DataSource m21320e() {
        if (this.f28031e == null) {
            AssetDataSource assetDataSource = new AssetDataSource(this.f28027a);
            this.f28031e = assetDataSource;
            m21319d(assetDataSource);
        }
        return this.f28031e;
    }

    /* renamed from: f */
    public final DataSource m21321f() {
        if (this.f28032f == null) {
            ContentDataSource contentDataSource = new ContentDataSource(this.f28027a);
            this.f28032f = contentDataSource;
            m21319d(contentDataSource);
        }
        return this.f28032f;
    }

    /* renamed from: g */
    public final DataSource m21322g() {
        if (this.f28035i == null) {
            DataSchemeDataSource dataSchemeDataSource = new DataSchemeDataSource();
            this.f28035i = dataSchemeDataSource;
            m21319d(dataSchemeDataSource);
        }
        return this.f28035i;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public Map<String, List<String>> getResponseHeaders() {
        DataSource dataSource = this.f28037k;
        return dataSource == null ? Collections.emptyMap() : dataSource.getResponseHeaders();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    @Nullable
    public Uri getUri() {
        DataSource dataSource = this.f28037k;
        if (dataSource == null) {
            return null;
        }
        return dataSource.getUri();
    }

    /* renamed from: h */
    public final DataSource m21323h() {
        if (this.f28030d == null) {
            FileDataSource fileDataSource = new FileDataSource();
            this.f28030d = fileDataSource;
            m21319d(fileDataSource);
        }
        return this.f28030d;
    }

    /* renamed from: i */
    public final DataSource m21324i() {
        if (this.f28036j == null) {
            RawResourceDataSource rawResourceDataSource = new RawResourceDataSource(this.f28027a);
            this.f28036j = rawResourceDataSource;
            m21319d(rawResourceDataSource);
        }
        return this.f28036j;
    }

    /* renamed from: j */
    public final DataSource m21325j() {
        if (this.f28033g == null) {
            try {
                DataSource dataSource = (DataSource) Class.forName("com.google.android.exoplayer2.ext.rtmp.RtmpDataSource").getConstructor(new Class[0]).newInstance(new Object[0]);
                this.f28033g = dataSource;
                m21319d(dataSource);
            } catch (ClassNotFoundException unused) {
                Log.m21493w(f28019l, "Attempting to play RTMP stream without depending on the RTMP extension");
            } catch (Exception e) {
                throw new RuntimeException("Error instantiating RTMP extension", e);
            }
            if (this.f28033g == null) {
                this.f28033g = this.f28029c;
            }
        }
        return this.f28033g;
    }

    /* renamed from: k */
    public final DataSource m21326k() {
        if (this.f28034h == null) {
            UdpDataSource udpDataSource = new UdpDataSource();
            this.f28034h = udpDataSource;
            m21319d(udpDataSource);
        }
        return this.f28034h;
    }

    /* renamed from: l */
    public final void m21327l(@Nullable DataSource dataSource, TransferListener transferListener) {
        if (dataSource != null) {
            dataSource.addTransferListener(transferListener);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        Assertions.checkState(this.f28037k == null);
        String scheme = dataSpec.uri.getScheme();
        if (Util.isLocalFileUri(dataSpec.uri)) {
            String path = dataSpec.uri.getPath();
            if (path == null || !path.startsWith(UriUtils.PATH_ASSET_URI_PREFIX)) {
                this.f28037k = m21323h();
            } else {
                this.f28037k = m21320e();
            }
        } else if (f28020m.equals(scheme)) {
            this.f28037k = m21320e();
        } else if ("content".equals(scheme)) {
            this.f28037k = m21321f();
        } else if (f28022o.equals(scheme)) {
            this.f28037k = m21325j();
        } else if (f28023p.equals(scheme)) {
            this.f28037k = m21326k();
        } else if ("data".equals(scheme)) {
            this.f28037k = m21322g();
        } else if ("rawresource".equals(scheme) || f28026s.equals(scheme)) {
            this.f28037k = m21324i();
        } else {
            this.f28037k = this.f28029c;
        }
        return this.f28037k.open(dataSpec);
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) throws IOException {
        return ((DataSource) Assertions.checkNotNull(this.f28037k)).read(bArr, i, i2);
    }

    public DefaultDataSource(Context context, @Nullable String str, boolean z) {
        this(context, str, 8000, 8000, z);
    }

    public DefaultDataSource(Context context, @Nullable String str, int i, int i2, boolean z) {
        this(context, new DefaultHttpDataSource.Factory().setUserAgent(str).setConnectTimeoutMs(i).setReadTimeoutMs(i2).setAllowCrossProtocolRedirects(z).createDataSource());
    }

    public DefaultDataSource(Context context, DataSource dataSource) {
        this.f28027a = context.getApplicationContext();
        this.f28029c = (DataSource) Assertions.checkNotNull(dataSource);
        this.f28028b = new ArrayList();
    }
}
