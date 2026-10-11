package com.sun.imageio.plugins.tiff;

import java.awt.Point;
import java.awt.color.ColorSpace;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.ComponentColorModel;
import java.awt.image.DataBufferByte;
import java.awt.image.PixelInterleavedSampleModel;
import java.awt.image.Raster;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import javax.imageio.IIOException;
import javax.imageio.IIOImage;
import javax.imageio.ImageIO;
import javax.imageio.ImageWriteParam;
import javax.imageio.ImageWriter;
import javax.imageio.metadata.IIOInvalidTreeException;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.metadata.IIOMetadataNode;
import javax.imageio.plugins.jpeg.JPEGImageWriteParam;
import javax.imageio.spi.ImageWriterSpi;
import javax.imageio.stream.ImageOutputStream;
import javax.imageio.stream.MemoryCacheImageOutputStream;
import org.w3c.dom.Node;

/* loaded from: classes9.dex */
public abstract class TIFFBaseJPEGCompressor extends TIFFCompressor {
    protected static final String IMAGE_METADATA_NAME = "javax_imageio_jpeg_image_1.0";
    protected static final String STREAM_METADATA_NAME = "javax_imageio_jpeg_stream_1.0";
    private IIOMetadata JPEGImageMetadata;
    protected JPEGImageWriteParam JPEGParam;
    protected IIOMetadata JPEGStreamMetadata;
    protected ImageWriter JPEGWriter;
    private IIOByteArrayOutputStream baos;
    private ImageWriteParam param;
    protected boolean writeAbbreviatedStream;

    /* loaded from: classes9.dex */
    public static class IIOByteArrayOutputStream extends ByteArrayOutputStream {
        public IIOByteArrayOutputStream() {
        }

        public synchronized void writeTo(ImageOutputStream imageOutputStream) throws IOException {
            imageOutputStream.write(((ByteArrayOutputStream) this).buf, 0, ((ByteArrayOutputStream) this).count);
        }

        public IIOByteArrayOutputStream(int i) {
            super(i);
        }
    }

    public TIFFBaseJPEGCompressor(String str, int i, boolean z, ImageWriteParam imageWriteParam) {
        super(str, i, z);
        this.JPEGParam = null;
        this.JPEGWriter = null;
        this.writeAbbreviatedStream = false;
        this.JPEGStreamMetadata = null;
        this.JPEGImageMetadata = null;
        this.param = imageWriteParam;
    }

    private static List<Node> getAllNodes(IIOMetadataNode iIOMetadataNode, List<Node> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        if (iIOMetadataNode.hasChildNodes()) {
            for (Node firstChild = iIOMetadataNode.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
                list.add(firstChild);
                list = getAllNodes((IIOMetadataNode) firstChild, list);
            }
        }
        return list;
    }

    private IIOMetadata getImageMetadata(boolean z) throws IIOException {
        if (this.JPEGImageMetadata == null && "javax_imageio_jpeg_image_1.0".equals(this.JPEGWriter.getOriginatingProvider().getNativeImageMetadataFormatName())) {
            IIOMetadata defaultImageMetadata = this.JPEGWriter.getDefaultImageMetadata(((TIFFImageWriter) this.writer).getImageType(), this.JPEGParam);
            this.JPEGImageMetadata = defaultImageMetadata;
            Node asTree = defaultImageMetadata.getAsTree("javax_imageio_jpeg_image_1.0");
            try {
                pruneNodes(asTree, z);
                try {
                    this.JPEGImageMetadata.setFromTree("javax_imageio_jpeg_image_1.0", asTree);
                } catch (IIOInvalidTreeException e) {
                    throw new IIOException("Cannot set pruned image metadata!", e);
                }
            } catch (IllegalArgumentException e2) {
                throw new IIOException("Error pruning unwanted nodes", e2);
            }
        }
        return this.JPEGImageMetadata;
    }

