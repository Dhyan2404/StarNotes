package org.apache.poi.hslf.usermodel;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.commons.io.output.ByteArrayOutputStream;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hslf.record.ExOleObjStg;
import org.apache.poi.sl.usermodel.ObjectData;

/* loaded from: classes12.dex */
public class HSLFObjectData implements ObjectData, GenericRecord {
    private final ExOleObjStg storage;

    public HSLFObjectData(ExOleObjStg exOleObjStg) {
        this.storage = exOleObjStg;
    }

    public ExOleObjStg getExOleObjStg() {
        return this.storage;
    }

    @Override // org.apache.poi.sl.usermodel.ObjectData
    public String getFileName() {
        return null;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public List<? extends GenericRecord> getGenericChildren() {
        return Collections.singletonList(getExOleObjStg());
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return null;
    }

    @Override // org.apache.poi.sl.usermodel.ObjectData
    public InputStream getInputStream() {
        return this.storage.getData();
    }

    @Override // org.apache.poi.sl.usermodel.ObjectData
    public String getOLE2ClassName() {
        return null;
    }

    @Override // org.apache.poi.sl.usermodel.ObjectData
    public OutputStream getOutputStream() {
        return new ByteArrayOutputStream() { // from class: org.apache.poi.hslf.usermodel.HSLFObjectData.1
            @Override // org.apache.commons.io.output.AbstractByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                HSLFObjectData hSLFObjectData = HSLFObjectData.this;
                hSLFObjectData.setData(hSLFObjectData.getBytes());
            }
        };
    }

    public void setData(byte[] bArr) throws IOException {
        this.storage.setData(bArr);
    }
}
