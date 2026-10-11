package net.lingala.zip4j.util;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.io.inputstream.NumberedSplitFileInputStream;
import net.lingala.zip4j.io.inputstream.SplitFileInputStream;
import net.lingala.zip4j.io.inputstream.ZipInputStream;
import net.lingala.zip4j.io.inputstream.ZipStandardSplitFileInputStream;
import net.lingala.zip4j.model.FileHeader;
import net.lingala.zip4j.model.ZipModel;

/* loaded from: classes11.dex */
public class UnzipUtil {
    public static void applyFileAttributes(FileHeader fileHeader, File file) {
        try {
            Path path = file.toPath();
            FileUtils.setFileAttributes(path, fileHeader.getExternalFileAttributes());
            FileUtils.setFileLastModifiedTime(path, fileHeader.getLastModifiedTime());
        } catch (NoSuchMethodError unused) {
            FileUtils.setFileLastModifiedTimeWithoutNio(file, fileHeader.getLastModifiedTime());
        }
    }

    public static SplitFileInputStream createSplitInputStream(ZipModel zipModel) throws IOException {
        return zipModel.getZipFile().getName().endsWith(InternalZipConstants.SEVEN_ZIP_SPLIT_FILE_EXTENSION_PATTERN) ? new NumberedSplitFileInputStream(zipModel.getZipFile()) : new ZipStandardSplitFileInputStream(zipModel.getZipFile(), zipModel.isSplitArchive(), zipModel.getEndOfCentralDirectoryRecord().getNumberOfThisDisk());
    }

    public static ZipInputStream createZipInputStream(ZipModel zipModel, FileHeader fileHeader, char[] cArr) throws IOException {
        SplitFileInputStream splitFileInputStream;
        try {
            splitFileInputStream = createSplitInputStream(zipModel);
        } catch (IOException e) {
            e = e;
            splitFileInputStream = null;
        }
        try {
            splitFileInputStream.prepareExtractionForFileHeader(fileHeader);
            ZipInputStream zipInputStream = new ZipInputStream(splitFileInputStream, cArr);
            if (zipInputStream.getNextEntry(fileHeader, false) != null) {
                return zipInputStream;
            }
            throw new ZipException("Could not locate local file header for corresponding file header");
        } catch (IOException e2) {
            e = e2;
            if (splitFileInputStream != null) {
                splitFileInputStream.close();
            }
            throw e;
        }
    }
}
