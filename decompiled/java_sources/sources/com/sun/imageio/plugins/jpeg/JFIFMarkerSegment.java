package com.sun.imageio.plugins.jpeg;

import com.alibaba.fastjson2.JSONB;
import com.sun.imageio.plugins.jpeg.JPEG;
import java.awt.Point;
import java.awt.color.ColorSpace;
import java.awt.color.ICC_ColorSpace;
import java.awt.color.ICC_Profile;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.ComponentColorModel;
import java.awt.image.DataBufferByte;
import java.awt.image.IndexColorModel;
import java.awt.image.Raster;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import javax.imageio.IIOException;
import javax.imageio.IIOImage;
import javax.imageio.ImageReader;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.event.IIOReadProgressListener;
import javax.imageio.metadata.IIOInvalidTreeException;
import javax.imageio.metadata.IIOMetadataNode;
import javax.imageio.stream.ImageInputStream;
import javax.imageio.stream.ImageOutputStream;
import javax.imageio.stream.MemoryCacheImageOutputStream;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes9.dex */
public class JFIFMarkerSegment extends MarkerSegment {
    private static final int DATA_SIZE = 14;
    private static final int ID_SIZE = 5;
    private static final int THUMB_JPEG = 16;
    private static final int THUMB_PALETTE = 17;
    private static final int THUMB_RGB = 19;
    private static final int THUMB_UNASSIGNED = 18;
    private final int MAX_THUMB_HEIGHT;
    private final int MAX_THUMB_WIDTH;
    int Xdensity;
    int Ydensity;
    private final boolean debug;
    ArrayList<JFIFExtensionMarkerSegment> extSegments;
    ICCMarkerSegment iccSegment;
    private boolean inICC;
    int majorVersion;
    int minorVersion;
    int resUnits;
    private ICCMarkerSegment tempICCSegment;
    JFIFThumbRGB thumb;
    int thumbHeight;
    int thumbWidth;

    /* loaded from: classes9.dex */
    public class IllegalThumbException extends Exception {
        private IllegalThumbException() {
        }
    }

    public JFIFMarkerSegment() {
        super(224);
        this.thumb = null;
        this.extSegments = new ArrayList<>();
        this.iccSegment = null;
        this.MAX_THUMB_WIDTH = 255;
        this.MAX_THUMB_HEIGHT = 255;
        this.debug = false;
        this.inICC = false;
        this.tempICCSegment = null;
        this.majorVersion = 1;
        this.minorVersion = 2;
        this.resUnits = 0;
        this.Xdensity = 1;
        this.Ydensity = 1;
        this.thumbWidth = 0;
        this.thumbHeight = 0;
    }

    private static BufferedImage expandGrayThumb(BufferedImage bufferedImage) {
        BufferedImage bufferedImage2 = new BufferedImage(bufferedImage.getWidth(), bufferedImage.getHeight(), 1);
        bufferedImage2.getGraphics().drawImage(bufferedImage, 0, 0, null);
        return bufferedImage2;
    }

    public static void writeDefaultJFIF(ImageOutputStream imageOutputStream, List<? extends BufferedImage> list, ICC_Profile iCC_Profile, JPEGImageWriter jPEGImageWriter) throws IOException {
        new JFIFMarkerSegment().writeWithThumbs(imageOutputStream, list, jPEGImageWriter);
        if (iCC_Profile != null) {
            writeICC(iCC_Profile, imageOutputStream);
        }
    }