    private static void pruneNodes(Node node, boolean z) {
        if (node == null) {
            throw new NullPointerException("tree == null!");
        }
        if (!node.getNodeName().equals("javax_imageio_jpeg_image_1.0")) {
            throw new IllegalArgumentException("root node name is not javax_imageio_jpeg_image_1.0!");
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(Arrays.asList("JPEGvariety", "markerSequence", "sof", "componentSpec", "sos", "scanComponentSpec"));
        if (!z) {
            arrayList.add("dht");
            arrayList.add("dhtable");
            arrayList.add("dqt");
            arrayList.add("dqtable");
        }
        List<Node> allNodes = getAllNodes((IIOMetadataNode) node, null);
        int size = allNodes.size();
        for (int i = 0; i < size; i++) {
            Node node2 = allNodes.get(i);
            if (!arrayList.contains(node2.getNodeName())) {
                node2.getParentNode().removeChild(node2);
            }
        }
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFCompressor
    public final int encode(byte[] bArr, int i, int i2, int i3, int[] iArr, int i4) throws IOException {
        DataBufferByte dataBufferByte;
        int[] iArr2;
        ColorSpace colorSpace;
        int i5 = i;
        if (this.JPEGWriter == null) {
            throw new IIOException("JPEG writer has not been initialized!");
        }
        if ((iArr.length != 3 || iArr[0] != 8 || iArr[1] != 8 || iArr[2] != 8) && (iArr.length != 1 || iArr[0] != 8)) {
            throw new IIOException("Can only JPEG compress 8- and 24-bit images!");
        }
        IIOByteArrayOutputStream iIOByteArrayOutputStream = this.baos;
        if (iIOByteArrayOutputStream == null) {
            this.baos = new IIOByteArrayOutputStream();
        } else {
            iIOByteArrayOutputStream.reset();
        }
        MemoryCacheImageOutputStream memoryCacheImageOutputStream = new MemoryCacheImageOutputStream(this.baos);
        this.JPEGWriter.setOutput(memoryCacheImageOutputStream);
        if (i5 == 0) {
            dataBufferByte = new DataBufferByte(bArr, bArr.length);
        } else {
            int i6 = i4 * i3;
            byte[] bArr2 = new byte[i6];
            System.arraycopy(bArr, i5, bArr2, 0, i6);
            dataBufferByte = new DataBufferByte(bArr2, i6);
            i5 = 0;
        }
        if (iArr.length == 3) {
            iArr2 = new int[]{i5, i5 + 1, i5 + 2};
            colorSpace = ColorSpace.getInstance(1000);
        } else {
            iArr2 = new int[]{i5};
            colorSpace = ColorSpace.getInstance(1003);
        }
        BufferedImage bufferedImage = new BufferedImage((ColorModel) new ComponentColorModel(colorSpace, false, false, 1, 0), Raster.createWritableRaster(new PixelInterleavedSampleModel(0, i2, i3, iArr.length, i4, iArr2), dataBufferByte, new Point(0, 0)), false, (Hashtable<?, ?>) null);
        IIOMetadata imageMetadata = getImageMetadata(this.writeAbbreviatedStream);
        if (this.writeAbbreviatedStream) {
            this.JPEGWriter.prepareWriteSequence(this.JPEGStreamMetadata);
            memoryCacheImageOutputStream.flush();
            this.baos.reset();
            this.JPEGWriter.writeToSequence(new IIOImage(bufferedImage, (List<? extends BufferedImage>) null, imageMetadata), this.JPEGParam);
            this.JPEGWriter.endWriteSequence();
        } else {
            this.JPEGWriter.write(null, new IIOImage(bufferedImage, (List<? extends BufferedImage>) null, imageMetadata), this.JPEGParam);
        }
        int size = this.baos.size();
        this.baos.writeTo(this.stream);
        this.baos.reset();
        return size;
    }

    public void finalize() throws Throwable {
        super.finalize();
        ImageWriter imageWriter = this.JPEGWriter;
        if (imageWriter != null) {
            imageWriter.dispose();
        }
    }

    public void initJPEGWriter(boolean z, boolean z2) {
        String nativeStreamMetadataFormatName;
        String nativeImageMetadataFormatName;
        String nativeStreamMetadataFormatName2;
        ImageWriter imageWriter = this.JPEGWriter;
        if (imageWriter != null && (z || z2)) {
            ImageWriterSpi originatingProvider = imageWriter.getOriginatingProvider();
            if (z && ((nativeStreamMetadataFormatName2 = originatingProvider.getNativeStreamMetadataFormatName()) == null || !nativeStreamMetadataFormatName2.equals("javax_imageio_jpeg_stream_1.0"))) {
                this.JPEGWriter = null;
            }
            if (this.JPEGWriter != null && z2 && ((nativeImageMetadataFormatName = originatingProvider.getNativeImageMetadataFormatName()) == null || !nativeImageMetadataFormatName.equals("javax_imageio_jpeg_image_1.0"))) {
                this.JPEGWriter = null;
            }
        }
        if (this.JPEGWriter == null) {
            Iterator<ImageWriter> imageWritersByFormatName = ImageIO.getImageWritersByFormatName("jpeg");
            while (imageWritersByFormatName.hasNext()) {
                ImageWriter next = imageWritersByFormatName.next();
                if (z || z2) {
                    ImageWriterSpi originatingProvider2 = next.getOriginatingProvider();
                    if (!z || ((nativeStreamMetadataFormatName = originatingProvider2.getNativeStreamMetadataFormatName()) != null && nativeStreamMetadataFormatName.equals("javax_imageio_jpeg_stream_1.0"))) {
                        if (z2) {
                            String nativeImageMetadataFormatName2 = originatingProvider2.getNativeImageMetadataFormatName();
                            if (nativeImageMetadataFormatName2 != null && nativeImageMetadataFormatName2.equals("javax_imageio_jpeg_image_1.0")) {
                            }
                        }
                    }
                }
                this.JPEGWriter = next;
            }
            if (this.JPEGWriter == null) {
                throw new NullPointerException("No appropriate JPEG writers found!");
            }
        }
        if (this.JPEGParam == null) {
            ImageWriteParam imageWriteParam = this.param;
            if (imageWriteParam != null && (imageWriteParam instanceof JPEGImageWriteParam)) {
                this.JPEGParam = (JPEGImageWriteParam) imageWriteParam;
                return;
            }
            ImageWriter imageWriter2 = this.writer;
            this.JPEGParam = new JPEGImageWriteParam(imageWriter2 != null ? imageWriter2.getLocale() : null);
            ImageWriteParam imageWriteParam2 = this.param;
            if (imageWriteParam2 == null || imageWriteParam2.getCompressionMode() != 2) {
                return;
            }
            this.JPEGParam.setCompressionMode(2);
            this.JPEGParam.setCompressionQuality(this.param.getCompressionQuality());
        }
    }
}
