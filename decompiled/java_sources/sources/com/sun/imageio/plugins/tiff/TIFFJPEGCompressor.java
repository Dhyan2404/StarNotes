package com.sun.imageio.plugins.tiff;

import com.sun.imageio.plugins.jpeg.JPEG;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.Iterator;
import javax.imageio.ImageReader;
import javax.imageio.ImageWriteParam;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.plugins.tiff.BaselineTIFFTagSet;
import javax.imageio.plugins.tiff.TIFFField;
import javax.imageio.spi.IIORegistry;
import javax.imageio.spi.ImageReaderSpi;
import javax.imageio.spi.ServiceRegistry;
import javax.imageio.stream.MemoryCacheImageInputStream;
import javax.imageio.stream.MemoryCacheImageOutputStream;

/* loaded from: classes9.dex */
public class TIFFJPEGCompressor extends TIFFBaseJPEGCompressor {
    static final int CHROMA_SUBSAMPLING = 2;

    /* loaded from: classes9.dex */
    public static class JPEGSPIFilter implements ServiceRegistry.Filter {
        @Override // javax.imageio.spi.ServiceRegistry.Filter
        public boolean filter(Object obj) {
            String nativeStreamMetadataFormatName;
            ImageReaderSpi imageReaderSpi = (ImageReaderSpi) obj;
            if (imageReaderSpi == null || (nativeStreamMetadataFormatName = imageReaderSpi.getNativeStreamMetadataFormatName()) == null) {
                return false;
            }
            return nativeStreamMetadataFormatName.equals(JPEG.nativeStreamMetadataFormatName);
        }
    }

    public TIFFJPEGCompressor(ImageWriteParam imageWriteParam) {
        super("JPEG", 7, false, imageWriteParam);
    }

    private static ImageReader getJPEGTablesReader() {
        try {
            Iterator serviceProviders = IIORegistry.getDefaultInstance().getServiceProviders(ImageReaderSpi.class, new JPEGSPIFilter(), true);
            if (serviceProviders.hasNext()) {
                return ((ImageReaderSpi) serviceProviders.next()).createReaderInstance();
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFCompressor
    public void setMetadata(IIOMetadata iIOMetadata) {
        super.setMetadata(iIOMetadata);
        if (iIOMetadata instanceof TIFFImageMetadata) {
            TIFFImageMetadata tIFFImageMetadata = (TIFFImageMetadata) iIOMetadata;
            TIFFIFD rootIFD = tIFFImageMetadata.getRootIFD();
            BaselineTIFFTagSet baselineTIFFTagSet = BaselineTIFFTagSet.getInstance();
            if (tIFFImageMetadata.getTIFFField(277).getAsInt(0) == 1) {
                rootIFD.removeTIFFField(530);
                rootIFD.removeTIFFField(531);
                rootIFD.removeTIFFField(532);
            } else {
                rootIFD.addTIFFField(new TIFFField(baselineTIFFTagSet.getTag(530), 3, 2, new char[]{2, 2}));
                rootIFD.addTIFFField(new TIFFField(baselineTIFFTagSet.getTag(531), 3, 1, new char[]{1}));
                rootIFD.addTIFFField(new TIFFField(baselineTIFFTagSet.getTag(532), 5, 6, new long[][]{new long[]{0, 1}, new long[]{255, 1}, new long[]{128, 1}, new long[]{255, 1}, new long[]{128, 1}, new long[]{255, 1}}));
            }
            TIFFField tIFFField = tIFFImageMetadata.getTIFFField(347);
            if (tIFFField != null) {
                initJPEGWriter(true, false);
            }
            if (tIFFField == null || this.JPEGWriter == null) {
                rootIFD.removeTIFFField(347);
                initJPEGWriter(false, false);
                return;
            }
            this.writeAbbreviatedStream = true;
            if (tIFFField.getCount() > 0) {
                MemoryCacheImageInputStream memoryCacheImageInputStream = new MemoryCacheImageInputStream(new ByteArrayInputStream(tIFFField.getAsBytes()));
                ImageReader jPEGTablesReader = getJPEGTablesReader();
                jPEGTablesReader.setInput(memoryCacheImageInputStream);
                try {
                    try {
                        this.JPEGStreamMetadata = jPEGTablesReader.getStreamMetadata();
                    } catch (Exception unused) {
                        this.JPEGStreamMetadata = null;
                    }
                } finally {
                    jPEGTablesReader.reset();
                }
            }
            if (this.JPEGStreamMetadata == null) {
                this.JPEGStreamMetadata = this.JPEGWriter.getDefaultStreamMetadata(this.JPEGParam);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                MemoryCacheImageOutputStream memoryCacheImageOutputStream = new MemoryCacheImageOutputStream(byteArrayOutputStream);
                this.JPEGWriter.setOutput(memoryCacheImageOutputStream);
                try {
                    this.JPEGWriter.prepareWriteSequence(this.JPEGStreamMetadata);
                    memoryCacheImageOutputStream.flush();
                    this.JPEGWriter.endWriteSequence();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    rootIFD.addTIFFField(new TIFFField(baselineTIFFTagSet.getTag(347), 7, byteArray.length, byteArray));
                } catch (Exception unused2) {
                    rootIFD.removeTIFFField(347);
                    this.writeAbbreviatedStream = false;
                }
            }
        }
    }
}
