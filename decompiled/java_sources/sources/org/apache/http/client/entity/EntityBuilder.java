package org.apache.http.client.entity;

import java.io.File;
import java.io.InputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.entity.AbstractHttpEntity;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.FileEntity;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.entity.SerializableEntity;
import org.apache.http.entity.StringEntity;

/* loaded from: classes12.dex */
public class EntityBuilder {

    /* renamed from: a */
    public String f110154a;

    /* renamed from: b */
    public byte[] f110155b;

    /* renamed from: c */
    public InputStream f110156c;

    /* renamed from: d */
    public List<NameValuePair> f110157d;

    /* renamed from: e */
    public Serializable f110158e;

    /* renamed from: f */
    public File f110159f;

    /* renamed from: g */
    public ContentType f110160g;

    /* renamed from: h */
    public String f110161h;

    /* renamed from: i */
    public boolean f110162i;

    /* renamed from: j */
    public boolean f110163j;

    public static EntityBuilder create() {
        return new EntityBuilder();
    }

    /* renamed from: a */
    public final void m68291a() {
        this.f110154a = null;
        this.f110155b = null;
        this.f110156c = null;
        this.f110157d = null;
        this.f110158e = null;
        this.f110159f = null;
    }

    /* renamed from: b */
    public final ContentType m68292b(ContentType contentType) {
        ContentType contentType2 = this.f110160g;
        return contentType2 != null ? contentType2 : contentType;
    }

    public HttpEntity build() {
        AbstractHttpEntity fileEntity;
        ContentType contentType;
        String str = this.f110154a;
        if (str != null) {
            fileEntity = new StringEntity(str, m68292b(ContentType.DEFAULT_TEXT));
        } else {
            byte[] bArr = this.f110155b;
            if (bArr != null) {
                fileEntity = new ByteArrayEntity(bArr, m68292b(ContentType.DEFAULT_BINARY));
            } else {
                InputStream inputStream = this.f110156c;
                if (inputStream != null) {
                    fileEntity = new InputStreamEntity(inputStream, -1L, m68292b(ContentType.DEFAULT_BINARY));
                } else {
                    List<NameValuePair> list = this.f110157d;
                    if (list != null) {
                        ContentType contentType2 = this.f110160g;
                        fileEntity = new UrlEncodedFormEntity(list, contentType2 != null ? contentType2.getCharset() : null);
                    } else {
                        Serializable serializable = this.f110158e;
                        if (serializable != null) {
                            fileEntity = new SerializableEntity(serializable);
                            fileEntity.setContentType(ContentType.DEFAULT_BINARY.toString());
                        } else {
                            File file = this.f110159f;
                            fileEntity = file != null ? new FileEntity(file, m68292b(ContentType.DEFAULT_BINARY)) : new BasicHttpEntity();
                        }
                    }
                }
            }
        }
        if (fileEntity.getContentType() != null && (contentType = this.f110160g) != null) {
            fileEntity.setContentType(contentType.toString());
        }
        fileEntity.setContentEncoding(this.f110161h);
        fileEntity.setChunked(this.f110162i);
        return this.f110163j ? new GzipCompressingEntity(fileEntity) : fileEntity;
    }

    public EntityBuilder chunked() {
        this.f110162i = true;
        return this;
    }

    public byte[] getBinary() {
        return this.f110155b;
    }

    public String getContentEncoding() {
        return this.f110161h;
    }

    public ContentType getContentType() {
        return this.f110160g;
    }

    public File getFile() {
        return this.f110159f;
    }

    public List<NameValuePair> getParameters() {
        return this.f110157d;
    }

    public Serializable getSerializable() {
        return this.f110158e;
    }

    public InputStream getStream() {
        return this.f110156c;
    }

    public String getText() {
        return this.f110154a;
    }

    public EntityBuilder gzipCompress() {
        this.f110163j = true;
        return this;
    }

    public boolean isChunked() {
        return this.f110162i;
    }

    public boolean isGzipCompress() {
        return this.f110163j;
    }

    public EntityBuilder setBinary(byte[] bArr) {
        m68291a();
        this.f110155b = bArr;
        return this;
    }

    public EntityBuilder setContentEncoding(String str) {
        this.f110161h = str;
        return this;
    }

    public EntityBuilder setContentType(ContentType contentType) {
        this.f110160g = contentType;
        return this;
    }

    public EntityBuilder setFile(File file) {
        m68291a();
        this.f110159f = file;
        return this;
    }

    public EntityBuilder setParameters(List<NameValuePair> list) {
        m68291a();
        this.f110157d = list;
        return this;
    }

    public EntityBuilder setSerializable(Serializable serializable) {
        m68291a();
        this.f110158e = serializable;
        return this;
    }

    public EntityBuilder setStream(InputStream inputStream) {
        m68291a();
        this.f110156c = inputStream;
        return this;
    }

    public EntityBuilder setText(String str) {
        m68291a();
        this.f110154a = str;
        return this;
    }

    public EntityBuilder setParameters(NameValuePair... nameValuePairArr) {
        return setParameters(Arrays.asList(nameValuePairArr));
    }
}
