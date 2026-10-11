package org.apache.poi.poifs.filesystem;

import java.io.IOException;
import java.nio.ByteBuffer;
import org.apache.poi.poifs.storage.BATBlock;

/* loaded from: classes12.dex */
public abstract class BlockStore {

    /* loaded from: classes12.dex */
    public class ChainLoopDetector {
        private final boolean[] used_blocks;

        public ChainLoopDetector(long j) {
            if (j >= 0) {
                long blockStoreBlockSize = BlockStore.this.getBlockStoreBlockSize();
                int i = (int) (j / blockStoreBlockSize);
                this.used_blocks = new boolean[j % blockStoreBlockSize != 0 ? i + 1 : i];
            } else {
                throw new IllegalArgumentException("Cannot create a ChainLoopDetector with negative size, but had: " + j);
            }
        }

        public void claim(int i) {
            boolean[] zArr = this.used_blocks;
            if (i >= zArr.length) {
                return;
            }
            if (!zArr[i]) {
                zArr[i] = true;
                return;
            }
            throw new IllegalStateException("Potential loop detected - Block " + i + " was already claimed but was just requested again");
        }
    }

    public abstract ByteBuffer createBlockIfNeeded(int i) throws IOException;

    public abstract BATBlock.BATBlockAndIndex getBATBlockAndIndex(int i);

    public abstract ByteBuffer getBlockAt(int i) throws IOException;

    public abstract int getBlockStoreBlockSize();

    public abstract ChainLoopDetector getChainLoopDetector() throws IOException;

    public abstract int getFreeBlock() throws IOException;

    public abstract int getNextBlock(int i);

    public abstract void releaseBuffer(ByteBuffer byteBuffer);

    public abstract void setNextBlock(int i, int i2);
}
