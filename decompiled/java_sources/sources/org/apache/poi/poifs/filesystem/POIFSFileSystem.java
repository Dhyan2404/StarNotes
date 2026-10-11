package org.apache.poi.poifs.filesystem;

import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.EmptyFileException;
import org.apache.poi.poifs.common.POIFSBigBlockSize;
import org.apache.poi.poifs.common.POIFSConstants;
import org.apache.poi.poifs.dev.POIFSViewable;
import org.apache.poi.poifs.filesystem.BlockStore;
import org.apache.poi.poifs.nio.ByteArrayBackedDataSource;
import org.apache.poi.poifs.nio.DataSource;
import org.apache.poi.poifs.nio.FileBackedDataSource;
import org.apache.poi.poifs.property.DirectoryProperty;
import org.apache.poi.poifs.property.DocumentProperty;
import org.apache.poi.poifs.property.PropertyTable;
import org.apache.poi.poifs.storage.BATBlock;
import org.apache.poi.poifs.storage.HeaderBlock;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;

/* loaded from: classes12.dex */
public class POIFSFileSystem extends BlockStore implements POIFSViewable, Closeable {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 100000;
    private static final Logger LOG = LogManager.getLogger((Class<?>) POIFSFileSystem.class);
    private static final int MAX_ALLOCATION_SIZE = 250000000;
    private static final int MAX_BLOCK_COUNT = 65535;
    private static int MAX_RECORD_LENGTH = 100000;
    private final List<BATBlock> _bat_blocks;
    protected DataSource _data;
    private HeaderBlock _header;
    private POIFSMiniStore _mini_store;
    private PropertyTable _property_table;
    private DirectoryNode _root;
    private final List<BATBlock> _xbat_blocks;
    private POIFSBigBlockSize bigBlockSize;

    private POIFSFileSystem(boolean z) {
        POIFSBigBlockSize pOIFSBigBlockSize = POIFSConstants.SMALLER_BIG_BLOCK_SIZE_DETAILS;
        this.bigBlockSize = pOIFSBigBlockSize;
        this._header = new HeaderBlock(pOIFSBigBlockSize);
        this._property_table = new PropertyTable(this._header);
        this._mini_store = new POIFSMiniStore(this, this._property_table.getRoot(), new ArrayList(), this._header);
        this._xbat_blocks = new ArrayList();
        this._bat_blocks = new ArrayList();
        this._root = null;
        if (z) {
            createNewDataSource();
        }
    }

    private void closeInputStream(InputStream inputStream, boolean z) {
        try {
            inputStream.close();
        } catch (IOException e) {
            if (z) {
                throw new IllegalStateException(e);
            }
            LOG.atError().withThrowable(e).log("can't close input stream");
        }
    }

