package org.apache.poi.sl.usermodel;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.ServiceLoader;
import java.util.function.Consumer;
import java.util.function.Predicate;
import org.apache.poi.EmptyFileException;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.extractor.ExtractorFactory;
import org.apache.poi.poifs.crypt.Decryptor;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.FileMagic;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.sl.usermodel.SlideShowFactory;
import org.apache.poi.sl.usermodel.SlideShowProvider;

/* loaded from: classes12.dex */
public final class SlideShowFactory {
    private final List<SlideShowProvider<?, ?>> provider;

    /* loaded from: classes12.dex */
    public interface ProviderMethod {
        SlideShow<?, ?> create(SlideShowProvider<?, ?> slideShowProvider) throws IOException;
    }

    /* loaded from: classes12.dex */
    public static class Singleton {
        private static final SlideShowFactory INSTANCE = new SlideShowFactory();

        private Singleton() {
        }
    }

    public static void addProvider(SlideShowProvider<?, ?> slideShowProvider) {
        Singleton.INSTANCE.provider.add(slideShowProvider);
    }

    public static SlideShow<?, ?> create(boolean z) throws IOException {
        return m69486wp(z ? FileMagic.OOXML : FileMagic.OLE2, new ProviderMethod() { // from class: org.apache.poi.sl.usermodel.a
            @Override // org.apache.poi.sl.usermodel.SlideShowFactory.ProviderMethod
            public final SlideShow create(SlideShowProvider slideShowProvider) {
                return slideShowProvider.create();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SlideShow lambda$create$0(DirectoryNode directoryNode, String str, SlideShowProvider slideShowProvider) throws IOException {
        return slideShowProvider.create(directoryNode, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SlideShow lambda$create$1(DirectoryNode directoryNode, String str, SlideShowProvider slideShowProvider) throws IOException {
        return slideShowProvider.create(directoryNode, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SlideShow lambda$create$2(InputStream inputStream, SlideShowProvider slideShowProvider) throws IOException {
        return slideShowProvider.create(inputStream);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SlideShow lambda$create$3(POIFSFileSystem pOIFSFileSystem, String str, SlideShowProvider slideShowProvider) throws IOException {
        return slideShowProvider.create(pOIFSFileSystem.getRoot(), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SlideShow lambda$create$4(File file, String str, boolean z, SlideShowProvider slideShowProvider) throws IOException {
        return slideShowProvider.create(file, str, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SlideShow lambda$create$5(File file, String str, boolean z, SlideShowProvider slideShowProvider) throws IOException {
        return slideShowProvider.create(file, str, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$removeProvider$6(Class cls, SlideShowProvider slideShowProvider) {
        return slideShowProvider.getClass().isAssignableFrom(cls);
    }

    public static void removeProvider(final Class<? extends SlideShowProvider<?, ?>> cls) {
        Singleton.INSTANCE.provider.removeIf(new Predicate() { // from class: com.sunia.HTREnginev2.lum
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$removeProvider$6;
                lambda$removeProvider$6 = SlideShowFactory.lambda$removeProvider$6(cls, (SlideShowProvider) obj);
                return lambda$removeProvider$6;
            }
        });
    }

    /* renamed from: wp */
    private static SlideShow<?, ?> m69486wp(FileMagic fileMagic, ProviderMethod providerMethod) throws IOException {
        for (SlideShowProvider<?, ?> slideShowProvider : Singleton.INSTANCE.provider) {
            if (slideShowProvider.accepts(fileMagic)) {
                return providerMethod.create(slideShowProvider);
            }
        }
        throw new IOException("Your InputStream was neither an OLE2 stream, nor an OOXML stream or you haven't provide the poi-ooxml*.jar in the classpath/modulepath - FileMagic: " + fileMagic);
    }

    private SlideShowFactory() {
        final ArrayList arrayList = new ArrayList();
        this.provider = arrayList;
        ServiceLoader.load(SlideShowProvider.class, SlideShowFactory.class.getClassLoader()).forEach(new Consumer() { // from class: com.sunia.HTREnginev2.mum
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                arrayList.add((SlideShowProvider) obj);
            }
        });
    }

    public static SlideShow<?, ?> create(POIFSFileSystem pOIFSFileSystem) throws IOException {
        return create(pOIFSFileSystem, (String) null);
    }

    private static SlideShow<?, ?> create(POIFSFileSystem pOIFSFileSystem, String str) throws IOException {
        return create(pOIFSFileSystem.getRoot(), str);
    }

    public static SlideShow<?, ?> create(DirectoryNode directoryNode) throws IOException {
        return create(directoryNode, (String) null);
    }

    public static SlideShow<?, ?> create(final DirectoryNode directoryNode, final String str) throws IOException {
        if (!directoryNode.hasEntry(Decryptor.DEFAULT_POIFS_ENTRY) && !directoryNode.hasEntry(ExtractorFactory.OOXML_PACKAGE)) {
            return m69486wp(FileMagic.OLE2, new ProviderMethod() { // from class: org.apache.poi.sl.usermodel.g
                @Override // org.apache.poi.sl.usermodel.SlideShowFactory.ProviderMethod
                public final SlideShow create(SlideShowProvider slideShowProvider) {
                    SlideShow lambda$create$1;
                    lambda$create$1 = SlideShowFactory.lambda$create$1(DirectoryNode.this, str, slideShowProvider);
                    return lambda$create$1;
                }
            });
        }
        return m69486wp(FileMagic.OOXML, new ProviderMethod() { // from class: org.apache.poi.sl.usermodel.f
            @Override // org.apache.poi.sl.usermodel.SlideShowFactory.ProviderMethod
            public final SlideShow create(SlideShowProvider slideShowProvider) {
                SlideShow lambda$create$0;
                lambda$create$0 = SlideShowFactory.lambda$create$0(DirectoryNode.this, str, slideShowProvider);
                return lambda$create$0;
            }
        });
    }

    public static SlideShow<?, ?> create(InputStream inputStream) throws IOException, EncryptedDocumentException {
        return create(inputStream, (String) null);
    }

    public static SlideShow<?, ?> create(InputStream inputStream, final String str) throws IOException, EncryptedDocumentException {
        final InputStream prepareToCheckMagic = FileMagic.prepareToCheckMagic(inputStream);
        boolean z = true;
        prepareToCheckMagic.mark(1);
        if (prepareToCheckMagic.read(new byte[1]) >= 1) {
            prepareToCheckMagic.reset();
            FileMagic valueOf = FileMagic.valueOf(prepareToCheckMagic);
            FileMagic fileMagic = FileMagic.OOXML;
            if (fileMagic == valueOf) {
                return m69486wp(valueOf, new ProviderMethod() { // from class: org.apache.poi.sl.usermodel.d
                    @Override // org.apache.poi.sl.usermodel.SlideShowFactory.ProviderMethod
                    public final SlideShow create(SlideShowProvider slideShowProvider) {
                        SlideShow lambda$create$2;
                        lambda$create$2 = SlideShowFactory.lambda$create$2(prepareToCheckMagic, slideShowProvider);
                        return lambda$create$2;
                    }
                });
            }
            if (FileMagic.OLE2 == valueOf) {
                final POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem(prepareToCheckMagic);
                DirectoryNode root = pOIFSFileSystem.getRoot();
                if (!root.hasEntry(Decryptor.DEFAULT_POIFS_ENTRY) && !root.hasEntry(ExtractorFactory.OOXML_PACKAGE)) {
                    z = false;
                }
                if (z) {
                    valueOf = fileMagic;
                }
                return m69486wp(valueOf, new ProviderMethod() { // from class: org.apache.poi.sl.usermodel.e
                    @Override // org.apache.poi.sl.usermodel.SlideShowFactory.ProviderMethod
                    public final SlideShow create(SlideShowProvider slideShowProvider) {
                        SlideShow lambda$create$3;
                        lambda$create$3 = SlideShowFactory.lambda$create$3(POIFSFileSystem.this, str, slideShowProvider);
                        return lambda$create$3;
                    }
                });
            }
            throw new IOException("Can't open slideshow - unsupported file type: " + valueOf);
        }
        throw new EmptyFileException();
    }

    public static SlideShow<?, ?> create(File file) throws IOException, EncryptedDocumentException {
        return create(file, (String) null);
    }

    public static SlideShow<?, ?> create(File file, String str) throws IOException, EncryptedDocumentException {
        return create(file, str, false);
    }

    public static SlideShow<?, ?> create(final File file, final String str, final boolean z) throws IOException, EncryptedDocumentException {
        if (!file.exists()) {
            throw new FileNotFoundException(file.toString());
        }
        if (file.length() != 0) {
            FileMagic valueOf = FileMagic.valueOf(file);
            FileMagic fileMagic = FileMagic.OOXML;
            if (valueOf == fileMagic) {
                return m69486wp(valueOf, new ProviderMethod() { // from class: org.apache.poi.sl.usermodel.b
                    @Override // org.apache.poi.sl.usermodel.SlideShowFactory.ProviderMethod
                    public final SlideShow create(SlideShowProvider slideShowProvider) {
                        SlideShow lambda$create$4;
                        lambda$create$4 = SlideShowFactory.lambda$create$4(file, str, z, slideShowProvider);
                        return lambda$create$4;
                    }
                });
            }
            if (valueOf == FileMagic.OLE2) {
                boolean z2 = true;
                POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem(file, true);
                try {
                    DirectoryNode root = pOIFSFileSystem.getRoot();
                    if (!root.hasEntry(Decryptor.DEFAULT_POIFS_ENTRY)) {
                        if (!root.hasEntry(ExtractorFactory.OOXML_PACKAGE)) {
                            z2 = false;
                        }
                    }
                    pOIFSFileSystem.close();
                    if (z2) {
                        valueOf = fileMagic;
                    }
                    return m69486wp(valueOf, new ProviderMethod() { // from class: org.apache.poi.sl.usermodel.c
                        @Override // org.apache.poi.sl.usermodel.SlideShowFactory.ProviderMethod
                        public final SlideShow create(SlideShowProvider slideShowProvider) {
                            SlideShow lambda$create$5;
                            lambda$create$5 = SlideShowFactory.lambda$create$5(file, str, z, slideShowProvider);
                            return lambda$create$5;
                        }
                    });
                } finally {
                }
            } else {
                throw new IOException("Can't open slideshow - unsupported file type: " + valueOf);
            }
        } else {
            throw new EmptyFileException(file);
        }
    }
}
