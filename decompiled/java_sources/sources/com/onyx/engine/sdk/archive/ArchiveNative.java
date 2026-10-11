package com.onyx.engine.sdk.archive;

import com.onyx.engine.sdk.BatchParameter;
import com.onyx.engine.sdk.archive.ArchiveNative;
import java.util.function.Function;

/* loaded from: classes8.dex */
public class ArchiveNative {
    private long handle;

    static {
        System.loadLibrary("engine_sdk");
    }

    private void loaAllFileHeaderList(FileHeaderList fileHeaderList, Function<BatchParameter, FileHeaderList> function) {
        FileHeaderList apply;
        BatchParameter batchParameter = new BatchParameter();
        do {
            apply = function.apply(batchParameter);
            fileHeaderList.setTotal(apply.getTotal());
            fileHeaderList.addAll(apply);
            batchParameter.start = fileHeaderList.size();
            if (fileHeaderList.size() >= apply.getTotal()) {
                return;
            }
        } while (apply.size() >= batchParameter.limit);
    }

    private native void nativeClose(long j);

    private native boolean nativeExtract(long j, String str);

    private native byte[] nativeExtractEntryData(long j, String str);

    private native int nativeGetArchiveFormatCode(long j);

    private native String nativeGetDirHeaderList(long j, String str);

    private native String nativeGetFileHeaderList(long j, String str);

    private native long nativeInitArchive(String str);

    private native boolean nativeIsEncrypted(long j);

    private native boolean nativeLoadAllEntries(long j);

    private native void nativeSetPassword(long j, String str);

    private static native boolean nativeStaticExtract(String str);

    public void close() {
        long j = this.handle;
        if (j != 0) {
            nativeClose(j);
            this.handle = 0L;
        }
    }

    public boolean extract(String str) {
        return nativeExtract(this.handle, str);
    }

    public byte[] extractEntryData(String str) {
        return nativeExtractEntryData(this.handle, str);
    }

    public int getArchiveFormatCode() {
        return nativeGetArchiveFormatCode(this.handle);
    }

    public FileHeaderList getDirHeaderList() {
        FileHeaderList fileHeaderList = new FileHeaderList();
        loaAllFileHeaderList(fileHeaderList, new Function() { // from class: com.sunia.HTREnginev2.pd
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ArchiveNative.this.getDirHeaderList((BatchParameter) obj);
            }
        });
        return fileHeaderList;
    }

    public FileHeaderList getFileHeaderList() {
        FileHeaderList fileHeaderList = new FileHeaderList();
        loaAllFileHeaderList(fileHeaderList, new Function() { // from class: com.sunia.HTREnginev2.qd
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ArchiveNative.this.getFileHeaderList((BatchParameter) obj);
            }
        });
        return fileHeaderList;
    }

    public boolean initArchive(String str) {
        return initArchive(new ArchiveParameter(str));
    }

    public boolean isEncrypted() {
        return nativeIsEncrypted(this.handle);
    }

    public boolean loadAllEntries() {
        if (nativeLoadAllEntries(this.handle)) {
            return true;
        }
        close();
        return false;
    }

    public void setPassword(String str) {
        nativeSetPassword(this.handle, str);
    }

    public static boolean extract(String str, String str2, String str3) {
        return extract(new ArchiveParameter(str, str2, str3));
    }

    public boolean initArchive(String str, String str2) {
        return initArchive(new ArchiveParameter(str, str2));
    }

    public FileHeaderList getDirHeaderList(BatchParameter batchParameter) {
        return FileHeaderList.fromJson(nativeGetDirHeaderList(this.handle, batchParameter.toJson()));
    }

    public FileHeaderList getFileHeaderList(BatchParameter batchParameter) {
        return FileHeaderList.fromJson(nativeGetFileHeaderList(this.handle, batchParameter.toJson()));
    }

    public boolean initArchive(ArchiveParameter archiveParameter) {
        long nativeInitArchive = nativeInitArchive(archiveParameter.toJson());
        this.handle = nativeInitArchive;
        return nativeInitArchive != 0;
    }

    public static boolean extract(ArchiveParameter archiveParameter) {
        return nativeStaticExtract(archiveParameter.toJson());
    }
}
