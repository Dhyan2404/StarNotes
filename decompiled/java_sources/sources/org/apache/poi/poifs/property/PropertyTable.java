package org.apache.poi.poifs.property;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.poifs.common.POIFSBigBlockSize;
import org.apache.poi.poifs.filesystem.BATManaged;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.poifs.filesystem.POIFSStream;
import org.apache.poi.poifs.storage.HeaderBlock;
import org.apache.poi.util.IOUtils;

/* loaded from: classes12.dex */
public final class PropertyTable implements BATManaged {
    private static final Logger LOG = LogManager.getLogger((Class<?>) PropertyTable.class);
    private final POIFSBigBlockSize _bigBigBlockSize;
    private final HeaderBlock _header_block;
    private final List<Property> _properties;

    public PropertyTable(HeaderBlock headerBlock) {
        this._properties = new ArrayList();
        this._header_block = headerBlock;
        this._bigBigBlockSize = headerBlock.getBigBlockSize();
        addProperty(new RootProperty());
    }

    private boolean isValidIndex(int i) {
        if (!Property.isValidIndex(i)) {
            return false;
        }
        if (i >= 0 && i < this._properties.size()) {
            return true;
        }
        LOG.atWarn().log("Property index {} outside the valid range 0..{}", Unbox.box(i), Unbox.box(this._properties.size()));
        return false;
    }

    private void populatePropertyTree(DirectoryProperty directoryProperty) throws IOException {
        int childIndex = directoryProperty.getChildIndex();
        if (Property.isValidIndex(childIndex)) {
            Stack stack = new Stack();
            stack.push(this._properties.get(childIndex));
            while (!stack.empty()) {
                Property property = (Property) stack.pop();
                if (property != null) {
                    directoryProperty.addChild(property);
                    if (property.isDirectory()) {
                        populatePropertyTree((DirectoryProperty) property);
                    }
                    int previousChildIndex = property.getPreviousChildIndex();
                    if (isValidIndex(previousChildIndex)) {
                        stack.push(this._properties.get(previousChildIndex));
                    }
                    int nextChildIndex = property.getNextChildIndex();
                    if (isValidIndex(nextChildIndex)) {
                        stack.push(this._properties.get(nextChildIndex));
                    }
                }
            }
        }
    }

    public void addProperty(Property property) {
        this._properties.add(property);
    }

    @Override // org.apache.poi.poifs.filesystem.BATManaged
    public int countBlocks() {
        long size = this._properties.size() * 128;
        long bigBlockSize = this._bigBigBlockSize.getBigBlockSize();
        int i = (int) (size / bigBlockSize);
        return size % bigBlockSize != 0 ? i + 1 : i;
    }

    public RootProperty getRoot() {
        Property property = this._properties.get(0);
        if (property instanceof RootProperty) {
            return (RootProperty) property;
        }
        throw new IllegalStateException("Invalid format, cannot convert property " + property + " to RootProperty");
    }

    public int getStartBlock() {
        return this._header_block.getPropertyStart();
    }

    public void preWrite() {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (Property property : this._properties) {
            if (property != null) {
                property.setIndex(i);
                arrayList.add(property);
                i++;
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((Property) it2.next()).preWrite();
        }
    }

    public void removeProperty(Property property) {
        this._properties.remove(property);
    }

    @Override // org.apache.poi.poifs.filesystem.BATManaged
    public void setStartBlock(int i) {
        this._header_block.setPropertyStart(i);
    }

    public void write(POIFSStream pOIFSStream) throws IOException {
        OutputStream outputStream = pOIFSStream.getOutputStream();
        for (Property property : this._properties) {
            if (property != null) {
                property.writeData(outputStream);
            }
        }
        outputStream.close();
        if (getStartBlock() != pOIFSStream.getStartBlock()) {
            setStartBlock(pOIFSStream.getStartBlock());
        }
    }

    public PropertyTable(HeaderBlock headerBlock, POIFSFileSystem pOIFSFileSystem) throws IOException {
        this(headerBlock, new POIFSStream(pOIFSFileSystem, headerBlock.getPropertyStart()));
    }

    public PropertyTable(HeaderBlock headerBlock, Iterable<ByteBuffer> iterable) throws IOException {
        byte[] bArr;
        this._properties = new ArrayList();
        this._header_block = headerBlock;
        this._bigBigBlockSize = headerBlock.getBigBlockSize();
        for (ByteBuffer byteBuffer : iterable) {
            if (byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0 && byteBuffer.array().length == this._bigBigBlockSize.getBigBlockSize()) {
                bArr = byteBuffer.array();
            } else {
                byte[] safelyAllocate = IOUtils.safelyAllocate(this._bigBigBlockSize.getBigBlockSize(), POIFSFileSystem.getMaxRecordLength());
                int length = safelyAllocate.length;
                if (byteBuffer.remaining() < this._bigBigBlockSize.getBigBlockSize()) {
                    LOG.atWarn().log("Short Property Block, {} bytes instead of the expected {}", Unbox.box(byteBuffer.remaining()), Unbox.box(this._bigBigBlockSize.getBigBlockSize()));
                    length = byteBuffer.remaining();
                }
                byteBuffer.get(safelyAllocate, 0, length);
                bArr = safelyAllocate;
            }
            PropertyFactory.convertToProperties(bArr, this._properties);
        }
        Property property = this._properties.get(0);
        if (property != null) {
            if (property instanceof DirectoryProperty) {
                populatePropertyTree((DirectoryProperty) property);
                return;
            }
            throw new IOException("Invalid format, cannot convert property " + property + " to DirectoryProperty");
        }
    }
}
