package net.lingala.zip4j.tasks;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.headers.HeaderUtil;
import net.lingala.zip4j.headers.HeaderWriter;
import net.lingala.zip4j.io.outputstream.SplitOutputStream;
import net.lingala.zip4j.model.EndOfCentralDirectoryRecord;
import net.lingala.zip4j.model.FileHeader;
import net.lingala.zip4j.model.Zip4jConfig;
import net.lingala.zip4j.model.ZipModel;
import net.lingala.zip4j.model.enums.RandomAccessFileMode;
import net.lingala.zip4j.progress.ProgressMonitor;
import net.lingala.zip4j.tasks.AsyncZipTask;

/* loaded from: classes11.dex */
public class RemoveFilesFromZipTask extends AbstractModifyFileTask<RemoveFilesFromZipTaskParameters> {
    private final HeaderWriter headerWriter;
    private final ZipModel zipModel;

    /* loaded from: classes11.dex */
    public static class RemoveFilesFromZipTaskParameters extends AbstractZipTaskParameters {
        private final List<String> filesToRemove;

        public RemoveFilesFromZipTaskParameters(List<String> list, Zip4jConfig zip4jConfig) {
            super(zip4jConfig);
            this.filesToRemove = list;
        }
    }

    public RemoveFilesFromZipTask(ZipModel zipModel, HeaderWriter headerWriter, AsyncZipTask.AsyncTaskParameters asyncTaskParameters) {
        super(asyncTaskParameters);
        this.zipModel = zipModel;
        this.headerWriter = headerWriter;
    }

    private List<String> filterNonExistingEntries(List<String> list) throws ZipException {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (HeaderUtil.getFileHeader(this.zipModel, str) != null) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    private long negate(long j) {
        if (j != Long.MIN_VALUE) {
            return -j;
        }
        throw new ArithmeticException("long overflow");
    }

    private boolean shouldEntryBeRemoved(FileHeader fileHeader, List<String> list) {
        for (String str : list) {
            if ((str.endsWith("/") && fileHeader.getFileName().startsWith(str)) || fileHeader.getFileName().equals(str)) {
                return true;
            }
        }
        return false;
    }

    private void updateHeaders(List<FileHeader> list, FileHeader fileHeader, long j) throws ZipException {
        updateOffsetsForAllSubsequentFileHeaders(list, this.zipModel, fileHeader, negate(j));
        EndOfCentralDirectoryRecord endOfCentralDirectoryRecord = this.zipModel.getEndOfCentralDirectoryRecord();
        endOfCentralDirectoryRecord.setOffsetOfStartOfCentralDirectory(endOfCentralDirectoryRecord.getOffsetOfStartOfCentralDirectory() - j);
        endOfCentralDirectoryRecord.setTotalNumberOfEntriesInCentralDirectory(endOfCentralDirectoryRecord.getTotalNumberOfEntriesInCentralDirectory() - 1);
        if (endOfCentralDirectoryRecord.getTotalNumberOfEntriesInCentralDirectoryOnThisDisk() > 0) {
            endOfCentralDirectoryRecord.setTotalNumberOfEntriesInCentralDirectoryOnThisDisk(endOfCentralDirectoryRecord.getTotalNumberOfEntriesInCentralDirectoryOnThisDisk() - 1);
        }
        if (this.zipModel.isZip64Format()) {
            this.zipModel.getZip64EndOfCentralDirectoryRecord().setOffsetStartCentralDirectoryWRTStartDiskNumber(this.zipModel.getZip64EndOfCentralDirectoryRecord().getOffsetStartCentralDirectoryWRTStartDiskNumber() - j);
            this.zipModel.getZip64EndOfCentralDirectoryRecord().setTotalNumberOfEntriesInCentralDirectoryOnThisDisk(this.zipModel.getZip64EndOfCentralDirectoryRecord().getTotalNumberOfEntriesInCentralDirectory() - 1);
            this.zipModel.getZip64EndOfCentralDirectoryLocator().setOffsetZip64EndOfCentralDirectoryRecord(this.zipModel.getZip64EndOfCentralDirectoryLocator().getOffsetZip64EndOfCentralDirectoryRecord() - j);
        }
    }

    @Override // net.lingala.zip4j.tasks.AsyncZipTask
    public ProgressMonitor.Task getTask() {
        return ProgressMonitor.Task.REMOVE_ENTRY;
    }

    @Override // net.lingala.zip4j.tasks.AsyncZipTask
    public long calculateTotalWork(RemoveFilesFromZipTaskParameters removeFilesFromZipTaskParameters) {
        return this.zipModel.getZipFile().length();
    }

    @Override // net.lingala.zip4j.tasks.AsyncZipTask
    public void executeTask(RemoveFilesFromZipTaskParameters removeFilesFromZipTaskParameters, ProgressMonitor progressMonitor) throws IOException {
        List<FileHeader> list;
        if (!this.zipModel.isSplitArchive()) {
            List<String> filterNonExistingEntries = filterNonExistingEntries(removeFilesFromZipTaskParameters.filesToRemove);
            if (filterNonExistingEntries.isEmpty()) {
                return;
            }
            File temporaryFile = getTemporaryFile(this.zipModel.getZipFile().getPath());
            try {
                SplitOutputStream splitOutputStream = new SplitOutputStream(temporaryFile);
                try {
                    RandomAccessFile randomAccessFile = new RandomAccessFile(this.zipModel.getZipFile(), RandomAccessFileMode.READ.getValue());
                    try {
                        List<FileHeader> cloneAndSortFileHeadersByOffset = cloneAndSortFileHeadersByOffset(this.zipModel.getCentralDirectory().getFileHeaders());
                        long j = 0;
                        for (FileHeader fileHeader : cloneAndSortFileHeadersByOffset) {
                            long offsetOfNextEntry = getOffsetOfNextEntry(cloneAndSortFileHeadersByOffset, fileHeader, this.zipModel) - splitOutputStream.getFilePointer();
                            if (shouldEntryBeRemoved(fileHeader, filterNonExistingEntries)) {
                                updateHeaders(cloneAndSortFileHeadersByOffset, fileHeader, offsetOfNextEntry);
                                if (!this.zipModel.getCentralDirectory().getFileHeaders().remove(fileHeader)) {
                                    throw new ZipException("Could not remove entry from list of central directory headers");
                                }
                                j += offsetOfNextEntry;
                                list = cloneAndSortFileHeadersByOffset;
                            } else {
                                list = cloneAndSortFileHeadersByOffset;
                                j += super.copyFile(randomAccessFile, splitOutputStream, j, offsetOfNextEntry, progressMonitor, removeFilesFromZipTaskParameters.zip4jConfig.getBufferSize());
                            }
                            verifyIfTaskIsCancelled();
                            cloneAndSortFileHeadersByOffset = list;
                        }
                        this.headerWriter.finalizeZipFile(this.zipModel, splitOutputStream, removeFilesFromZipTaskParameters.zip4jConfig.getCharset());
                        randomAccessFile.close();
                        splitOutputStream.close();
                        cleanupFile(true, this.zipModel.getZipFile(), temporaryFile);
                    } finally {
                    }
                } finally {
                }
            } catch (Throwable th) {
                cleanupFile(false, this.zipModel.getZipFile(), temporaryFile);
                throw th;
            }
        } else {
            throw new ZipException("This is a split archive. Zip file format does not allow updating split/spanned files");
        }
    }
}
