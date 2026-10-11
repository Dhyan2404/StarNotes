package org.apache.poi.ss.usermodel;

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
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.apache.poi.ss.usermodel.WorkbookProvider;

/* loaded from: classes13.dex */
public final class WorkbookFactory {
    private final List<WorkbookProvider> provider;

    /* loaded from: classes13.dex */
    public interface ProviderMethod {
        Workbook create(WorkbookProvider workbookProvider) throws IOException;
    }

    /* loaded from: classes13.dex */
    public static class Singleton {
        private static final WorkbookFactory INSTANCE = new WorkbookFactory();

        private Singleton() {
        }
    }

    public static void addProvider(WorkbookProvider workbookProvider) {
        Singleton.INSTANCE.provider.add(workbookProvider);
    }

    public static Workbook create(boolean z) throws IOException {
        return m69584wp(z ? FileMagic.OOXML : FileMagic.OLE2, new ProviderMethod() { // from class: org.apache.poi.ss.usermodel.a
            @Override // org.apache.poi.ss.usermodel.WorkbookFactory.ProviderMethod
            public final Workbook create(WorkbookProvider workbookProvider) {
                return workbookProvider.create();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Workbook lambda$create$0(DirectoryNode directoryNode, String str, WorkbookProvider workbookProvider) throws IOException {
        return workbookProvider.create(directoryNode, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Workbook lambda$create$1(DirectoryNode directoryNode, String str, WorkbookProvider workbookProvider) throws IOException {
        return workbookProvider.create(directoryNode, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Workbook lambda$create$2(InputStream inputStream, WorkbookProvider workbookProvider) throws IOException {
        return workbookProvider.create(inputStream);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Workbook lambda$create$3(DirectoryNode directoryNode, String str, WorkbookProvider workbookProvider) throws IOException {
        return workbookProvider.create(directoryNode, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Workbook lambda$create$4(File file, String str, boolean z, WorkbookProvider workbookProvider) throws IOException {
        return workbookProvider.create(file, str, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Workbook lambda$create$5(File file, String str, boolean z, WorkbookProvider workbookProvider) throws IOException {
        return workbookProvider.create(file, str, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$removeProvider$6(Class cls, WorkbookProvider workbookProvider) {
        return workbookProvider.getClass().isAssignableFrom(cls);
    }

    public static void removeProvider(final Class<? extends WorkbookProvider> cls) {
        Singleton.INSTANCE.provider.removeIf(new Predicate() { // from class: com.sunia.HTREnginev2.pao
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$removeProvider$6;
                lambda$removeProvider$6 = WorkbookFactory.lambda$removeProvider$6(cls, (WorkbookProvider) obj);
                return lambda$removeProvider$6;
            }
        });
    }

    /* renamed from: wp */
    private static Workbook m69584wp(FileMagic fileMagic, ProviderMethod providerMethod) throws IOException {
        for (WorkbookProvider workbookProvider : Singleton.INSTANCE.provider) {
            if (workbookProvider.accepts(fileMagic)) {
                return providerMethod.create(workbookProvider);
            }
        }
        throw new IOException("Your InputStream was neither an OLE2 stream, nor an OOXML stream or you haven't provide the poi-ooxml*.jar in the classpath/modulepath - FileMagic: " + fileMagic + ", having providers: " + Singleton.INSTANCE.provider);
    }

    private WorkbookFactory() {
        final ArrayList arrayList = new ArrayList();
        this.provider = arrayList;
        ServiceLoader.load(WorkbookProvider.class, WorkbookFactory.class.getClassLoader()).forEach(new Consumer() { // from class: com.sunia.HTREnginev2.oao
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                arrayList.add((WorkbookProvider) obj);
            }
        });
    }

    public static Workbook create(POIFSFileSystem pOIFSFileSystem) throws IOException {
        return create(pOIFSFileSystem, (String) null);
    }

    private static Workbook create(POIFSFileSystem pOIFSFileSystem, String str) throws IOException {
        return create(pOIFSFileSystem.getRoot(), str);
    }

    public static Workbook create(DirectoryNode directoryNode) throws IOException {
        return create(directoryNode, (String) null);
    }

    public static Workbook create(final DirectoryNode directoryNode, final String str) throws IOException {
        if (!directoryNode.hasEntry(Decryptor.DEFAULT_POIFS_ENTRY) && !directoryNode.hasEntry(ExtractorFactory.OOXML_PACKAGE)) {
            return m69584wp(FileMagic.OLE2, new ProviderMethod() { // from class: org.apache.poi.ss.usermodel.g
                @Override // org.apache.poi.ss.usermodel.WorkbookFactory.ProviderMethod
                public final Workbook create(WorkbookProvider workbookProvider) {
                    Workbook lambda$create$1;
                    lambda$create$1 = WorkbookFactory.lambda$create$1(DirectoryNode.this, str, workbookProvider);
                    return lambda$create$1;
                }
            });
        }
        return m69584wp(FileMagic.OOXML, new ProviderMethod() { // from class: org.apache.poi.ss.usermodel.f
            @Override // org.apache.poi.ss.usermodel.WorkbookFactory.ProviderMethod
            public final Workbook create(WorkbookProvider workbookProvider) {
                Workbook lambda$create$0;
                lambda$create$0 = WorkbookFactory.lambda$create$0(DirectoryNode.this, str, workbookProvider);
                return lambda$create$0;
            }
        });
    }

    public static Workbook create(InputStream inputStream) throws IOException, EncryptedDocumentException {
        return create(inputStream, (String) null);
    }

    public static Workbook create(InputStream inputStream, final String str) throws IOException, EncryptedDocumentException {
        final InputStream prepareToCheckMagic = FileMagic.prepareToCheckMagic(inputStream);
        boolean z = true;
        prepareToCheckMagic.mark(1);
        if (prepareToCheckMagic.read(new byte[1]) >= 1) {
            prepareToCheckMagic.reset();
            FileMagic valueOf = FileMagic.valueOf(prepareToCheckMagic);
            FileMagic fileMagic = FileMagic.OOXML;
            if (fileMagic == valueOf) {
                return m69584wp(valueOf, new ProviderMethod() { // from class: org.apache.poi.ss.usermodel.d
                    @Override // org.apache.poi.ss.usermodel.WorkbookFactory.ProviderMethod
                    public final Workbook create(WorkbookProvider workbookProvider) {
                        Workbook lambda$create$2;
                        lambda$create$2 = WorkbookFactory.lambda$create$2(prepareToCheckMagic, workbookProvider);
                        return lambda$create$2;
                    }
                });
            }
            if (FileMagic.OLE2 == valueOf) {
                final DirectoryNode root = new POIFSFileSystem(prepareToCheckMagic).getRoot();
                if (!root.hasEntry(Decryptor.DEFAULT_POIFS_ENTRY) && !root.hasEntry(ExtractorFactory.OOXML_PACKAGE)) {
                    z = false;
                }
                if (z) {
                    valueOf = fileMagic;
                }
                return m69584wp(valueOf, new ProviderMethod() { // from class: org.apache.poi.ss.usermodel.e
                    @Override // org.apache.poi.ss.usermodel.WorkbookFactory.ProviderMethod
                    public final Workbook create(WorkbookProvider workbookProvider) {
                        Workbook lambda$create$3;
                        lambda$create$3 = WorkbookFactory.lambda$create$3(DirectoryNode.this, str, workbookProvider);
                        return lambda$create$3;
                    }
                });
            }
            throw new IOException("Can't open workbook - unsupported file type: " + valueOf);
        }
        throw new EmptyFileException();
    }

    public static Workbook create(File file) throws IOException, EncryptedDocumentException {
        return create(file, (String) null);
    }

    public static Workbook create(File file, String str) throws IOException, EncryptedDocumentException {
        return create(file, str, false);
    }

    public static Workbook create(final File file, final String str, final boolean z) throws IOException, EncryptedDocumentException {
        if (!file.exists()) {
            throw new FileNotFoundException(file.toString());
        }
        if (file.length() != 0) {
            FileMagic valueOf = FileMagic.valueOf(file);
            FileMagic fileMagic = FileMagic.OOXML;
            if (valueOf == fileMagic) {
                return m69584wp(valueOf, new ProviderMethod() { // from class: org.apache.poi.ss.usermodel.b
                    @Override // org.apache.poi.ss.usermodel.WorkbookFactory.ProviderMethod
                    public final Workbook create(WorkbookProvider workbookProvider) {
                        Workbook lambda$create$4;
                        lambda$create$4 = WorkbookFactory.lambda$create$4(file, str, z, workbookProvider);
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
                    return m69584wp(valueOf, new ProviderMethod() { // from class: org.apache.poi.ss.usermodel.c
                        @Override // org.apache.poi.ss.usermodel.WorkbookFactory.ProviderMethod
                        public final Workbook create(WorkbookProvider workbookProvider) {
                            Workbook lambda$create$5;
                            lambda$create$5 = WorkbookFactory.lambda$create$5(file, str, z, workbookProvider);
                            return lambda$create$5;
                        }
                    });
                } finally {
                }
            } else {
                throw new IOException("Can't open workbook - unsupported file type: " + valueOf);
            }
        } else {
            throw new EmptyFileException(file);
        }
    }
}
