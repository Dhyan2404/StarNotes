package org.apache.poi.openxml4j.opc.internal;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.exceptions.OpenXML4JException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.PackagePartName;
import org.apache.poi.openxml4j.opc.internal.marshallers.ZipPartMarshaller;
import org.apache.poi.util.IOUtils;

/* loaded from: classes12.dex */
public final class MemoryPackagePart extends PackagePart {
    protected byte[] data;

    public MemoryPackagePart(OPCPackage oPCPackage, PackagePartName packagePartName, String str) throws InvalidFormatException {
        this(oPCPackage, packagePartName, str, true);
    }

    @Override // org.apache.poi.openxml4j.opc.PackagePart
    public void clear() {
        this.data = null;
    }

    @Override // org.apache.poi.openxml4j.opc.PackagePart
    public void close() {
    }

    @Override // org.apache.poi.openxml4j.opc.PackagePart
    public void flush() {
    }

    @Override // org.apache.poi.openxml4j.opc.PackagePart
    public InputStream getInputStreamImpl() {
        if (this.data == null) {
            this.data = new byte[0];
        }
        return new UnsynchronizedByteArrayInputStream(this.data);
    }

    @Override // org.apache.poi.openxml4j.opc.PackagePart
    public OutputStream getOutputStreamImpl() {
        return new MemoryPackagePartOutputStream(this);
    }

    @Override // org.apache.poi.openxml4j.opc.PackagePart
    public long getSize() {
        if (this.data == null) {
            return 0L;
        }
        return r2.length;
    }

    @Override // org.apache.poi.openxml4j.opc.PackagePart
    public boolean load(InputStream inputStream) throws InvalidFormatException {
        try {
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
            try {
                IOUtils.copy(inputStream, unsynchronizedByteArrayOutputStream);
                this.data = unsynchronizedByteArrayOutputStream.toByteArray();
                unsynchronizedByteArrayOutputStream.close();
                return true;
            } finally {
            }
        } catch (IOException e) {
            throw new InvalidFormatException(e.getMessage());
        }
    }

    @Override // org.apache.poi.openxml4j.opc.PackagePart
    public boolean save(OutputStream outputStream) throws OpenXML4JException {
        return new ZipPartMarshaller().marshall(this, outputStream);
    }

    public MemoryPackagePart(OPCPackage oPCPackage, PackagePartName packagePartName, String str, boolean z) throws InvalidFormatException {
        super(oPCPackage, packagePartName, new ContentType(str), z);
    }
}
