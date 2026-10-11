package com.twelvemonkeys.io;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.Arrays;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.commons.text.AlphabetConverter;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class Win32Lnk extends File {
    private static final int FLAG_ADDITIONAL_INFO = 128;
    private static final int FLAG_COMMAND_LINE_ARGS = 32;
    private static final int FLAG_DESC_STRING = 4;
    private static final int FLAG_FILE_LOC_INFO = 2;
    private static final int FLAG_ICON_FILENAME = 64;
    private static final int FLAG_ITEM_ID_LIST = 1;
    private static final int FLAG_REL_PATH_STRING = 8;
    private static final int FLAG_WORKING_DIRECTORY = 16;
    private final File target;
    private static final byte[] LNK_MAGIC = {TarConstants.LF_GNUTYPE_LONGNAME, 0, 0, 0};
    private static final byte[] LNK_GUID = {1, 20, 2, 0, 0, 0, 0, 0, -64, 0, 0, 0, 0, 0, 0, 70};

    private Win32Lnk(String str) throws IOException {
        super(str);
        File parse = parse(this);
        this.target = parse == this ? new File(str) : parse;
    }

    public static File parse(File file) throws IOException {
        File file2;
        if (!file.getName().endsWith(".lnk")) {
            return file;
        }
        LittleEndianDataInputStream littleEndianDataInputStream = new LittleEndianDataInputStream(new BufferedInputStream(new FileInputStream(file)));
        try {
            byte[] bArr = new byte[4];
            littleEndianDataInputStream.readFully(bArr);
            byte[] bArr2 = new byte[16];
            littleEndianDataInputStream.readFully(bArr2);
            if (Arrays.equals(LNK_MAGIC, bArr) && Arrays.equals(LNK_GUID, bArr2)) {
                int readInt = littleEndianDataInputStream.readInt();
                littleEndianDataInputStream.readInt();
                littleEndianDataInputStream.skipBytes(48);
                if ((readInt & 1) != 0) {
                    littleEndianDataInputStream.skipBytes(littleEndianDataInputStream.readShort());
                }
                if ((readInt & 2) != 0) {
                    int readInt2 = littleEndianDataInputStream.readInt();
                    littleEndianDataInputStream.readInt();
                    littleEndianDataInputStream.readInt();
                    littleEndianDataInputStream.skipBytes(4);
                    int readInt3 = littleEndianDataInputStream.readInt();
                    littleEndianDataInputStream.skipBytes(readInt3 - 20);
                    int i = (readInt2 - readInt3) - 1;
                    byte[] bArr3 = new byte[i];
                    littleEndianDataInputStream.readFully(bArr3, 0, i);
                    try {
                        file2 = parse(new File(new String(bArr3, 0, i - 1)));
                    } catch (StackOverflowError e) {
                        throw new IOException("Cannot resolve cyclic link: " + e.getMessage());
                    }
                } else {
                    file2 = file;
                }
                if ((readInt & 4) != 0) {
                    int readShort = littleEndianDataInputStream.readShort();
                    littleEndianDataInputStream.readFully(new byte[readShort], 0, readShort);
                }
                if ((readInt & 8) != 0) {
                    int readShort2 = littleEndianDataInputStream.readShort();
                    byte[] bArr4 = new byte[readShort2];
                    littleEndianDataInputStream.readFully(bArr4, 0, readShort2);
                    String str = new String(bArr4, 0, readShort2);
                    if (file2 == file) {
                        try {
                            file2 = parse(new File(file.getParentFile(), str));
                        } catch (StackOverflowError e2) {
                            throw new IOException("Cannot resolve cyclic link: " + e2.getMessage());
                        }
                    }
                }
                if ((readInt & 32) == 0) {
                    file = file2;
                }
                return file;
            }
            return file;
        } finally {
            littleEndianDataInputStream.close();
        }
    }

    @Override // java.io.File
    public boolean canRead() {
        return this.target.canRead();
    }

    @Override // java.io.File
    public boolean canWrite() {
        return this.target.canWrite();
    }

    @Override // java.io.File
    public boolean exists() {
        return this.target.exists();
    }

    @Override // java.io.File
    public File getCanonicalFile() throws IOException {
        return this.target.getCanonicalFile();
    }

    @Override // java.io.File
    public String getCanonicalPath() throws IOException {
        return this.target.getCanonicalPath();
    }

    public File getTarget() {
        return this.target;
    }

    @Override // java.io.File
    public boolean isDirectory() {
        return this.target.isDirectory();
    }

    @Override // java.io.File
    public boolean isFile() {
        return this.target.isFile();
    }

    @Override // java.io.File
    public boolean isHidden() {
        return this.target.isHidden();
    }

    @Override // java.io.File
    public long lastModified() {
        return this.target.lastModified();
    }

    @Override // java.io.File
    public long length() {
        return this.target.length();
    }

    @Override // java.io.File
    public String[] list() {
        return this.target.list();
    }

    @Override // java.io.File
    public File[] listFiles() {
        return Win32File.wrap(this.target.listFiles());
    }

    @Override // java.io.File
    public boolean setLastModified(long j) {
        return this.target.setLastModified(j);
    }

    @Override // java.io.File
    public boolean setReadOnly() {
        return this.target.setReadOnly();
    }

    @Override // java.io.File
    public String toString() {
        if (this.target.equals(this)) {
            return super.toString();
        }
        return super.toString() + AlphabetConverter.f109940d + this.target.toString();
    }

    @Override // java.io.File
    public String[] list(FilenameFilter filenameFilter) {
        return this.target.list(filenameFilter);
    }

    @Override // java.io.File
    public File[] listFiles(FileFilter fileFilter) {
        return Win32File.wrap(this.target.listFiles(fileFilter));
    }

    @Override // java.io.File
    public File[] listFiles(FilenameFilter filenameFilter) {
        return Win32File.wrap(this.target.listFiles(filenameFilter));
    }

    public Win32Lnk(File file) throws IOException {
        this(file.getPath());
    }
}