    public static POIFSFileSystem create(File file) throws IOException {
        POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                pOIFSFileSystem.writeFilesystem(fileOutputStream);
                fileOutputStream.close();
                pOIFSFileSystem.close();
                return new POIFSFileSystem(file, false);
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    pOIFSFileSystem.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    private BATBlock createBAT(int i, boolean z) throws IOException {
        BATBlock createEmptyBATBlock = BATBlock.createEmptyBATBlock(this.bigBlockSize, !z);
        createEmptyBATBlock.setOurBlockIndex(i);
        this._data.write(ByteBuffer.allocate(this.bigBlockSize.getBigBlockSize()), Math.multiplyExact(i + 1, this.bigBlockSize.getBigBlockSize()));
        return createEmptyBATBlock;
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    public static void main(String[] strArr) throws IOException {
        if (strArr.length != 2) {
            System.err.println("two arguments required: input filename and output filename");
            System.exit(1);
        }
        FileInputStream fileInputStream = new FileInputStream(strArr[0]);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(strArr[1]);
            try {
                POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem(fileInputStream);
                try {
                    pOIFSFileSystem.writeFilesystem(fileOutputStream);
                    pOIFSFileSystem.close();
                    fileOutputStream.close();
                    fileInputStream.close();
                } finally {
                }
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    fileInputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    private void readBAT(int i, BlockStore.ChainLoopDetector chainLoopDetector) throws IOException {
        chainLoopDetector.claim(i);
        BATBlock createBATBlock = BATBlock.createBATBlock(this.bigBlockSize, getBlockAt(i));
        createBATBlock.setOurBlockIndex(i);
        this._bat_blocks.add(createBATBlock);
    }

    private void readCoreContents() throws IOException {
        this.bigBlockSize = this._header.getBigBlockSize();
        BlockStore.ChainLoopDetector chainLoopDetector = getChainLoopDetector();
        for (int i : this._header.getBATArray()) {
            readBAT(i, chainLoopDetector);
        }
        int bATCount = this._header.getBATCount() - this._header.getBATArray().length;
        int xBATIndex = this._header.getXBATIndex();
        for (int i2 = 0; i2 < this._header.getXBATCount(); i2++) {
            chainLoopDetector.claim(xBATIndex);
            BATBlock createBATBlock = BATBlock.createBATBlock(this.bigBlockSize, getBlockAt(xBATIndex));
            createBATBlock.setOurBlockIndex(xBATIndex);
            xBATIndex = createBATBlock.getValueAt(this.bigBlockSize.getXBATEntriesPerBlock());
            this._xbat_blocks.add(createBATBlock);
            int min = Math.min(bATCount, this.bigBlockSize.getXBATEntriesPerBlock());
            for (int i3 = 0; i3 < min; i3++) {
                int valueAt = createBATBlock.getValueAt(i3);
                if (valueAt != -1 && valueAt != -2) {
                    readBAT(valueAt, chainLoopDetector);
                }
                bATCount -= min;
            }
            bATCount -= min;
        }
        this._property_table = new PropertyTable(this._header, this);
        ArrayList arrayList = new ArrayList();
        this._mini_store = new POIFSMiniStore(this, this._property_table.getRoot(), arrayList, this._header);
        int sBATStart = this._header.getSBATStart();
        for (int i4 = 0; i4 < this._header.getSBATCount() && sBATStart != -2; i4++) {
            chainLoopDetector.claim(sBATStart);
            BATBlock createBATBlock2 = BATBlock.createBATBlock(this.bigBlockSize, getBlockAt(sBATStart));
            createBATBlock2.setOurBlockIndex(sBATStart);
            arrayList.add(createBATBlock2);
            sBATStart = getNextBlock(sBATStart);
        }
    }

    private static void sanityCheckBlockCount(int i) throws IOException {
        if (i <= 0) {
            throw new IOException("Illegal block count; minimum count is 1, got " + i + " instead");
        }
        if (i <= 65535) {
            return;
        }
        throw new IOException("Block count " + i + " is too high. POI maximum is 65535.");
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    private void syncWithDataSource() throws IOException {
        this._mini_store.syncWithDataSource();
        POIFSStream pOIFSStream = new POIFSStream(this, this._header.getPropertyStart());
        this._property_table.preWrite();
        this._property_table.write(pOIFSStream);
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream(this._header.getBigBlockSize().getBigBlockSize());
        this._header.writeData(unsynchronizedByteArrayOutputStream);
        getBlockAt(-1).put(unsynchronizedByteArrayOutputStream.toByteArray());
        for (BATBlock bATBlock : this._bat_blocks) {
            bATBlock.writeData(getBlockAt(bATBlock.getOurBlockIndex()));
        }
        for (BATBlock bATBlock2 : this._xbat_blocks) {
            bATBlock2.writeData(getBlockAt(bATBlock2.getOurBlockIndex()));
        }
    }

    public PropertyTable _get_property_table() {
        return this._property_table;
    }

    public void addDirectory(DirectoryProperty directoryProperty) {
        this._property_table.addProperty(directoryProperty);
    }

    public void addDocument(POIFSDocument pOIFSDocument) {
        this._property_table.addProperty(pOIFSDocument.getDocumentProperty());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this._data.close();
    }

    @Override // org.apache.poi.poifs.filesystem.BlockStore
    public ByteBuffer createBlockIfNeeded(int i) throws IOException {
        try {
            return getBlockAt(i);
        } catch (IndexOutOfBoundsException unused) {
            this._data.write(ByteBuffer.allocate(this.getBigBlockSize()), (i + 1) * this.bigBlockSize.getBigBlockSize());
            return this.getBlockAt(i);
        }
    }

    public DirectoryEntry createDirectory(String str) throws IOException {
        return getRoot().createDirectory(str);
    }

    public DocumentEntry createDocument(InputStream inputStream, String str) throws IOException {
        return getRoot().createDocument(str, inputStream);
    }

    public DocumentInputStream createDocumentInputStream(String str) throws IOException {
        return getRoot().createDocumentInputStream(str);
    }

    public void createNewDataSource() {
        this._data = new ByteArrayBackedDataSource(IOUtils.safelyAllocate(Math.multiplyExact(this.bigBlockSize.getBigBlockSize(), 3L), MAX_RECORD_LENGTH));
    }

    public DocumentEntry createOrUpdateDocument(InputStream inputStream, String str) throws IOException {
        return getRoot().createOrUpdateDocument(str, inputStream);
    }

    @Override // org.apache.poi.poifs.filesystem.BlockStore
    public BATBlock.BATBlockAndIndex getBATBlockAndIndex(int i) {
        return BATBlock.getBATBlockAndIndex(i, this._header, this._bat_blocks);
    }

    public int getBigBlockSize() {
        return this.bigBlockSize.getBigBlockSize();
    }

    public POIFSBigBlockSize getBigBlockSizeDetails() {
        return this.bigBlockSize;
    }

    @Override // org.apache.poi.poifs.filesystem.BlockStore
    public ByteBuffer getBlockAt(int i) throws IOException {
        try {
            return this._data.read(this.bigBlockSize.getBigBlockSize(), (i + 1) * this.bigBlockSize.getBigBlockSize());
        } catch (IndexOutOfBoundsException e) {
            IndexOutOfBoundsException indexOutOfBoundsException = new IndexOutOfBoundsException("Block " + i + " not found");
            indexOutOfBoundsException.initCause(e);
            throw indexOutOfBoundsException;
        }
    }

    @Override // org.apache.poi.poifs.filesystem.BlockStore
    public int getBlockStoreBlockSize() {
        return getBigBlockSize();
    }

    @Override // org.apache.poi.poifs.filesystem.BlockStore
    public BlockStore.ChainLoopDetector getChainLoopDetector() throws IOException {
        return new BlockStore.ChainLoopDetector(this._data.size());
    }

    @Override // org.apache.poi.poifs.filesystem.BlockStore
    public int getFreeBlock() throws IOException {
        BATBlock bATBlock;
        int bATEntriesPerBlock = this.bigBlockSize.getBATEntriesPerBlock();
        int i = 0;
        int i2 = 0;
        for (BATBlock bATBlock2 : this._bat_blocks) {
            if (bATBlock2.hasFreeSectors()) {
                for (int i3 = 0; i3 < bATEntriesPerBlock; i3++) {
                    if (bATBlock2.getValueAt(i3) == -1) {
                        return i2 + i3;
                    }
                }
            }
            i2 += bATEntriesPerBlock;
        }
        BATBlock createBAT = createBAT(i2, true);
        createBAT.setValueAt(0, -3);
        this._bat_blocks.add(createBAT);
        if (this._header.getBATCount() >= 109) {
            Iterator<BATBlock> it2 = this._xbat_blocks.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    bATBlock = null;
                    break;
                }
                bATBlock = it2.next();
                if (bATBlock.hasFreeSectors()) {
                    break;
                }
            }
            if (bATBlock == null) {
                int i4 = i2 + 1;
                BATBlock createBAT2 = createBAT(i4, false);
                createBAT2.setValueAt(0, i2);
                createBAT.setValueAt(1, -4);
                if (this._xbat_blocks.isEmpty()) {
                    this._header.setXBATStart(i4);
                } else {
                    List<BATBlock> list = this._xbat_blocks;
                    list.get(list.size() - 1).setValueAt(this.bigBlockSize.getXBATEntriesPerBlock(), i4);
                }
                this._xbat_blocks.add(createBAT2);
                this._header.setXBATCount(this._xbat_blocks.size());
                i2 = i4;
            } else {
                while (true) {
                    if (i >= this.bigBlockSize.getXBATEntriesPerBlock()) {
                        break;
                    }
                    if (bATBlock.getValueAt(i) == -1) {
                        bATBlock.setValueAt(i, i2);
                        break;
                    }
                    i++;
                }
            }
        } else {
            int bATCount = this._header.getBATCount() + 1;
            int[] iArr = new int[bATCount];
            int i5 = bATCount - 1;
            System.arraycopy(this._header.getBATArray(), 0, iArr, 0, i5);
            iArr[i5] = i2;
            this._header.setBATArray(iArr);
        }
        this._header.setBATCount(this._bat_blocks.size());
        return i2 + 1;
    }

    @Internal
    public HeaderBlock getHeaderBlock() {
        return this._header;
    }

    public POIFSMiniStore getMiniStore() {
        return this._mini_store;
    }

    @Override // org.apache.poi.poifs.filesystem.BlockStore
    public int getNextBlock(int i) {
        BATBlock.BATBlockAndIndex bATBlockAndIndex = getBATBlockAndIndex(i);
        return bATBlockAndIndex.getBlock().getValueAt(bATBlockAndIndex.getIndex());
    }

    @Internal
    public PropertyTable getPropertyTable() {
        return this._property_table;
    }

    public DirectoryNode getRoot() {
        if (this._root == null) {
            this._root = new DirectoryNode(this._property_table.getRoot(), this, null);
        }
        return this._root;
    }

    @Override // org.apache.poi.poifs.dev.POIFSViewable
    public String getShortDescription() {
        return "POIFS FileSystem";
    }

    @Override // org.apache.poi.poifs.dev.POIFSViewable
    public Object[] getViewableArray() {
        return preferArray() ? getRoot().getViewableArray() : new Object[0];
    }

    @Override // org.apache.poi.poifs.dev.POIFSViewable
    public Iterator<Object> getViewableIterator() {
        return !preferArray() ? getRoot().getViewableIterator() : Collections.emptyIterator();
    }

    public boolean isInPlaceWriteable() {
        DataSource dataSource = this._data;
        return (dataSource instanceof FileBackedDataSource) && ((FileBackedDataSource) dataSource).isWriteable();
    }

    @Override // org.apache.poi.poifs.dev.POIFSViewable
    public boolean preferArray() {
        return getRoot().preferArray();
    }

    @Override // org.apache.poi.poifs.filesystem.BlockStore
    public void releaseBuffer(ByteBuffer byteBuffer) {
        DataSource dataSource = this._data;
        if (dataSource instanceof FileBackedDataSource) {
            ((FileBackedDataSource) dataSource).releaseBuffer(byteBuffer);
        }
    }

    public void remove(EntryNode entryNode) throws IOException {
        if (entryNode instanceof DocumentEntry) {
            new POIFSDocument((DocumentProperty) entryNode.getProperty(), this).free();
        }
        this._property_table.removeProperty(entryNode.getProperty());
    }

    @Override // org.apache.poi.poifs.filesystem.BlockStore
    public void setNextBlock(int i, int i2) {
        BATBlock.BATBlockAndIndex bATBlockAndIndex = getBATBlockAndIndex(i);
        bATBlockAndIndex.getBlock().setValueAt(bATBlockAndIndex.getIndex(), i2);
    }

    public long size() throws IOException {
        return this._data.size();
    }

    public void writeFilesystem() throws IOException {
        DataSource dataSource = this._data;
        if (dataSource instanceof FileBackedDataSource) {
            if (((FileBackedDataSource) dataSource).isWriteable()) {
                syncWithDataSource();
                return;
            }
            throw new IllegalArgumentException("POIFS opened in read only mode, so writeFilesystem() may not be called. Open the FileSystem in read-write mode first");
        }
        throw new IllegalArgumentException("POIFS opened from an inputstream, so writeFilesystem() may not be called. Use writeFilesystem(OutputStream) instead");
    }

    public DocumentEntry createDocument(String str, int i, POIFSWriterListener pOIFSWriterListener) throws IOException {
        return getRoot().createDocument(str, i, pOIFSWriterListener);
    }

    public void writeFilesystem(OutputStream outputStream) throws IOException {
        syncWithDataSource();
        this._data.copyTo(outputStream);
    }

    public POIFSFileSystem() {
        this(true);
        this._header.setBATCount(1);
        this._header.setBATArray(new int[]{1});
        BATBlock createEmptyBATBlock = BATBlock.createEmptyBATBlock(this.bigBlockSize, false);
        createEmptyBATBlock.setOurBlockIndex(1);
        this._bat_blocks.add(createEmptyBATBlock);
        setNextBlock(0, -2);
        setNextBlock(1, -3);
        this._property_table.setStartBlock(0);
    }

    public POIFSFileSystem(File file) throws IOException {
        this(file, true);
    }

    public POIFSFileSystem(File file, boolean z) throws IOException {
        this(null, file, z, true, true);
    }

    public POIFSFileSystem(FileChannel fileChannel) throws IOException {
        this(fileChannel, true);
    }

    public POIFSFileSystem(FileChannel fileChannel, boolean z) throws IOException {
        this(fileChannel, null, z, false, true);
    }

    public POIFSFileSystem(FileChannel fileChannel, boolean z, boolean z2) throws IOException {
        this(fileChannel, null, z, z2, z2);
    }

    private POIFSFileSystem(FileChannel fileChannel, File file, boolean z, boolean z2, boolean z3) throws IOException {
        this(false);
        try {
            if (file == null) {
                this._data = new FileBackedDataSource(fileChannel, z, z3);
            } else if (file.length() != 0) {
                FileBackedDataSource fileBackedDataSource = new FileBackedDataSource(file, z);
                fileChannel = fileBackedDataSource.getChannel();
                this._data = fileBackedDataSource;
            } else {
                throw new EmptyFileException(file);
            }
            ByteBuffer allocate = ByteBuffer.allocate(512);
            IOUtils.readFully(fileChannel, allocate);
            this._header = new HeaderBlock(allocate);
            readCoreContents();
        } catch (IOException | RuntimeException e) {
            if (z2 && fileChannel != null) {
                fileChannel.close();
            }
            throw e;
        }
    }

    public POIFSFileSystem(InputStream inputStream) throws IOException {
        this(false);
        try {
            ReadableByteChannel newChannel = Channels.newChannel(inputStream);
            try {
                ByteBuffer allocate = ByteBuffer.allocate(512);
                IOUtils.readFully(newChannel, allocate);
                HeaderBlock headerBlock = new HeaderBlock(allocate);
                this._header = headerBlock;
                sanityCheckBlockCount(headerBlock.getBATCount());
                long calculateMaximumSize = BATBlock.calculateMaximumSize(this._header);
                if (calculateMaximumSize <= 2147483647L) {
                    IOUtils.safelyAllocateCheck(calculateMaximumSize, MAX_ALLOCATION_SIZE);
                    ByteBuffer allocate2 = ByteBuffer.allocate((int) calculateMaximumSize);
                    allocate.position(0);
                    allocate2.put(allocate);
                    allocate2.position(allocate.capacity());
                    IOUtils.readFully(newChannel, allocate2);
                    this._data = new ByteArrayBackedDataSource(allocate2.array(), allocate2.position());
                    if (newChannel != null) {
                        newChannel.close();
                    }
                    closeInputStream(inputStream, true);
                    readCoreContents();
                    return;
                }
                throw new IllegalArgumentException("Unable read a >2gb file via an InputStream");
            } finally {
            }
        } catch (Throwable th) {
            closeInputStream(inputStream, false);
            throw th;
        }
    }
}
