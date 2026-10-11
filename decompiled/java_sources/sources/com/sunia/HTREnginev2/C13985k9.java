package com.sunia.HTREnginev2;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSourceInputStream;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: com.sunia.HTREnginev2.k9 */
/* loaded from: classes5.dex */
public class C13985k9 implements DataSource {

    /* renamed from: a */
    public final DataSource f75195a;

    /* renamed from: b */
    public final byte[] f75196b;

    /* renamed from: c */
    public final byte[] f75197c;

    /* renamed from: d */
    @Nullable
    public CipherInputStream f75198d;

    public C13985k9(DataSource dataSource, byte[] bArr, byte[] bArr2) {
        this.f75195a = dataSource;
        this.f75196b = bArr;
        this.f75197c = bArr2;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public final void addTransferListener(TransferListener transferListener) {
        Assertions.checkNotNull(transferListener);
        this.f75195a.addTransferListener(transferListener);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() throws IOException {
        if (this.f75198d != null) {
            this.f75198d = null;
            this.f75195a.close();
        }
    }

    /* renamed from: d */
    public Cipher m55195d() throws NoSuchPaddingException, NoSuchAlgorithmException {
        return Cipher.getInstance("AES/CBC/PKCS7Padding");
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public final Map<String, List<String>> getResponseHeaders() {
        return this.f75195a.getResponseHeaders();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    @Nullable
    public final Uri getUri() {
        return this.f75195a.getUri();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public final long open(DataSpec dataSpec) throws IOException {
        try {
            Cipher m55195d = m55195d();
            try {
                m55195d.init(2, new SecretKeySpec(this.f75196b, "AES"), new IvParameterSpec(this.f75197c));
                DataSourceInputStream dataSourceInputStream = new DataSourceInputStream(this.f75195a, dataSpec);
                this.f75198d = new CipherInputStream(dataSourceInputStream, m55195d);
                dataSourceInputStream.open();
                return -1L;
            } catch (InvalidAlgorithmParameterException | InvalidKeyException e) {
                throw new RuntimeException(e);
            }
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        Assertions.checkNotNull(this.f75198d);
        int read = this.f75198d.read(bArr, i, i2);
        if (read < 0) {
            return -1;
        }
        return read;
    }
}
