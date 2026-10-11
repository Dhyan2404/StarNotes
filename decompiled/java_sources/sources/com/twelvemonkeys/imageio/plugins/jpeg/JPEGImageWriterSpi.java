package com.twelvemonkeys.imageio.plugins.jpeg;

import com.sunia.HTREnginev2.zqi;
import com.twelvemonkeys.imageio.spi.ImageWriterSpiBase;
import com.twelvemonkeys.imageio.util.IIOUtil;
import com.twelvemonkeys.lang.Validate;
import java.awt.image.RenderedImage;
import java.io.IOException;
import java.util.Iterator;
import java.util.Locale;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.ImageWriter;
import javax.imageio.metadata.IIOMetadataFormat;
import javax.imageio.spi.ImageWriterSpi;
import javax.imageio.spi.ServiceRegistry;

/* loaded from: classes10.dex */
public class JPEGImageWriterSpi extends ImageWriterSpiBase {

    /* renamed from: a */
    public ImageWriterSpi f94096a;

    public JPEGImageWriterSpi() {
        super(new zqi());
    }

    /* renamed from: b */
    public static ImageWriterSpi m60554b(ServiceRegistry serviceRegistry) {
        Iterator serviceProviders = serviceRegistry.getServiceProviders(ImageWriterSpi.class, true);
        while (serviceProviders.hasNext()) {
            ImageWriterSpi imageWriterSpi = (ImageWriterSpi) serviceProviders.next();
            if (imageWriterSpi.getClass().getName().equals("com.sun.imageio.plugins.jpeg.JPEGImageWriterSpi")) {
                return imageWriterSpi;
            }
        }
        return null;
    }

    @Override // javax.imageio.spi.ImageWriterSpi
    public boolean canEncodeImage(ImageTypeSpecifier imageTypeSpecifier) {
        return this.f94096a.canEncodeImage(imageTypeSpecifier);
    }

    @Override // javax.imageio.spi.ImageWriterSpi
    public ImageWriter createWriterInstance(Object obj) throws IOException {
        return new JPEGImageWriter(this, this.f94096a.createWriterInstance(obj));
    }

    @Override // javax.imageio.spi.IIOServiceProvider
    public String getDescription(Locale locale) {
        return this.f94096a.getDescription(locale);
    }

    @Override // javax.imageio.spi.ImageReaderWriterSpi
    public String[] getExtraImageMetadataFormatNames() {
        return this.f94096a.getExtraImageMetadataFormatNames();
    }

    @Override // javax.imageio.spi.ImageReaderWriterSpi
    public String[] getExtraStreamMetadataFormatNames() {
        return this.f94096a.getExtraStreamMetadataFormatNames();
    }

    @Override // javax.imageio.spi.ImageReaderWriterSpi
    public String[] getFileSuffixes() {
        return this.f94096a.getFileSuffixes();
    }

    @Override // javax.imageio.spi.ImageReaderWriterSpi
    public String[] getFormatNames() {
        return this.f94096a.getFormatNames();
    }

    @Override // javax.imageio.spi.ImageReaderWriterSpi
    public IIOMetadataFormat getImageMetadataFormat(String str) {
        return this.f94096a.getImageMetadataFormat(str);
    }

    @Override // javax.imageio.spi.ImageReaderWriterSpi
    public String[] getMIMETypes() {
        return this.f94096a.getMIMETypes();
    }

    @Override // javax.imageio.spi.ImageReaderWriterSpi
    public String getNativeImageMetadataFormatName() {
        return this.f94096a.getNativeImageMetadataFormatName();
    }

    @Override // javax.imageio.spi.ImageReaderWriterSpi
    public String getNativeStreamMetadataFormatName() {
        return this.f94096a.getNativeStreamMetadataFormatName();
    }

    @Override // javax.imageio.spi.ImageWriterSpi
    public Class[] getOutputTypes() {
        return this.f94096a.getOutputTypes();
    }

    @Override // javax.imageio.spi.ImageReaderWriterSpi
    public IIOMetadataFormat getStreamMetadataFormat(String str) {
        return this.f94096a.getStreamMetadataFormat(str);
    }

    @Override // javax.imageio.spi.IIOServiceProvider
    public String getVendorName() {
        return String.format("%s/%s", super.getVendorName(), this.f94096a.getVendorName());
    }

    @Override // javax.imageio.spi.IIOServiceProvider
    public String getVersion() {
        return String.format("%s/%s", super.getVersion(), this.f94096a.getVersion());
    }

    @Override // javax.imageio.spi.ImageWriterSpi
    public boolean isFormatLossless() {
        return this.f94096a.isFormatLossless();
    }

    @Override // javax.imageio.spi.ImageReaderWriterSpi
    public boolean isStandardImageMetadataFormatSupported() {
        return this.f94096a.isStandardImageMetadataFormatSupported();
    }

    @Override // javax.imageio.spi.ImageReaderWriterSpi
    public boolean isStandardStreamMetadataFormatSupported() {
        return this.f94096a.isStandardStreamMetadataFormatSupported();
    }

    @Override // javax.imageio.spi.IIOServiceProvider, javax.imageio.spi.RegisterableService
    public void onRegistration(ServiceRegistry serviceRegistry, Class<?> cls) {
        if (this.f94096a == null) {
            this.f94096a = m60554b(serviceRegistry);
        }
        ImageWriterSpi imageWriterSpi = this.f94096a;
        if (imageWriterSpi != null) {
            serviceRegistry.setOrdering(cls, this, imageWriterSpi);
        } else {
            IIOUtil.deregisterProvider(serviceRegistry, this, cls);
        }
    }

    public JPEGImageWriterSpi(ImageWriterSpi imageWriterSpi) {
        this();
        this.f94096a = (ImageWriterSpi) Validate.notNull(imageWriterSpi);
    }

    @Override // javax.imageio.spi.ImageWriterSpi
    public boolean canEncodeImage(RenderedImage renderedImage) {
        return this.f94096a.canEncodeImage(renderedImage);
    }
}
