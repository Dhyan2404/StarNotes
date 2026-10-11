package org.apache.poi.poifs.nio;

import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.WritableByteChannel;
import java.util.IdentityHashMap;
import java.util.function.BiConsumer;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.poifs.nio.FileBackedDataSource;
import org.apache.poi.util.IOUtils;

/* loaded from: classes12.dex */
public class FileBackedDataSource extends DataSource implements Closeable {
    private static final Logger LOG = LogManager.getLogger((Class<?>) FileBackedDataSource.class);
    private final IdentityHashMap<ByteBuffer, ByteBuffer> buffersToClean;
    private final FileChannel channel;
    private Long channelSize;
    private final boolean closeChannelOnClose;
    private final RandomAccessFile srcFile;
    private final boolean writable;

    public FileBackedDataSource(File file) throws FileNotFoundException {
        this(newSrcFile(file, "r"), true);
    }

    private static RandomAccessFile newSrcFile(File file, String str) throws FileNotFoundException {
        if (file.exists()) {
            return new RandomAccessFile(file, str);
        }
        throw new FileNotFoundException(file.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void unmap(ByteBuffer byteBuffer) {
        if (byteBuffer.getClass().getName().endsWith("HeapByteBuffer")) {
            return;
        }
        if (!CleanerUtil.UNMAP_SUPPORTED) {
            LOG.atDebug().log(CleanerUtil.UNMAP_NOT_SUPPORTED_REASON);
            return;
        }
        try {
            CleanerUtil.getCleaner().freeBuffer(byteBuffer);
        } catch (IOException e) {
            LOG.atWarn().withThrowable(e).log("Failed to unmap the buffer");
        }
    }

    @Override // org.apache.poi.poifs.nio.DataSource
    public void close() throws IOException {
        this.buffersToClean.forEach(new BiConsumer() { // from class: com.sunia.HTREnginev2.qgg
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                FileBackedDataSource.unmap((ByteBuffer) obj2);
            }
        });
        this.buffersToClean.clear();
        RandomAccessFile randomAccessFile = this.srcFile;
        if (randomAccessFile != null) {
            randomAccessFile.close();
        } else if (this.closeChannelOnClose) {
            this.channel.close();
        }
    }

    @Override // org.apache.poi.poifs.nio.DataSource
    public void copyTo(OutputStream outputStream) throws IOException {
        WritableByteChannel newChannel = Channels.newChannel(outputStream);
        try {
            FileChannel fileChannel = this.channel;
            fileChannel.transferTo(0L, fileChannel.size(), newChannel);
            if (newChannel != null) {
                newChannel.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newChannel != null) {
                    try {
                        newChannel.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public FileChannel getChannel() {
        return this.channel;
    }

    public boolean isWriteable() {
        return this.writable;
    }

    @Override // org.apache.poi.poifs.nio.DataSource
    public ByteBuffer read(int i, long j) throws IOException {
        ByteBuffer allocate;
        if (j >= size()) {
            throw new IndexOutOfBoundsException("Position " + j + " past the end of the file");
        }
        if (this.writable) {
            allocate = this.channel.map(FileChannel.MapMode.READ_WRITE, j, i);
            this.buffersToClean.put(allocate, allocate);
        } else {
            this.channel.position(j);
            allocate = ByteBuffer.allocate(i);
            if (IOUtils.readFully(this.channel, allocate) == -1) {
                throw new IndexOutOfBoundsException("Position " + j + " past the end of the file");
            }
        }
        allocate.position(0);
        return allocate;
    }

    public void releaseBuffer(ByteBuffer byteBuffer) {
        ByteBuffer remove = this.buffersToClean.remove(byteBuffer);
        if (remove != null) {
            unmap(remove);
        }
    }

    @Override // org.apache.poi.poifs.nio.DataSource
    public long size() throws IOException {
        if (this.channelSize == null) {
            this.channelSize = Long.valueOf(this.channel.size());
        }
        return this.channelSize.longValue();
    }

    @Override // org.apache.poi.poifs.nio.DataSource
    public void write(ByteBuffer byteBuffer, long j) throws IOException {
        this.channel.write(byteBuffer, j);
        Long l = this.channelSize;
        if (l == null || j < l.longValue()) {
            return;
        }
        this.channelSize = null;
    }

    public FileBackedDataSource(File file, boolean z) throws FileNotFoundException {
        this(newSrcFile(file, z ? "r" : "rw"), z);
    }

    public FileBackedDataSource(RandomAccessFile randomAccessFile, boolean z) {
        this(randomAccessFile, randomAccessFile.getChannel(), z, false);
    }

    public FileBackedDataSource(FileChannel fileChannel, boolean z) {
        this(fileChannel, z, true);
    }

    public FileBackedDataSource(FileChannel fileChannel, boolean z, boolean z2) {
        this(null, fileChannel, z, z2);
    }

    private FileBackedDataSource(RandomAccessFile randomAccessFile, FileChannel fileChannel, boolean z, boolean z2) {
        this.buffersToClean = new IdentityHashMap<>();
        this.srcFile = randomAccessFile;
        this.channel = fileChannel;
        this.writable = !z;
        this.closeChannelOnClose = z2;
    }
}
