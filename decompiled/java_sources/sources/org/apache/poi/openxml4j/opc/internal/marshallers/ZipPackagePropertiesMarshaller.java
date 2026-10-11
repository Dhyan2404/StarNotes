package org.apache.poi.openxml4j.opc.internal.marshallers;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream;
import org.apache.poi.openxml4j.exceptions.OpenXML4JException;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.StreamHelper;
import org.apache.poi.openxml4j.opc.internal.ZipHelper;

/* loaded from: classes12.dex */
public final class ZipPackagePropertiesMarshaller extends PackagePropertiesMarshaller {
    @Override // org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller, org.apache.poi.openxml4j.opc.internal.PartMarshaller
    public boolean marshall(PackagePart packagePart, OutputStream outputStream) throws OpenXML4JException {
        if (!(outputStream instanceof ZipArchiveOutputStream)) {
            throw new IllegalArgumentException("ZipOutputStream expected!");
        }
        ZipArchiveOutputStream zipArchiveOutputStream = (ZipArchiveOutputStream) outputStream;
        try {
            zipArchiveOutputStream.putArchiveEntry(new ZipArchiveEntry(ZipHelper.getZipItemNameFromOPCName(packagePart.getPartName().getURI().toString())));
            try {
                super.marshall(packagePart, outputStream);
                return StreamHelper.saveXmlInStream(this.xmlDoc, outputStream);
            } finally {
                zipArchiveOutputStream.closeArchiveEntry();
            }
        } catch (IOException e) {
            throw new OpenXML4JException(e.getLocalizedMessage(), e);
        }
    }
}
