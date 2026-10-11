package org.apache.poi.poifs.storage;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.List;
import org.apache.poi.poifs.common.POIFSBigBlockSize;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class BATBlock implements BlockWritable {
    private boolean _has_free_sectors;
    private int[] _values;
    private POIFSBigBlockSize bigBlockSize;
    private int ourBlockIndex;

    /* loaded from: classes12.dex */
    public static final class BATBlockAndIndex {
        private final BATBlock block;
        private final int index;

        public BATBlock getBlock() {
            return this.block;
        }

        public int getIndex() {
            return this.index;
        }

        private BATBlockAndIndex(int i, BATBlock bATBlock) {
            this.index = i;
            this.block = bATBlock;
        }
    }

    private BATBlock(POIFSBigBlockSize pOIFSBigBlockSize) {
        this.bigBlockSize = pOIFSBigBlockSize;
        int[] iArr = new int[pOIFSBigBlockSize.getBATEntriesPerBlock()];
        this._values = iArr;
        this._has_free_sectors = true;
        Arrays.fill(iArr, -1);
    }

    public static long calculateMaximumSize(POIFSBigBlockSize pOIFSBigBlockSize, int i) {
        return ((i * pOIFSBigBlockSize.getBATEntriesPerBlock()) + 1) * pOIFSBigBlockSize.getBigBlockSize();
    }

    public static BATBlock createBATBlock(POIFSBigBlockSize pOIFSBigBlockSize, ByteBuffer byteBuffer) {
        BATBlock bATBlock = new BATBlock(pOIFSBigBlockSize);
        byte[] bArr = new byte[4];
        for (int i = 0; i < bATBlock._values.length; i++) {
            byteBuffer.get(bArr);
            bATBlock._values[i] = LittleEndian.getInt(bArr);
        }
        bATBlock.recomputeFree();
        return bATBlock;
    }

    public static BATBlock createEmptyBATBlock(POIFSBigBlockSize pOIFSBigBlockSize, boolean z) {
        BATBlock bATBlock = new BATBlock(pOIFSBigBlockSize);
        if (z) {
            bATBlock._values[pOIFSBigBlockSize.getXBATEntriesPerBlock()] = -2;
        }
        return bATBlock;
    }

    public static BATBlockAndIndex getBATBlockAndIndex(int i, HeaderBlock headerBlock, List<BATBlock> list) {
        int bATEntriesPerBlock = headerBlock.getBigBlockSize().getBATEntriesPerBlock();
        return new BATBlockAndIndex(i % bATEntriesPerBlock, list.get(i / bATEntriesPerBlock));
    }

    public static BATBlockAndIndex getSBATBlockAndIndex(int i, HeaderBlock headerBlock, List<BATBlock> list) {
        return getBATBlockAndIndex(i, headerBlock, list);
    }

    private void recomputeFree() {
        int[] iArr = this._values;
        int length = iArr.length;
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            if (iArr[i] == -1) {
                z = true;
                break;
            }
            i++;
        }
        this._has_free_sectors = z;
    }

    private byte[] serialize() {
        byte[] bArr = new byte[this.bigBlockSize.getBigBlockSize()];
        int i = 0;
        for (int i2 : this._values) {
            LittleEndian.putInt(bArr, i, i2);
            i += 4;
        }
        return bArr;
    }

    public int getOccupiedSize() {
        int[] iArr = this._values;
        int length = iArr.length;
        for (int length2 = iArr.length - 1; length2 >= 0 && this._values[length2] == -1; length2--) {
            length--;
        }
        return length;
    }

    public int getOurBlockIndex() {
        return this.ourBlockIndex;
    }

    public int getUsedSectors(boolean z) {
        int length = this._values.length;
        if (z) {
            length--;
        }
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            if (this._values[i2] != -1) {
                i++;
            }
        }
        return i;
    }

    public int getValueAt(int i) {
        int[] iArr = this._values;
        if (i < iArr.length) {
            return iArr[i];
        }
        throw new ArrayIndexOutOfBoundsException("Unable to fetch offset " + i + " as the BAT only contains " + this._values.length + " entries");
    }

    public boolean hasFreeSectors() {
        return this._has_free_sectors;
    }

    public void setOurBlockIndex(int i) {
        this.ourBlockIndex = i;
    }

    public void setValueAt(int i, int i2) {
        int[] iArr = this._values;
        int i3 = iArr[i];
        iArr[i] = i2;
        if (i2 == -1) {
            this._has_free_sectors = true;
        } else if (i3 == -1) {
            recomputeFree();
        }
    }

    @Override // org.apache.poi.poifs.storage.BlockWritable
    public void writeBlocks(OutputStream outputStream) throws IOException {
        outputStream.write(serialize());
    }

    public void writeData(ByteBuffer byteBuffer) {
        byteBuffer.put(serialize());
    }

    public static long calculateMaximumSize(HeaderBlock headerBlock) {
        return calculateMaximumSize(headerBlock.getBigBlockSize(), headerBlock.getBATCount());
    }
}
