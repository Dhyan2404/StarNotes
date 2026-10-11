package org.apache.poi.openxml4j.opc.internal;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
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
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.TempFile;

/* loaded from: classes12.dex */
public final class TempFilePackagePart extends PackagePart {
    private static final Logger LOG = LogManager.getLogger((Class<?>) TempFilePackagePart.class);
    private File tempFile;

    public TempFilePackagePart(OPCPackage oPCPackage, PackagePartName packagePartName, String str) throws InvalidFormatException, IOException {
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
        if (this.tempFile.delete()) {
            return;
        }
        LOG.atInfo().log("Failed to delete temp file; may already have been closed and deleted");
    }

    @Override // org.apache.poi.openxml4j.opc.PackagePart
    public void flush() {
    }

    @Override // org.apache.poi.openxml4j.opc.PackagePart
    public InputStream getInputStreamImpl() throws IOException {
        return new FileInputStream(this.tempFile);
    }

    @Override // org.apache.poi.openxml4j.opc.PackagePart
    public OutputStream getOutputStreamImpl() throws IOException {
        return new FileOutputStream(this.tempFile);
    }

    @Override // org.apache.poi.openxml4j.opc.PackagePart
    public long getSize() {
        return this.tempFile.length();
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

    public TempFilePackagePart(OPCPackage oPCPackage, PackagePartName packagePartName, String str, boolean z) throws InvalidFormatException, IOException {
        super(oPCPackage, packagePartName, new ContentType(str), z);
        this.tempFile = TempFile.createTempFile("poi-package-part", ".tmp");
    }
}