    public static void writeICC(ICC_Profile iCC_Profile, ImageOutputStream imageOutputStream) throws IOException {
        byte[] data = iCC_Profile.getData();
        int length = data.length / com.twelvemonkeys.imageio.metadata.jpeg.JPEG.APP15;
        if (data.length % com.twelvemonkeys.imageio.metadata.jpeg.JPEG.APP15 != 0) {
            length++;
        }
        int i = 1;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int min = Math.min(data.length - i3, com.twelvemonkeys.imageio.metadata.jpeg.JPEG.APP15);
            imageOutputStream.write(255);
            imageOutputStream.write(226);
            MarkerSegment.write2bytes(imageOutputStream, min + 2 + 12 + 2);
            imageOutputStream.write("ICC_PROFILE".getBytes("US-ASCII"));
            imageOutputStream.write(0);
            imageOutputStream.write(i);
            imageOutputStream.write(length);
            imageOutputStream.write(data, i3, min);
            i3 += min;
            i2++;
            i++;
        }
    }

    private void writeJFXXSegment(int i, BufferedImage bufferedImage, ImageOutputStream imageOutputStream, JPEGImageWriter jPEGImageWriter) throws IOException {
        try {
            JFIFExtensionMarkerSegment jFIFExtensionMarkerSegment = new JFIFExtensionMarkerSegment(bufferedImage);
            jPEGImageWriter.thumbnailStarted(i);
            jFIFExtensionMarkerSegment.write(imageOutputStream, jPEGImageWriter);
            jPEGImageWriter.thumbnailComplete();
        } catch (IllegalThumbException unused) {
            jPEGImageWriter.warningOccurred(9);
        }
    }

    private void writeThumb(ImageOutputStream imageOutputStream, BufferedImage bufferedImage, JFIFExtensionMarkerSegment jFIFExtensionMarkerSegment, int i, boolean z, JPEGImageWriter jPEGImageWriter) throws IOException {
        ColorModel colorModel = bufferedImage.getColorModel();
        ColorSpace colorSpace = colorModel.getColorSpace();
        if (colorModel instanceof IndexColorModel) {
            if (z) {
                write(imageOutputStream, jPEGImageWriter);
            }
            if (jFIFExtensionMarkerSegment == null || jFIFExtensionMarkerSegment.code == 17) {
                writeJFXXSegment(i, bufferedImage, imageOutputStream, jPEGImageWriter);
                return;
            }
            jFIFExtensionMarkerSegment.setThumbnail(((IndexColorModel) colorModel).convertToIntDiscrete(bufferedImage.getRaster(), false));
            jPEGImageWriter.thumbnailStarted(i);
            jFIFExtensionMarkerSegment.write(imageOutputStream, jPEGImageWriter);
            jPEGImageWriter.thumbnailComplete();
            return;
        }
        if (colorSpace.getType() == 5) {
            if (jFIFExtensionMarkerSegment == null) {
                if (z) {
                    write(imageOutputStream, bufferedImage, jPEGImageWriter);
                    return;
                } else {
                    writeJFXXSegment(i, bufferedImage, imageOutputStream, jPEGImageWriter);
                    return;
                }
            }
            if (z) {
                write(imageOutputStream, jPEGImageWriter);
            }
            if (jFIFExtensionMarkerSegment.code == 17) {
                writeJFXXSegment(i, bufferedImage, imageOutputStream, jPEGImageWriter);
                jPEGImageWriter.warningOccurred(14);
                return;
            } else {
                jFIFExtensionMarkerSegment.setThumbnail(bufferedImage);
                jPEGImageWriter.thumbnailStarted(i);
                jFIFExtensionMarkerSegment.write(imageOutputStream, jPEGImageWriter);
                jPEGImageWriter.thumbnailComplete();
                return;
            }
        }
        if (colorSpace.getType() != 6) {
            jPEGImageWriter.warningOccurred(9);
            return;
        }
        if (jFIFExtensionMarkerSegment == null) {
            if (z) {
                write(imageOutputStream, expandGrayThumb(bufferedImage), jPEGImageWriter);
                return;
            } else {
                writeJFXXSegment(i, bufferedImage, imageOutputStream, jPEGImageWriter);
                return;
            }
        }
        if (z) {
            write(imageOutputStream, jPEGImageWriter);
        }
        int i2 = jFIFExtensionMarkerSegment.code;
        if (i2 == 19) {
            writeJFXXSegment(i, expandGrayThumb(bufferedImage), imageOutputStream, jPEGImageWriter);
            return;
        }
        if (i2 == 16) {
            jFIFExtensionMarkerSegment.setThumbnail(bufferedImage);
            jPEGImageWriter.thumbnailStarted(i);
            jFIFExtensionMarkerSegment.write(imageOutputStream, jPEGImageWriter);
            jPEGImageWriter.thumbnailComplete();
            return;
        }
        if (i2 == 17) {
            writeJFXXSegment(i, bufferedImage, imageOutputStream, jPEGImageWriter);
            jPEGImageWriter.warningOccurred(15);
        }
    }

    public void addICC(JPEGBuffer jPEGBuffer) throws IOException {
        if (!this.inICC) {
            if (this.iccSegment == null) {
                ICCMarkerSegment iCCMarkerSegment = new ICCMarkerSegment(jPEGBuffer);
                this.tempICCSegment = iCCMarkerSegment;
                if (this.inICC) {
                    return;
                }
                this.iccSegment = iCCMarkerSegment;
                this.tempICCSegment = null;
                return;
            }
            throw new IIOException("> 1 ICC APP2 Marker Segment not supported");
        }
        if (this.tempICCSegment.addData(jPEGBuffer)) {
            this.iccSegment = this.tempICCSegment;
            this.tempICCSegment = null;
        }
    }

    public void addJFXX(JPEGBuffer jPEGBuffer, JPEGImageReader jPEGImageReader) throws IOException {
        this.extSegments.add(new JFIFExtensionMarkerSegment(jPEGBuffer, jPEGImageReader));
    }

    @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
    public Object clone() {
        JFIFMarkerSegment jFIFMarkerSegment = (JFIFMarkerSegment) super.clone();
        if (!this.extSegments.isEmpty()) {
            jFIFMarkerSegment.extSegments = new ArrayList<>();
            Iterator<JFIFExtensionMarkerSegment> it2 = this.extSegments.iterator();
            while (it2.hasNext()) {
                jFIFMarkerSegment.extSegments.add((JFIFExtensionMarkerSegment) it2.next().clone());
            }
        }
        ICCMarkerSegment iCCMarkerSegment = this.iccSegment;
        if (iCCMarkerSegment != null) {
            jFIFMarkerSegment.iccSegment = (ICCMarkerSegment) iCCMarkerSegment.clone();
        }
        return jFIFMarkerSegment;
    }

    @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
    public IIOMetadataNode getNativeNode() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("app0JFIF");
        iIOMetadataNode.setAttribute("majorVersion", Integer.toString(this.majorVersion));
        iIOMetadataNode.setAttribute("minorVersion", Integer.toString(this.minorVersion));
        iIOMetadataNode.setAttribute("resUnits", Integer.toString(this.resUnits));
        iIOMetadataNode.setAttribute("Xdensity", Integer.toString(this.Xdensity));
        iIOMetadataNode.setAttribute("Ydensity", Integer.toString(this.Ydensity));
        iIOMetadataNode.setAttribute("thumbWidth", Integer.toString(this.thumbWidth));
        iIOMetadataNode.setAttribute("thumbHeight", Integer.toString(this.thumbHeight));
        if (!this.extSegments.isEmpty()) {
            IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("JFXX");
            iIOMetadataNode.appendChild(iIOMetadataNode2);
            Iterator<JFIFExtensionMarkerSegment> it2 = this.extSegments.iterator();
            while (it2.hasNext()) {
                iIOMetadataNode2.appendChild(it2.next().getNativeNode());
            }
        }
        ICCMarkerSegment iCCMarkerSegment = this.iccSegment;
        if (iCCMarkerSegment != null) {
            iIOMetadataNode.appendChild(iCCMarkerSegment.getNativeNode());
        }
        return iIOMetadataNode;
    }

    public BufferedImage getThumbnail(ImageInputStream imageInputStream, int i, JPEGImageReader jPEGImageReader) throws IOException {
        BufferedImage thumbnail;
        jPEGImageReader.thumbnailStarted(i);
        JFIFThumbRGB jFIFThumbRGB = this.thumb;
        if (jFIFThumbRGB == null || i != 0) {
            if (jFIFThumbRGB != null) {
                i--;
            }
            thumbnail = this.extSegments.get(i).thumb.getThumbnail(imageInputStream, jPEGImageReader);
        } else {
            thumbnail = jFIFThumbRGB.getThumbnail(imageInputStream, jPEGImageReader);
        }
        jPEGImageReader.thumbnailComplete();
        return thumbnail;
    }

    public int getThumbnailHeight(int i) {
        JFIFThumbRGB jFIFThumbRGB = this.thumb;
        if (jFIFThumbRGB != null) {
            if (i == 0) {
                return jFIFThumbRGB.getHeight();
            }
            i--;
        }
        return this.extSegments.get(i).thumb.getHeight();
    }

    public int getThumbnailWidth(int i) {
        JFIFThumbRGB jFIFThumbRGB = this.thumb;
        if (jFIFThumbRGB != null) {
            if (i == 0) {
                return jFIFThumbRGB.getWidth();
            }
            i--;
        }
        return this.extSegments.get(i).thumb.getWidth();
    }

    @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
    public void print() {
        printTag("JFIF");
        System.out.print("Version ");
        System.out.print(this.majorVersion);
        System.out.println(".0" + Integer.toString(this.minorVersion));
        System.out.print("Resolution units: ");
        System.out.println(this.resUnits);
        System.out.print("X density: ");
        System.out.println(this.Xdensity);
        System.out.print("Y density: ");
        System.out.println(this.Ydensity);
        System.out.print("Thumbnail Width: ");
        System.out.println(this.thumbWidth);
        System.out.print("Thumbnail Height: ");
        System.out.println(this.thumbHeight);
        if (!this.extSegments.isEmpty()) {
            Iterator<JFIFExtensionMarkerSegment> it2 = this.extSegments.iterator();
            while (it2.hasNext()) {
                it2.next().print();
            }
        }
        ICCMarkerSegment iCCMarkerSegment = this.iccSegment;
        if (iCCMarkerSegment != null) {
            iCCMarkerSegment.print();
        }
    }

    public void updateFromNativeNode(Node node, boolean z) throws IIOInvalidTreeException {
        NamedNodeMap attributes = node.getAttributes();
        if (attributes.getLength() > 0) {
            int attributeValue = MarkerSegment.getAttributeValue(node, attributes, "majorVersion", 0, 255, false);
            if (attributeValue == -1) {
                attributeValue = this.majorVersion;
            }
            this.majorVersion = attributeValue;
            int attributeValue2 = MarkerSegment.getAttributeValue(node, attributes, "minorVersion", 0, 255, false);
            if (attributeValue2 == -1) {
                attributeValue2 = this.minorVersion;
            }
            this.minorVersion = attributeValue2;
            int attributeValue3 = MarkerSegment.getAttributeValue(node, attributes, "resUnits", 0, 2, false);
            if (attributeValue3 == -1) {
                attributeValue3 = this.resUnits;
            }
            this.resUnits = attributeValue3;
            int attributeValue4 = MarkerSegment.getAttributeValue(node, attributes, "Xdensity", 1, 65535, false);
            if (attributeValue4 == -1) {
                attributeValue4 = this.Xdensity;
            }
            this.Xdensity = attributeValue4;
            int attributeValue5 = MarkerSegment.getAttributeValue(node, attributes, "Ydensity", 1, 65535, false);
            if (attributeValue5 == -1) {
                attributeValue5 = this.Ydensity;
            }
            this.Ydensity = attributeValue5;
            int attributeValue6 = MarkerSegment.getAttributeValue(node, attributes, "thumbWidth", 0, 255, false);
            if (attributeValue6 == -1) {
                attributeValue6 = this.thumbWidth;
            }
            this.thumbWidth = attributeValue6;
            int attributeValue7 = MarkerSegment.getAttributeValue(node, attributes, "thumbHeight", 0, 255, false);
            if (attributeValue7 == -1) {
                attributeValue7 = this.thumbHeight;
            }
            this.thumbHeight = attributeValue7;
        }
        if (node.hasChildNodes()) {
            NodeList childNodes = node.getChildNodes();
            int length = childNodes.getLength();
            if (length > 2) {
                throw new IIOInvalidTreeException("app0JFIF node cannot have > 2 children", node);
            }
            for (int i = 0; i < length; i++) {
                Node item = childNodes.item(i);
                String nodeName = item.getNodeName();
                if (nodeName.equals("JFXX")) {
                    if (!this.extSegments.isEmpty() && z) {
                        throw new IIOInvalidTreeException("app0JFIF node cannot have > 1 JFXX node", node);
                    }
                    NodeList childNodes2 = item.getChildNodes();
                    int length2 = childNodes2.getLength();
                    for (int i2 = 0; i2 < length2; i2++) {
                        this.extSegments.add(new JFIFExtensionMarkerSegment(childNodes2.item(i2)));
                    }
                }
                if (nodeName.equals("app2ICC")) {
                    if (this.iccSegment != null && z) {
                        throw new IIOInvalidTreeException("> 1 ICC APP2 Marker Segment not supported", node);
                    }
                    this.iccSegment = new ICCMarkerSegment(item);
                }
            }
        }
    }

    public void write(ImageOutputStream imageOutputStream, JPEGImageWriter jPEGImageWriter) throws IOException {
        write(imageOutputStream, null, jPEGImageWriter);
    }

    public void writeThumbnailData(ImageOutputStream imageOutputStream, int[] iArr, JPEGImageWriter jPEGImageWriter) throws IOException {
        int length = iArr.length / 20;
        if (length == 0) {
            length = 1;
        }
        for (int i = 0; i < iArr.length; i++) {
            imageOutputStream.write(iArr[i]);
            if (i > length && i % length == 0) {
                jPEGImageWriter.thumbnailProgress((i * 100.0f) / iArr.length);
            }
        }
    }

    public void writeWithThumbs(ImageOutputStream imageOutputStream, List<? extends BufferedImage> list, JPEGImageWriter jPEGImageWriter) throws IOException {
        if (list == null) {
            write(imageOutputStream, jPEGImageWriter);
            return;
        }
        if (list.size() == 1) {
            writeThumb(imageOutputStream, list.get(0), !this.extSegments.isEmpty() ? this.extSegments.get(0) : null, 0, true, jPEGImageWriter);
            return;
        }
        write(imageOutputStream, jPEGImageWriter);
        int i = 0;
        while (i < list.size()) {
            writeThumb(imageOutputStream, list.get(i), i < this.extSegments.size() ? this.extSegments.get(i) : null, i, false, jPEGImageWriter);
            i++;
        }
    }

    /* loaded from: classes9.dex */
    public abstract class JFIFThumb implements Cloneable {
        long streamPos;

        public JFIFThumb() {
            this.streamPos = -1L;
        }

        public Object clone() {
            try {
                return super.clone();
            } catch (CloneNotSupportedException unused) {
                return null;
            }
        }

        public abstract int getHeight();

        public abstract int getLength();

        public abstract IIOMetadataNode getNativeNode();

        public abstract BufferedImage getThumbnail(ImageInputStream imageInputStream, JPEGImageReader jPEGImageReader) throws IOException;

        public abstract int getWidth();

        public abstract void print();

        public abstract void write(ImageOutputStream imageOutputStream, JPEGImageWriter jPEGImageWriter) throws IOException;

        public JFIFThumb(JPEGBuffer jPEGBuffer) throws IOException {
            this.streamPos = -1L;
            this.streamPos = jPEGBuffer.getStreamPosition();
        }
    }

    /* loaded from: classes9.dex */
    public class JFIFThumbPalette extends JFIFThumbUncompressed {
        private static final int PALETTE_SIZE = 768;

        public JFIFThumbPalette(JPEGBuffer jPEGBuffer, int i, int i2) throws IOException {
            super(jPEGBuffer, i, i2, (i * i2) + 768, "JFIFThumbPalette");
        }

        @Override // com.sun.imageio.plugins.jpeg.JFIFMarkerSegment.JFIFThumb
        public int getLength() {
            return (this.thumbWidth * this.thumbHeight) + 768;
        }

        @Override // com.sun.imageio.plugins.jpeg.JFIFMarkerSegment.JFIFThumb
        public BufferedImage getThumbnail(ImageInputStream imageInputStream, JPEGImageReader jPEGImageReader) throws IOException {
            imageInputStream.mark();
            imageInputStream.seek(this.streamPos);
            byte[] bArr = new byte[768];
            float length = 768.0f / getLength();
            readByteBuffer(imageInputStream, bArr, jPEGImageReader, length, 0.0f);
            DataBufferByte dataBufferByte = new DataBufferByte(this.thumbWidth * this.thumbHeight);
            readByteBuffer(imageInputStream, dataBufferByte.getData(), jPEGImageReader, 1.0f - length, length);
            imageInputStream.read();
            imageInputStream.reset();
            IndexColorModel indexColorModel = new IndexColorModel(8, 256, bArr, 0, false);
            return new BufferedImage((ColorModel) indexColorModel, Raster.createWritableRaster(indexColorModel.createCompatibleSampleModel(this.thumbWidth, this.thumbHeight), dataBufferByte, null), false, (Hashtable<?, ?>) null);
        }

        @Override // com.sun.imageio.plugins.jpeg.JFIFMarkerSegment.JFIFThumbUncompressed, com.sun.imageio.plugins.jpeg.JFIFMarkerSegment.JFIFThumb
        public void write(ImageOutputStream imageOutputStream, JPEGImageWriter jPEGImageWriter) throws IOException {
            super.write(imageOutputStream, jPEGImageWriter);
            byte[] bArr = new byte[768];
            IndexColorModel indexColorModel = (IndexColorModel) this.thumbnail.getColorModel();
            byte[] bArr2 = new byte[256];
            byte[] bArr3 = new byte[256];
            byte[] bArr4 = new byte[256];
            indexColorModel.getReds(bArr2);
            indexColorModel.getGreens(bArr3);
            indexColorModel.getBlues(bArr4);
            for (int i = 0; i < 256; i++) {
                int i2 = i * 3;
                bArr[i2] = bArr2[i];
                bArr[i2 + 1] = bArr3[i];
                bArr[i2 + 2] = bArr4[i];
            }
            imageOutputStream.write(bArr);
            writePixels(imageOutputStream, jPEGImageWriter);
        }

        public JFIFThumbPalette(Node node) throws IIOInvalidTreeException {
            super(node, "JFIFThumbPalette");
        }

        public JFIFThumbPalette(BufferedImage bufferedImage) throws IllegalThumbException {
            super(bufferedImage);
            if (((IndexColorModel) this.thumbnail.getColorModel()).getMapSize() > 256) {
                throw new IllegalThumbException();
            }
        }
    }

    /* loaded from: classes9.dex */
    public class JFIFThumbRGB extends JFIFThumbUncompressed {
        public JFIFThumbRGB(JPEGBuffer jPEGBuffer, int i, int i2) throws IOException {
            super(jPEGBuffer, i, i2, i * i2 * 3, "JFIFthumbRGB");
        }

        @Override // com.sun.imageio.plugins.jpeg.JFIFMarkerSegment.JFIFThumb
        public int getLength() {
            return this.thumbWidth * this.thumbHeight * 3;
        }

        @Override // com.sun.imageio.plugins.jpeg.JFIFMarkerSegment.JFIFThumb
        public BufferedImage getThumbnail(ImageInputStream imageInputStream, JPEGImageReader jPEGImageReader) throws IOException {
            imageInputStream.mark();
            imageInputStream.seek(this.streamPos);
            DataBufferByte dataBufferByte = new DataBufferByte(getLength());
            readByteBuffer(imageInputStream, dataBufferByte.getData(), jPEGImageReader, 1.0f, 0.0f);
            imageInputStream.reset();
            int i = this.thumbWidth;
            return new BufferedImage((ColorModel) new ComponentColorModel(JPEG.JCS.sRGB, false, false, 1, 0), Raster.createInterleavedRaster(dataBufferByte, i, this.thumbHeight, i * 3, 3, new int[]{0, 1, 2}, (Point) null), false, (Hashtable<?, ?>) null);
        }

        @Override // com.sun.imageio.plugins.jpeg.JFIFMarkerSegment.JFIFThumbUncompressed, com.sun.imageio.plugins.jpeg.JFIFMarkerSegment.JFIFThumb
        public void write(ImageOutputStream imageOutputStream, JPEGImageWriter jPEGImageWriter) throws IOException {
            super.write(imageOutputStream, jPEGImageWriter);
            writePixels(imageOutputStream, jPEGImageWriter);
        }

        public JFIFThumbRGB(Node node) throws IIOInvalidTreeException {
            super(node, "JFIFthumbRGB");
        }

        public JFIFThumbRGB(BufferedImage bufferedImage) throws IllegalThumbException {
            super(bufferedImage);
        }
    }

    public void write(ImageOutputStream imageOutputStream, BufferedImage bufferedImage, JPEGImageWriter jPEGImageWriter) throws IOException {
        int[] iArr;
        int i;
        int i2;
        int i3;
        if (bufferedImage != null) {
            int width = bufferedImage.getWidth();
            int height = bufferedImage.getHeight();
            if (width > 255 || height > 255) {
                jPEGImageWriter.warningOccurred(12);
            }
            i = Math.min(width, 255);
            i2 = Math.min(height, 255);
            iArr = bufferedImage.getRaster().getPixels(0, 0, i, i2, (int[]) null);
            i3 = iArr.length;
        } else {
            iArr = null;
            i = 0;
            i2 = 0;
            i3 = 0;
        }
        this.length = i3 + 16;
        writeTag(imageOutputStream);
        imageOutputStream.write(new byte[]{JSONB.Constants.BC_STR_ASCII_FIX_1, 70, 73, 70, 0});
        imageOutputStream.write(this.majorVersion);
        imageOutputStream.write(this.minorVersion);
        imageOutputStream.write(this.resUnits);
        MarkerSegment.write2bytes(imageOutputStream, this.Xdensity);
        MarkerSegment.write2bytes(imageOutputStream, this.Ydensity);
        imageOutputStream.write(i);
        imageOutputStream.write(i2);
        if (iArr != null) {
            jPEGImageWriter.thumbnailStarted(0);
            writeThumbnailData(imageOutputStream, iArr, jPEGImageWriter);
            jPEGImageWriter.thumbnailComplete();
        }
    }

    /* loaded from: classes9.dex */
    public class ICCMarkerSegment extends MarkerSegment {
        private static final int ID_SIZE = 12;
        ArrayList<byte[]> chunks;
        int chunksRead;
        int numChunks;
        byte[] profile;

        public ICCMarkerSegment(ICC_ColorSpace iCC_ColorSpace) {
            super(226);
            this.profile = null;
            this.chunks = null;
            this.chunksRead = 0;
            this.numChunks = 0;
            this.profile = iCC_ColorSpace.getProfile().getData();
        }

        public boolean addData(JPEGBuffer jPEGBuffer) throws IOException {
            int i = jPEGBuffer.bufPtr + 1;
            int i2 = jPEGBuffer.bufAvail - 1;
            byte[] bArr = jPEGBuffer.buf;
            int i3 = i + 1;
            int i4 = (((bArr[i] & 255) << 8) | (bArr[i3] & 255)) - 2;
            int i5 = i3 + 1 + 12;
            jPEGBuffer.bufPtr = i5;
            jPEGBuffer.bufAvail = (i2 - 2) - 12;
            int i6 = i4 - 12;
            int i7 = bArr[i5] & 255;
            int i8 = this.numChunks;
            if (i7 > i8) {
                throw new IIOException("Image format Error; chunk num > num chunks");
            }
            if (i8 != (bArr[i5 + 1] & 255)) {
                throw new IIOException("Image format Error; icc num chunks mismatch");
            }
            int i9 = i6 - 2;
            byte[] bArr2 = new byte[i9];
            jPEGBuffer.readData(bArr2);
            this.chunks.add(bArr2);
            int i10 = this.length + i9;
            this.length = i10;
            int i11 = this.chunksRead + 1;
            this.chunksRead = i11;
            if (i11 < this.numChunks) {
                JFIFMarkerSegment.this.inICC = true;
                return false;
            }
            this.profile = new byte[i10];
            int i12 = 0;
            for (int i13 = 1; i13 <= this.numChunks; i13++) {
                boolean z = false;
                for (int i14 = 0; i14 < this.chunks.size(); i14++) {
                    byte[] bArr3 = this.chunks.get(i14);
                    if (bArr3[0] == i13) {
                        System.arraycopy(bArr3, 2, this.profile, i12, bArr3.length - 2);
                        i12 += bArr3.length - 2;
                        z = true;
                    }
                }
                if (!z) {
                    throw new IIOException("Image Format Error: Missing ICC chunk num " + i13);
                }
            }
            this.chunks = null;
            this.chunksRead = 0;
            this.numChunks = 0;
            JFIFMarkerSegment.this.inICC = false;
            return true;
        }

        @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
        public Object clone() {
            ICCMarkerSegment iCCMarkerSegment = (ICCMarkerSegment) super.clone();
            byte[] bArr = this.profile;
            if (bArr != null) {
                iCCMarkerSegment.profile = (byte[]) bArr.clone();
            }
            return iCCMarkerSegment;
        }

        @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
        public IIOMetadataNode getNativeNode() {
            IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("app2ICC");
            byte[] bArr = this.profile;
            if (bArr != null) {
                iIOMetadataNode.setUserObject(ICC_Profile.getInstance(bArr));
            }
            return iIOMetadataNode;
        }

        @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
        public void print() {
            printTag("ICC Profile APP2");
        }

        @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
        public void write(ImageOutputStream imageOutputStream) throws IOException {
        }

        public ICCMarkerSegment(JPEGBuffer jPEGBuffer) throws IOException {
            super(jPEGBuffer);
            this.chunks = null;
            this.profile = null;
            int i = jPEGBuffer.bufPtr + 12;
            jPEGBuffer.bufPtr = i;
            int i2 = jPEGBuffer.bufAvail - 12;
            jPEGBuffer.bufAvail = i2;
            int i3 = this.length - 12;
            this.length = i3;
            byte[] bArr = jPEGBuffer.buf;
            int i4 = bArr[i] & 255;
            int i5 = bArr[i + 1] & 255;
            this.numChunks = i5;
            if (i4 > i5) {
                throw new IIOException("Image format Error; chunk num > num chunks");
            }
            if (i5 == 1) {
                int i6 = i3 - 2;
                this.length = i6;
                byte[] bArr2 = new byte[i6];
                this.profile = bArr2;
                jPEGBuffer.bufPtr = i + 2;
                jPEGBuffer.bufAvail = i2 - 2;
                jPEGBuffer.readData(bArr2);
                JFIFMarkerSegment.this.inICC = false;
                return;
            }
            byte[] bArr3 = new byte[i3];
            this.length = i3 - 2;
            jPEGBuffer.readData(bArr3);
            ArrayList<byte[]> arrayList = new ArrayList<>();
            this.chunks = arrayList;
            arrayList.add(bArr3);
            this.chunksRead = 1;
            JFIFMarkerSegment.this.inICC = true;
        }

        public ICCMarkerSegment(Node node) throws IIOInvalidTreeException {
            super(226);
            ICC_Profile iCC_Profile;
            this.chunks = null;
            this.profile = null;
            if (!(node instanceof IIOMetadataNode) || (iCC_Profile = (ICC_Profile) ((IIOMetadataNode) node).getUserObject()) == null) {
                return;
            }
            this.profile = iCC_Profile.getData();
        }
    }

    /* loaded from: classes9.dex */
    public abstract class JFIFThumbUncompressed extends JFIFThumb {
        String name;
        int thumbHeight;
        int thumbWidth;
        BufferedImage thumbnail;

        public JFIFThumbUncompressed(JPEGBuffer jPEGBuffer, int i, int i2, int i3, String str) throws IOException {
            super(jPEGBuffer);
            this.thumbnail = null;
            this.thumbWidth = i;
            this.thumbHeight = i2;
            jPEGBuffer.skipData(i3);
            this.name = str;
        }

        @Override // com.sun.imageio.plugins.jpeg.JFIFMarkerSegment.JFIFThumb
        public int getHeight() {
            return this.thumbHeight;
        }

        @Override // com.sun.imageio.plugins.jpeg.JFIFMarkerSegment.JFIFThumb
        public IIOMetadataNode getNativeNode() {
            IIOMetadataNode iIOMetadataNode = new IIOMetadataNode(this.name);
            iIOMetadataNode.setAttribute("thumbWidth", Integer.toString(this.thumbWidth));
            iIOMetadataNode.setAttribute("thumbHeight", Integer.toString(this.thumbHeight));
            return iIOMetadataNode;
        }

        @Override // com.sun.imageio.plugins.jpeg.JFIFMarkerSegment.JFIFThumb
        public int getWidth() {
            return this.thumbWidth;
        }

        @Override // com.sun.imageio.plugins.jpeg.JFIFMarkerSegment.JFIFThumb
        public void print() {
            System.out.print(this.name + " width: ");
            System.out.println(this.thumbWidth);
            System.out.print(this.name + " height: ");
            System.out.println(this.thumbHeight);
        }

        public void readByteBuffer(ImageInputStream imageInputStream, byte[] bArr, JPEGImageReader jPEGImageReader, float f, float f2) throws IOException {
            int max = Math.max((int) ((bArr.length / 20) / f), 1);
            int i = 0;
            while (i < bArr.length) {
                imageInputStream.read(bArr, i, Math.min(max, bArr.length - i));
                i += max;
                float f3 = 100.0f;
                float length = (((i * 100.0f) / bArr.length) * f) + f2;
                if (length <= 100.0f) {
                    f3 = length;
                }
                jPEGImageReader.thumbnailProgress(f3);
            }
        }

        @Override // com.sun.imageio.plugins.jpeg.JFIFMarkerSegment.JFIFThumb
        public void write(ImageOutputStream imageOutputStream, JPEGImageWriter jPEGImageWriter) throws IOException {
            if (this.thumbWidth > 255 || this.thumbHeight > 255) {
                jPEGImageWriter.warningOccurred(12);
            }
            this.thumbWidth = Math.min(this.thumbWidth, 255);
            this.thumbHeight = Math.min(this.thumbHeight, 255);
            imageOutputStream.write(this.thumbWidth);
            imageOutputStream.write(this.thumbHeight);
        }

        public void writePixels(ImageOutputStream imageOutputStream, JPEGImageWriter jPEGImageWriter) throws IOException {
            if (this.thumbWidth > 255 || this.thumbHeight > 255) {
                jPEGImageWriter.warningOccurred(12);
            }
            this.thumbWidth = Math.min(this.thumbWidth, 255);
            this.thumbHeight = Math.min(this.thumbHeight, 255);
            JFIFMarkerSegment.this.writeThumbnailData(imageOutputStream, this.thumbnail.getRaster().getPixels(0, 0, this.thumbWidth, this.thumbHeight, (int[]) null), jPEGImageWriter);
        }

        public JFIFThumbUncompressed(Node node, String str) throws IIOInvalidTreeException {
            super();
            this.thumbnail = null;
            this.thumbWidth = 0;
            this.thumbHeight = 0;
            this.name = str;
            NamedNodeMap attributes = node.getAttributes();
            int length = attributes.getLength();
            if (length > 2) {
                throw new IIOInvalidTreeException(str + " node cannot have > 2 attributes", node);
            }
            if (length != 0) {
                int attributeValue = MarkerSegment.getAttributeValue(node, attributes, "thumbWidth", 0, 255, false);
                this.thumbWidth = attributeValue == -1 ? this.thumbWidth : attributeValue;
                int attributeValue2 = MarkerSegment.getAttributeValue(node, attributes, "thumbHeight", 0, 255, false);
                this.thumbHeight = attributeValue2 == -1 ? this.thumbHeight : attributeValue2;
            }
        }

        public JFIFThumbUncompressed(BufferedImage bufferedImage) {
            super();
            this.thumbnail = bufferedImage;
            this.thumbWidth = bufferedImage.getWidth();
            this.thumbHeight = bufferedImage.getHeight();
            this.name = null;
        }
    }

    /* loaded from: classes9.dex */
    public class JFIFThumbJPEG extends JFIFThumb {
        private static final int PREAMBLE_SIZE = 6;
        byte[] data;
        JPEGMetadata thumbMetadata;

        /* loaded from: classes9.dex */
        public class ThumbnailReadListener implements IIOReadProgressListener {
            JPEGImageReader reader;

            public ThumbnailReadListener(JPEGImageReader jPEGImageReader) {
                this.reader = jPEGImageReader;
            }

            @Override // javax.imageio.event.IIOReadProgressListener
            public void imageComplete(ImageReader imageReader) {
            }

            @Override // javax.imageio.event.IIOReadProgressListener
            public void imageProgress(ImageReader imageReader, float f) {
                this.reader.thumbnailProgress(f);
            }

            @Override // javax.imageio.event.IIOReadProgressListener
            public void imageStarted(ImageReader imageReader, int i) {
            }

            @Override // javax.imageio.event.IIOReadProgressListener
            public void readAborted(ImageReader imageReader) {
            }

            @Override // javax.imageio.event.IIOReadProgressListener
            public void sequenceComplete(ImageReader imageReader) {
            }

            @Override // javax.imageio.event.IIOReadProgressListener
            public void sequenceStarted(ImageReader imageReader, int i) {
            }

            @Override // javax.imageio.event.IIOReadProgressListener
            public void thumbnailComplete(ImageReader imageReader) {
            }

            @Override // javax.imageio.event.IIOReadProgressListener
            public void thumbnailProgress(ImageReader imageReader, float f) {
            }

            @Override // javax.imageio.event.IIOReadProgressListener
            public void thumbnailStarted(ImageReader imageReader, int i, int i2) {
            }
        }

        public JFIFThumbJPEG(JPEGBuffer jPEGBuffer, int i, JPEGImageReader jPEGImageReader) throws IOException {
            super(jPEGBuffer);
            this.thumbMetadata = null;
            this.data = null;
            long j = this.streamPos;
            jPEGBuffer.iis.seek(j);
            this.thumbMetadata = new JPEGMetadata(false, true, jPEGBuffer.iis, jPEGImageReader);
            jPEGBuffer.iis.seek((i - 6) + j);
            jPEGBuffer.bufAvail = 0;
            jPEGBuffer.bufPtr = 0;
        }

        @Override // com.sun.imageio.plugins.jpeg.JFIFMarkerSegment.JFIFThumb
        public Object clone() {
            JFIFThumbJPEG jFIFThumbJPEG = (JFIFThumbJPEG) super.clone();
            JPEGMetadata jPEGMetadata = this.thumbMetadata;
            if (jPEGMetadata != null) {
                jFIFThumbJPEG.thumbMetadata = (JPEGMetadata) jPEGMetadata.clone();
            }
            return jFIFThumbJPEG;
        }

        @Override // com.sun.imageio.plugins.jpeg.JFIFMarkerSegment.JFIFThumb
        public int getHeight() {
            SOFMarkerSegment sOFMarkerSegment = (SOFMarkerSegment) this.thumbMetadata.findMarkerSegment(SOFMarkerSegment.class, true);
            if (sOFMarkerSegment != null) {
                return sOFMarkerSegment.numLines;
            }
            return 0;
        }

        @Override // com.sun.imageio.plugins.jpeg.JFIFMarkerSegment.JFIFThumb
        public int getLength() {
            byte[] bArr = this.data;
            if (bArr == null) {
                return 0;
            }
            return bArr.length;
        }

        @Override // com.sun.imageio.plugins.jpeg.JFIFMarkerSegment.JFIFThumb
        public IIOMetadataNode getNativeNode() {
            IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("JFIFthumbJPEG");
            JPEGMetadata jPEGMetadata = this.thumbMetadata;
            if (jPEGMetadata != null) {
                iIOMetadataNode.appendChild(jPEGMetadata.getNativeTree());
            }
            return iIOMetadataNode;
        }

        @Override // com.sun.imageio.plugins.jpeg.JFIFMarkerSegment.JFIFThumb
        public BufferedImage getThumbnail(ImageInputStream imageInputStream, JPEGImageReader jPEGImageReader) throws IOException {
            imageInputStream.mark();
            imageInputStream.seek(this.streamPos);
            JPEGImageReader jPEGImageReader2 = new JPEGImageReader(null);
            jPEGImageReader2.setInput(imageInputStream);
            jPEGImageReader2.addIIOReadProgressListener(new ThumbnailReadListener(jPEGImageReader));
            BufferedImage read = jPEGImageReader2.read(0, null);
            jPEGImageReader2.dispose();
            imageInputStream.reset();
            return read;
        }

        @Override // com.sun.imageio.plugins.jpeg.JFIFMarkerSegment.JFIFThumb
        public int getWidth() {
            SOFMarkerSegment sOFMarkerSegment = (SOFMarkerSegment) this.thumbMetadata.findMarkerSegment(SOFMarkerSegment.class, true);
            if (sOFMarkerSegment != null) {
                return sOFMarkerSegment.samplesPerLine;
            }
            return 0;
        }

        @Override // com.sun.imageio.plugins.jpeg.JFIFMarkerSegment.JFIFThumb
        public void print() {
            System.out.println("JFIF thumbnail stored as JPEG");
        }

        @Override // com.sun.imageio.plugins.jpeg.JFIFMarkerSegment.JFIFThumb
        public void write(ImageOutputStream imageOutputStream, JPEGImageWriter jPEGImageWriter) throws IOException {
            int length = this.data.length / 20;
            if (length == 0) {
                length = 1;
            }
            int i = 0;
            while (true) {
                byte[] bArr = this.data;
                if (i >= bArr.length) {
                    return;
                }
                imageOutputStream.write(this.data, i, Math.min(length, bArr.length - i));
                i += length;
                float f = 100.0f;
                float length2 = (i * 100.0f) / this.data.length;
                if (length2 <= 100.0f) {
                    f = length2;
                }
                jPEGImageWriter.thumbnailProgress(f);
            }
        }

        public JFIFThumbJPEG(Node node) throws IIOInvalidTreeException {
            super();
            this.thumbMetadata = null;
            this.data = null;
            if (node.getChildNodes().getLength() <= 1) {
                Node firstChild = node.getFirstChild();
                if (firstChild != null) {
                    if (firstChild.getNodeName().equals("markerSequence")) {
                        JPEGMetadata jPEGMetadata = new JPEGMetadata(false, true);
                        this.thumbMetadata = jPEGMetadata;
                        jPEGMetadata.setFromMarkerSequenceNode(firstChild);
                        return;
                    }
                    throw new IIOInvalidTreeException("JFIFThumbJPEG child must be a markerSequence node", node);
                }
                return;
            }
            throw new IIOInvalidTreeException("JFIFThumbJPEG node must have 0 or 1 child", node);
        }

        public JFIFThumbJPEG(BufferedImage bufferedImage) throws IllegalThumbException {
            super();
            this.thumbMetadata = null;
            this.data = null;
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(4096);
                MemoryCacheImageOutputStream memoryCacheImageOutputStream = new MemoryCacheImageOutputStream(byteArrayOutputStream);
                JPEGImageWriter jPEGImageWriter = new JPEGImageWriter(null);
                jPEGImageWriter.setOutput(memoryCacheImageOutputStream);
                JPEGMetadata jPEGMetadata = (JPEGMetadata) jPEGImageWriter.getDefaultImageMetadata(new ImageTypeSpecifier(bufferedImage), null);
                MarkerSegment findMarkerSegment = jPEGMetadata.findMarkerSegment(JFIFMarkerSegment.class, true);
                if (findMarkerSegment != null) {
                    jPEGMetadata.markerSequence.remove(findMarkerSegment);
                    jPEGImageWriter.write(new IIOImage(bufferedImage, (List<? extends BufferedImage>) null, jPEGMetadata));
                    jPEGImageWriter.dispose();
                    if (byteArrayOutputStream.size() <= 65527) {
                        this.data = byteArrayOutputStream.toByteArray();
                        return;
                    }
                    throw new IllegalThumbException();
                }
                throw new IllegalThumbException();
            } catch (IOException unused) {
                throw new IllegalThumbException();
            }
        }
    }

    public void addICC(ICC_ColorSpace iCC_ColorSpace) throws IOException {
        if (this.iccSegment == null) {
            this.iccSegment = new ICCMarkerSegment(iCC_ColorSpace);
            return;
        }
        throw new IIOException("> 1 ICC APP2 Marker Segment not supported");
    }

    /* loaded from: classes9.dex */
    public class JFIFExtensionMarkerSegment extends MarkerSegment {
        private static final int DATA_SIZE = 6;
        private static final int ID_SIZE = 5;
        int code;
        JFIFThumb thumb;

        public JFIFExtensionMarkerSegment(JPEGBuffer jPEGBuffer, JPEGImageReader jPEGImageReader) throws IOException {
            super(jPEGBuffer);
            int i = jPEGBuffer.bufPtr + 5;
            byte[] bArr = jPEGBuffer.buf;
            jPEGBuffer.bufPtr = i + 1;
            int i2 = bArr[i] & 255;
            this.code = i2;
            jPEGBuffer.bufAvail -= 6;
            if (i2 == 16) {
                this.thumb = new JFIFThumbJPEG(jPEGBuffer, this.length, jPEGImageReader);
                return;
            }
            jPEGBuffer.loadBuf(2);
            byte[] bArr2 = jPEGBuffer.buf;
            int i3 = jPEGBuffer.bufPtr;
            int i4 = i3 + 1;
            int i5 = bArr2[i3] & 255;
            jPEGBuffer.bufPtr = i4 + 1;
            int i6 = bArr2[i4] & 255;
            jPEGBuffer.bufAvail -= 2;
            if (this.code == 17) {
                this.thumb = new JFIFThumbPalette(jPEGBuffer, i5, i6);
            } else {
                this.thumb = new JFIFThumbRGB(jPEGBuffer, i5, i6);
            }
        }

        @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
        public Object clone() {
            JFIFExtensionMarkerSegment jFIFExtensionMarkerSegment = (JFIFExtensionMarkerSegment) super.clone();
            JFIFThumb jFIFThumb = this.thumb;
            if (jFIFThumb != null) {
                jFIFExtensionMarkerSegment.thumb = (JFIFThumb) jFIFThumb.clone();
            }
            return jFIFExtensionMarkerSegment;
        }

        @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
        public IIOMetadataNode getNativeNode() {
            IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("app0JFXX");
            iIOMetadataNode.setAttribute("extensionCode", Integer.toString(this.code));
            iIOMetadataNode.appendChild(this.thumb.getNativeNode());
            return iIOMetadataNode;
        }

        @Override // com.sun.imageio.plugins.jpeg.MarkerSegment
        public void print() {
            printTag("JFXX");
            this.thumb.print();
        }

        public void setThumbnail(BufferedImage bufferedImage) {
            try {
                int i = this.code;
                if (i == 16) {
                    this.thumb = new JFIFThumbJPEG(bufferedImage);
                } else if (i == 17) {
                    this.thumb = new JFIFThumbPalette(bufferedImage);
                } else {
                    if (i != 19) {
                        return;
                    }
                    this.thumb = new JFIFThumbRGB(bufferedImage);
                }
            } catch (IllegalThumbException e) {
                throw new InternalError("Illegal thumb in setThumbnail!", e);
            }
        }

        public void write(ImageOutputStream imageOutputStream, JPEGImageWriter jPEGImageWriter) throws IOException {
            this.length = this.thumb.getLength() + 8;
            writeTag(imageOutputStream);
            imageOutputStream.write(new byte[]{JSONB.Constants.BC_STR_ASCII_FIX_1, 70, TarConstants.LF_PAX_EXTENDED_HEADER_UC, TarConstants.LF_PAX_EXTENDED_HEADER_UC, 0});
            imageOutputStream.write(this.code);
            this.thumb.write(imageOutputStream, jPEGImageWriter);
        }

        public JFIFExtensionMarkerSegment(Node node) throws IIOInvalidTreeException {
            super(224);
            NamedNodeMap attributes = node.getAttributes();
            if (attributes.getLength() > 0) {
                int attributeValue = MarkerSegment.getAttributeValue(node, attributes, "extensionCode", 16, 19, false);
                this.code = attributeValue;
                if (attributeValue == 18) {
                    throw new IIOInvalidTreeException("invalid extensionCode attribute value", node);
                }
            } else {
                this.code = 18;
            }
            if (node.getChildNodes().getLength() == 1) {
                Node firstChild = node.getFirstChild();
                String nodeName = firstChild.getNodeName();
                if (nodeName.equals("JFIFthumbJPEG")) {
                    if (this.code == 18) {
                        this.code = 16;
                    }
                    this.thumb = new JFIFThumbJPEG(firstChild);
                    return;
                } else if (nodeName.equals("JFIFthumbPalette")) {
                    if (this.code == 18) {
                        this.code = 17;
                    }
                    this.thumb = new JFIFThumbPalette(firstChild);
                    return;
                } else {
                    if (nodeName.equals("JFIFthumbRGB")) {
                        if (this.code == 18) {
                            this.code = 19;
                        }
                        this.thumb = new JFIFThumbRGB(firstChild);
                        return;
                    }
                    throw new IIOInvalidTreeException("unrecognized app0JFXX child node", node);
                }
            }
            throw new IIOInvalidTreeException("app0JFXX node must have exactly 1 child", node);
        }

        public JFIFExtensionMarkerSegment(BufferedImage bufferedImage) throws IllegalThumbException {
            super(224);
            ColorModel colorModel = bufferedImage.getColorModel();
            int type = colorModel.getColorSpace().getType();
            if (!colorModel.hasAlpha()) {
                if (colorModel instanceof IndexColorModel) {
                    this.code = 17;
                    this.thumb = new JFIFThumbPalette(bufferedImage);
                    return;
                } else if (type == 5) {
                    this.code = 19;
                    this.thumb = new JFIFThumbRGB(bufferedImage);
                    return;
                } else {
                    if (type == 6) {
                        this.code = 16;
                        this.thumb = new JFIFThumbJPEG(bufferedImage);
                        return;
                    }
                    throw new IllegalThumbException();
                }
            }
            throw new IllegalThumbException();
        }
    }

    public JFIFMarkerSegment(JPEGBuffer jPEGBuffer) throws IOException {
        super(jPEGBuffer);
        this.thumb = null;
        this.extSegments = new ArrayList<>();
        this.iccSegment = null;
        this.MAX_THUMB_WIDTH = 255;
        this.MAX_THUMB_HEIGHT = 255;
        this.debug = false;
        this.inICC = false;
        this.tempICCSegment = null;
        int i = jPEGBuffer.bufPtr + 5;
        byte[] bArr = jPEGBuffer.buf;
        int i2 = i + 1;
        this.majorVersion = bArr[i];
        int i3 = i2 + 1;
        this.minorVersion = bArr[i2];
        int i4 = i3 + 1;
        this.resUnits = bArr[i3];
        int i5 = i4 + 1;
        int i6 = i5 + 1;
        this.Xdensity = (bArr[i5] & 255) | ((bArr[i4] & 255) << 8);
        int i7 = i6 + 1;
        int i8 = (bArr[i6] & 255) << 8;
        int i9 = i7 + 1;
        this.Ydensity = (bArr[i7] & 255) | i8;
        int i10 = i9 + 1;
        int i11 = bArr[i9] & 255;
        this.thumbWidth = i11;
        jPEGBuffer.bufPtr = i10 + 1;
        int i12 = bArr[i10] & 255;
        this.thumbHeight = i12;
        jPEGBuffer.bufAvail -= 14;
        if (i11 > 0) {
            this.thumb = new JFIFThumbRGB(jPEGBuffer, i11, i12);
        }
    }

    public JFIFMarkerSegment(Node node) throws IIOInvalidTreeException {
        this();
        updateFromNativeNode(node, true);
    }
}
