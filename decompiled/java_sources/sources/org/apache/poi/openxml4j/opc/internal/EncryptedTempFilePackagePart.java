package org.apache.poi.openxml4j.opc.internal;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.exceptions.OpenXML4JException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.PackagePartName;
import org.apache.poi.openxml4j.opc.internal.marshallers.ZipPartMarshaller;
import org.apache.poi.poifs.crypt.temp.EncryptedTempData;
import org.apache.poi.util.IOUtils;

/* loaded from: classes12.dex */
public final class EncryptedTempFilePackagePart extends PackagePart {
    private static final Logger LOG = LogManager.getLogger((Class<?>) EncryptedTempFilePackagePart.class);
    private EncryptedTempData tempFile;

    public EncryptedTempFilePackagePart(OPCPackage oPCPackage, PackagePartName packagePartName, String str) throws InvalidFormatException, IOException {
        this(oPCPackage, packagePartName, str, true);
    }

    @Override // org.apache.poi.openxml4j.opc.PackagePart
    public void clear() {
        try {
            OutputStream outputStreamImpl = getOutputStreamImpl();
            try {
                outputStreamImpl.write(new byte[0]);
                outputStreamImpl.close();
            } finally {
            }
        } catch (IOException e) {
            LOG.atWarn().log("Failed to clear data in temp file", e);
        }
    }

    @Override // org.apache.poi.openxml4j.opc.PackagePart
    public void close() {
        this.tempFile.dispose();
    }

    @Override // org.apache.poi.openxml4j.opc.PackagePart
    public void flush() {
    }

    @Override // org.apache.poi.openxml4j.opc.PackagePart
    public InputStream getInputStreamImpl() throws IOException {
        return this.tempFile.getInputStream();
    }

    @Override // org.apache.poi.openxml4j.opc.PackagePart
    public OutputStream getOutputStreamImpl() throws IOException {
        return this.tempFile.getOutputStream();
    }

    @Override // org.apache.poi.openxml4j.opc.PackagePart
    public long getSize() {
        return this.tempFile.getByteCount();
    }

    @Override // org.apache.poi.openxml4j.opc.PackagePart
    public boolean load(InputStream inputStream) throws InvalidFormatException {
        try {
            OutputStream outputStreamImpl = getOutputStreamImpl();
            try {
                IOUtils.copy(inputStream, outputStreamImpl);
                if (outputStreamImpl == null) {
                    return true;
                }
                outputStreamImpl.close();
                return true;
            } finally {
            }
        } catch (IOException e) {
            throw new InvalidFormatException(e.getMessage(), e);
        }
    }

    @Override // org.apache.poi.openxml4j.opc.PackagePart
    public boolean save(OutputStream outputStream) throws OpenXML4JException {
        return new ZipPartMarshaller().marshall(this, outputStream);
    }

    public EncryptedTempFilePackagePart(OPCPackage oPCPackage, PackagePartName packagePartName, String str, boolean z) throws InvalidFormatException, IOException {
        super(oPCPackage, packagePartName, new ContentType(str), z);
        this.tempFile = new EncryptedTempData();
    }
}
