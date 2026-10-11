package com.twelvemonkeys.imageio.plugins.jpeg;

import com.sunia.HTREnginev2.zqi;
import com.twelvemonkeys.imageio.spi.ImageReaderSpiBase;
import com.twelvemonkeys.imageio.spi.ReaderWriterProviderInfo;
import com.twelvemonkeys.imageio.util.IIOUtil;
import com.twelvemonkeys.lang.Validate;
import java.io.IOException;
import java.util.Iterator;
import java.util.Locale;
import javax.imageio.ImageReader;
import javax.imageio.metadata.IIOMetadataFormat;
import javax.imageio.spi.ImageReaderSpi;
import javax.imageio.spi.ServiceRegistry;

/* loaded from: classes10.dex */
public class JPEGImageReaderSpi extends ImageReaderSpiBase {
    protected ImageReaderSpi delegateProvider;

    public JPEGImageReaderSpi() {
        this(new zqi());
    }

    /* renamed from: b */
    public static ImageReaderSpi m60544b(ServiceRegistry serviceRegistry) {
        Iterator serviceProviders = serviceRegistry.getServiceProviders(ImageReaderSpi.class, true);
        while (serviceProviders.hasNext()) {
            ImageReaderSpi imageReaderSpi = (ImageReaderSpi) serviceProviders.next();
            if (imageReaderSpi.getClass().getName().equals("com.sun.imageio.plugins.jpeg.JPEGImageReaderSpi")) {
                return imageReaderSpi;
            }
        }
        return null;
    }

    @Override // javax.imageio.spi.ImageReaderSpi
    public boolean canDecodeInput(Object obj) throws IOException {
        return this.delegateProvider.canDecodeInput(obj);
    }

    @Override // javax.imageio.spi.ImageReaderSpi
    public ImageReader createReaderInstance(Object obj) throws IOException {
        return new JPEGImageReader(this, this.delegateProvider.createReaderInstance(obj));
    }

    @Override // javax.imageio.spi.IIOServiceProvider
    public String getDescription(Locale locale) {
        return this.delegateProvider.getDescription(locale);
    }

    @Override // javax.imageio.spi.ImageReaderWriterSpi
    public String[] getExtraImageMetadataFormatNames() {
        return this.delegateProvider.getExtraImageMetadataFormatNames();
    }

    @Override // javax.imageio.spi.ImageReaderWriterSpi
    public String[] getExtraStreamMetadataFormatNames() {
        return this.delegateProvider.getExtraStreamMetadataFormatNames();
    }

    @Override // javax.imageio.spi.ImageReaderWriterSpi
    public String[] getFileSuffixes() {
        return this.delegateProvider.getFileSuffixes();
    }

    @Override // javax.imageio.spi.ImageReaderWriterSpi
    public String[] getFormatNames() {
        return this.delegateProvider.getFormatNames();
    }

    @Override // javax.imageio.spi.ImageReaderWriterSpi
    public IIOMetadataFormat getImageMetadataFormat(String str) {
        return this.delegateProvider.getImageMetadataFormat(str);
    }

    @Override // javax.imageio.spi.ImageReaderSpi
    public Class[] getInputTypes() {
        return this.delegateProvider.getInputTypes();
    }

    @Override // javax.imageio.spi.ImageReaderWriterSpi
    public String[] getMIMETypes() {
        return this.delegateProvider.getMIMETypes();
    }

    @Override // javax.imageio.spi.ImageReaderWriterSpi
    public String getNativeImageMetadataFormatName() {
        return this.delegateProvider.getNativeImageMetadataFormatName();
    }

    @Override // javax.imageio.spi.ImageReaderWriterSpi
    public String getNativeStreamMetadataFormatName() {
        return this.delegateProvider.getNativeStreamMetadataFormatName();
    }

    @Override // javax.imageio.spi.ImageReaderWriterSpi
    public IIOMetadataFormat getStreamMetadataFormat(String str) {
        return this.delegateProvider.getStreamMetadataFormat(str);
    }

    @Override // javax.imageio.spi.IIOServiceProvider
    public String getVendorName() {
        return String.format("%s/%s", super.getVendorName(), this.delegateProvider.getVendorName());
    }

    @Override // javax.imageio.spi.IIOServiceProvider
    public String getVersion() {
        return String.format("%s/%s", super.getVersion(), this.delegateProvider.getVersion());
    }

    @Override // javax.imageio.spi.ImageReaderWriterSpi
    public boolean isStandardImageMetadataFormatSupported() {
        return this.delegateProvider.isStandardImageMetadataFormatSupported();
    }

    @Override // javax.imageio.spi.ImageReaderWriterSpi
    public boolean isStandardStreamMetadataFormatSupported() {
        return this.delegateProvider.isStandardStreamMetadataFormatSupported();
    }

    @Override // javax.imageio.spi.IIOServiceProvider, javax.imageio.spi.RegisterableService
    public void onRegistration(ServiceRegistry serviceRegistry, Class<?> cls) {
        if (this.delegateProvider == null) {
            this.delegateProvider = m60544b(serviceRegistry);
        }
        ImageReaderSpi imageReaderSpi = this.delegateProvider;
        if (imageReaderSpi != null) {
            serviceRegistry.setOrdering(cls, this, imageReaderSpi);
        } else {
            IIOUtil.deregisterProvider(serviceRegistry, this, cls);
        }
    }

    public JPEGImageReaderSpi(ImageReaderSpi imageReaderSpi) {
        this();
        this.delegateProvider = (ImageReaderSpi) Validate.notNull(imageReaderSpi);
    }

    public JPEGImageReaderSpi(ReaderWriterProviderInfo readerWriterProviderInfo) {
        super(readerWriterProviderInfo);
    }
}
