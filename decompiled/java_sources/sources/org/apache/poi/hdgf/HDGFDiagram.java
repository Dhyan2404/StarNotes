package org.apache.poi.hdgf;

import java.io.IOException;
import java.io.PrintStream;
import org.apache.poi.POIReadOnlyDocument;
import org.apache.poi.hdgf.chunks.ChunkFactory;
import org.apache.poi.hdgf.pointers.Pointer;
import org.apache.poi.hdgf.pointers.PointerFactory;
import org.apache.poi.hdgf.streams.PointerContainingStream;
import org.apache.poi.hdgf.streams.Stream;
import org.apache.poi.hdgf.streams.StringsStream;
import org.apache.poi.hdgf.streams.TrailerStream;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.DocumentInputStream;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.LocaleUtil;

/* loaded from: classes12.dex */
public final class HDGFDiagram extends POIReadOnlyDocument {
    private static final String VISIO_HEADER = "Visio (TM) Drawing\r\n";
    private long docSize;
    private TrailerStream trailer;
    private Pointer trailerPointer;

    public HDGFDiagram(POIFSFileSystem pOIFSFileSystem) throws IOException {
        this(pOIFSFileSystem.getRoot());
    }

    public void debug() {
        System.err.println("Trailer is at " + this.trailerPointer.getOffset());
        System.err.println("Trailer has type " + this.trailerPointer.getType());
        System.err.println("Trailer has length " + this.trailerPointer.getLength());
        System.err.println("Trailer has format " + ((int) this.trailerPointer.getFormat()));
        for (int i = 0; i < this.trailer.getPointedToStreams().length; i++) {
            Stream stream = this.trailer.getPointedToStreams()[i];
            Pointer pointer = stream.getPointer();
            System.err.println("Looking at pointer " + i);
            System.err.println("\tType is " + pointer.getType() + "\t\t" + Integer.toHexString(pointer.getType()));
            System.err.println("\tOffset is " + pointer.getOffset() + "\t\t" + Long.toHexString(pointer.getOffset()));
            System.err.println("\tAddress is " + pointer.getAddress() + "\t" + Long.toHexString(pointer.getAddress()));
            System.err.println("\tLength is " + pointer.getLength() + "\t\t" + Long.toHexString(pointer.getLength()));
            System.err.println("\tFormat is " + ((int) pointer.getFormat()) + "\t\t" + Long.toHexString(pointer.getFormat()));
            PrintStream printStream = System.err;
            StringBuilder sb = new StringBuilder();
            sb.append("\tCompressed is ");
            sb.append(pointer.destinationCompressed());
            printStream.println(sb.toString());
            System.err.println("\tStream is " + stream.getClass());
            if (stream instanceof PointerContainingStream) {
                PointerContainingStream pointerContainingStream = (PointerContainingStream) stream;
                if (pointerContainingStream.getPointedToStreams() != null && pointerContainingStream.getPointedToStreams().length > 0) {
                    System.err.println("\tContains " + pointerContainingStream.getPointedToStreams().length + " other pointers/streams");
                    for (int i2 = 0; i2 < pointerContainingStream.getPointedToStreams().length; i2++) {
                        Pointer pointer2 = pointerContainingStream.getPointedToStreams()[i2].getPointer();
                        System.err.println("\t\t" + i2 + " - Type is " + pointer2.getType() + "\t\t" + Integer.toHexString(pointer2.getType()));
                        System.err.println("\t\t" + i2 + " - Length is " + pointer2.getLength() + "\t\t" + Long.toHexString(pointer2.getLength()));
                    }
                }
            }
            if (stream instanceof StringsStream) {
                System.err.println("\t\t**strings**");
                System.err.println("\t\t" + ((StringsStream) stream)._getContentsLength());
            }
        }
    }

    public long getDocumentSize() {
        return this.docSize;
    }

    public Stream[] getTopLevelStreams() {
        return this.trailer.getPointedToStreams();
    }

    public TrailerStream getTrailerStream() {
        return this.trailer;
    }

    public HDGFDiagram(DirectoryNode directoryNode) throws IOException {
        super(directoryNode);
        DocumentInputStream createDocumentInputStream = directoryNode.createDocumentInputStream("VisioDocument");
        try {
            byte[] byteArray = IOUtils.toByteArray(createDocumentInputStream);
            if (createDocumentInputStream != null) {
                createDocumentInputStream.close();
            }
            String str = new String(byteArray, 0, 20, LocaleUtil.CHARSET_1252);
            if (str.equals(VISIO_HEADER)) {
                short s = LittleEndian.getShort(byteArray, 26);
                this.docSize = LittleEndian.getUInt(byteArray, 28);
                PointerFactory pointerFactory = new PointerFactory(s);
                ChunkFactory chunkFactory = new ChunkFactory(s);
                Pointer createPointer = pointerFactory.createPointer(byteArray, 36);
                this.trailerPointer = createPointer;
                Stream createStream = Stream.createStream(createPointer, byteArray, chunkFactory, pointerFactory);
                if (createStream instanceof TrailerStream) {
                    TrailerStream trailerStream = (TrailerStream) createStream;
                    this.trailer = trailerStream;
                    trailerStream.findChildren(byteArray);
                    return;
                } else {
                    throw new IllegalStateException("Stream is not a TrailerStream: " + createStream);
                }
            }
            throw new IllegalArgumentException("Wasn't a valid visio document, started with " + str);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (createDocumentInputStream != null) {
                    try {
                        createDocumentInputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }
}
