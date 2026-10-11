package org.apache.poi.extractor;

import com.sunia.HTREnginev2.z6g;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.stream.StreamSupport;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.EmptyFileException;
import org.apache.poi.extractor.ExtractorFactory;
import org.apache.poi.extractor.ExtractorProvider;
import org.apache.poi.hssf.extractor.ExcelExtractor;
import org.apache.poi.hssf.record.crypto.Biff8EncryptionKey;
import org.apache.poi.poifs.crypt.Decryptor;
import org.apache.poi.poifs.filesystem.DirectoryEntry;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.Entry;
import org.apache.poi.poifs.filesystem.FileMagic;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

/* loaded from: classes12.dex */
public final class ExtractorFactory {
    public static final String OOXML_PACKAGE = "Package";
    private static Boolean allPreferEventExtractors;
    private final List<ExtractorProvider> provider;
    private static final Logger LOGGER = LogManager.getLogger((Class<?>) ExtractorFactory.class);
    private static final ThreadLocal<Boolean> threadPreferEventExtractors = new ThreadLocal<Boolean>() { // from class: org.apache.poi.extractor.ExtractorFactory.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public Boolean initialValue() {
            return Boolean.FALSE;
        }
    };

    /* loaded from: classes12.dex */
    public interface ProviderMethod {
        POITextExtractor create(ExtractorProvider extractorProvider) throws IOException;
    }

    /* loaded from: classes12.dex */
    public static class Singleton {
        private static final ExtractorFactory INSTANCE = new ExtractorFactory();

        private Singleton() {
        }
    }

    public static void addProvider(ExtractorProvider extractorProvider) {
        Singleton.INSTANCE.provider.add(extractorProvider);
    }

    public static POITextExtractor createExtractor(POIFSFileSystem pOIFSFileSystem) throws IOException {
        return createExtractor(pOIFSFileSystem, Biff8EncryptionKey.getCurrentUserPassword());
    }

    public static Boolean getAllThreadsPreferEventExtractors() {
        return allPreferEventExtractors;
    }

    public static POITextExtractor[] getEmbeddedDocsTextExtractors(POIOLE2TextExtractor pOIOLE2TextExtractor) throws IOException {
        if (pOIOLE2TextExtractor == null) {
            throw new IllegalStateException("extractor must be given");
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        DirectoryEntry root = pOIOLE2TextExtractor.getRoot();
        if (root == null) {
            throw new IllegalStateException("The extractor didn't know which POIFS it came from!");
        }
        if (!(pOIOLE2TextExtractor instanceof ExcelExtractor)) {
            Iterator<ExtractorProvider> it2 = Singleton.INSTANCE.provider.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                ExtractorProvider next = it2.next();
                if (next.accepts(FileMagic.OLE2)) {
                    next.identifyEmbeddedResources(pOIOLE2TextExtractor, arrayList, arrayList2);
                    break;
                }
            }
        } else {
            StreamSupport.stream(root.spliterator(), false).filter(new Predicate() { // from class: com.sunia.HTREnginev2.y6g
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean lambda$getEmbeddedDocsTextExtractors$6;
                    lambda$getEmbeddedDocsTextExtractors$6 = ExtractorFactory.lambda$getEmbeddedDocsTextExtractors$6((Entry) obj);
                    return lambda$getEmbeddedDocsTextExtractors$6;
                }
            }).forEach(new z6g(arrayList));
        }
        if (arrayList.isEmpty() && arrayList2.isEmpty()) {
            return new POITextExtractor[0];
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            arrayList3.add(createExtractor((DirectoryNode) ((Entry) it3.next())));
        }
        Iterator it4 = arrayList2.iterator();
        while (it4.hasNext()) {
            try {
                arrayList3.add(createExtractor((InputStream) it4.next()));
            } catch (IOException e) {
                LOGGER.atInfo().log("Format not supported yet ({})", e.getLocalizedMessage());
            }
        }
        return (POITextExtractor[]) arrayList3.toArray(new POITextExtractor[0]);
    }

    public static boolean getPreferEventExtractor() {
        Boolean bool = allPreferEventExtractors;
        if (bool == null) {
            bool = threadPreferEventExtractors.get();
        }
        return bool.booleanValue();
    }

    public static boolean getThreadPrefersEventExtractors() {
        return threadPreferEventExtractors.get().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ POITextExtractor lambda$createExtractor$0(InputStream inputStream, String str, ExtractorProvider extractorProvider) throws IOException {
        return extractorProvider.create(inputStream, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ POITextExtractor lambda$createExtractor$1(DirectoryNode directoryNode, String str, ExtractorProvider extractorProvider) throws IOException {
        return extractorProvider.create(directoryNode, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ POITextExtractor lambda$createExtractor$2(File file, String str, ExtractorProvider extractorProvider) throws IOException {
        return extractorProvider.create(file, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ POITextExtractor lambda$createExtractor$3(DirectoryNode directoryNode, String str, ExtractorProvider extractorProvider) throws IOException {
        return extractorProvider.create(directoryNode, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ POITextExtractor lambda$createExtractor$4(DirectoryNode directoryNode, String str, ExtractorProvider extractorProvider) throws IOException {
        return extractorProvider.create(directoryNode, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ POITextExtractor lambda$createExtractor$5(DirectoryNode directoryNode, String str, ExtractorProvider extractorProvider) throws IOException {
        return extractorProvider.create(directoryNode, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getEmbeddedDocsTextExtractors$6(Entry entry) {
        return entry.getName().startsWith("MBD");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$removeProvider$7(Class cls, ExtractorProvider extractorProvider) {
        return extractorProvider.getClass().isAssignableFrom(cls);
    }

    public static void removeProvider(final Class<? extends ExtractorProvider> cls) {
        Singleton.INSTANCE.provider.removeIf(new Predicate() { // from class: com.sunia.HTREnginev2.a7g
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$removeProvider$7;
                lambda$removeProvider$7 = ExtractorFactory.lambda$removeProvider$7(cls, (ExtractorProvider) obj);
                return lambda$removeProvider$7;
            }
        });
    }

    public static void setAllThreadsPreferEventExtractors(Boolean bool) {
        allPreferEventExtractors = bool;
    }

    public static void setThreadPrefersEventExtractors(boolean z) {
        threadPreferEventExtractors.set(Boolean.valueOf(z));
    }

    /* renamed from: wp */
    private static POITextExtractor m68742wp(FileMagic fileMagic, ProviderMethod providerMethod) throws IOException {
        POITextExtractor create;
        for (ExtractorProvider extractorProvider : Singleton.INSTANCE.provider) {
            if (extractorProvider.accepts(fileMagic) && (create = providerMethod.create(extractorProvider)) != null) {
                return create;
            }
        }
        throw new IOException("Your InputStream was neither an OLE2 stream, nor an OOXML stream or you haven't provide the poi-ooxml*.jar and/or poi-scratchpad*.jar in the classpath/modulepath - FileMagic: " + fileMagic + ", providers: " + Singleton.INSTANCE.provider);
    }

    private ExtractorFactory() {
        final ArrayList arrayList = new ArrayList();
        this.provider = arrayList;
        ServiceLoader.load(ExtractorProvider.class, ExtractorFactory.class.getClassLoader()).forEach(new Consumer() { // from class: com.sunia.HTREnginev2.b7g
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                arrayList.add((ExtractorProvider) obj);
            }
        });
    }

    public static POITextExtractor createExtractor(POIFSFileSystem pOIFSFileSystem, String str) throws IOException {
        return createExtractor(pOIFSFileSystem.getRoot(), str);
    }

    public static POITextExtractor createExtractor(InputStream inputStream) throws IOException {
        return createExtractor(inputStream, Biff8EncryptionKey.getCurrentUserPassword());
    }

    public static POITextExtractor createExtractor(InputStream inputStream, final String str) throws IOException {
        final InputStream prepareToCheckMagic = FileMagic.prepareToCheckMagic(inputStream);
        boolean z = true;
        prepareToCheckMagic.mark(1);
        if (prepareToCheckMagic.read(new byte[1]) >= 1) {
            prepareToCheckMagic.reset();
            FileMagic valueOf = FileMagic.valueOf(prepareToCheckMagic);
            FileMagic fileMagic = FileMagic.OOXML;
            if (fileMagic == valueOf) {
                return m68742wp(valueOf, new ProviderMethod() { // from class: org.apache.poi.extractor.c
                    @Override // org.apache.poi.extractor.ExtractorFactory.ProviderMethod
                    public final POITextExtractor create(ExtractorProvider extractorProvider) {
                        POITextExtractor lambda$createExtractor$0;
                        lambda$createExtractor$0 = ExtractorFactory.lambda$createExtractor$0(prepareToCheckMagic, str, extractorProvider);
                        return lambda$createExtractor$0;
                    }
                });
            }
            if (FileMagic.OLE2 == valueOf) {
                final DirectoryNode root = new POIFSFileSystem(prepareToCheckMagic).getRoot();
                if (!root.hasEntry(Decryptor.DEFAULT_POIFS_ENTRY) && !root.hasEntry(OOXML_PACKAGE)) {
                    z = false;
                }
                if (z) {
                    valueOf = fileMagic;
                }
                return m68742wp(valueOf, new ProviderMethod() { // from class: org.apache.poi.extractor.d
                    @Override // org.apache.poi.extractor.ExtractorFactory.ProviderMethod
                    public final POITextExtractor create(ExtractorProvider extractorProvider) {
                        POITextExtractor lambda$createExtractor$1;
                        lambda$createExtractor$1 = ExtractorFactory.lambda$createExtractor$1(DirectoryNode.this, str, extractorProvider);
                        return lambda$createExtractor$1;
                    }
                });
            }
            throw new IOException("Can't create extractor - unsupported file type: " + valueOf);
        }
        throw new EmptyFileException();
    }

    public static POITextExtractor createExtractor(File file) throws IOException {
        return createExtractor(file, Biff8EncryptionKey.getCurrentUserPassword());
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x003f, code lost:
    
        r0 = r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.apache.poi.extractor.POITextExtractor createExtractor(final java.io.File r5, final java.lang.String r6) throws java.io.IOException {
        /*
            long r0 = r5.length()
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 == 0) goto L69
            org.apache.poi.poifs.filesystem.FileMagic r0 = org.apache.poi.poifs.filesystem.FileMagic.valueOf(r5)
            org.apache.poi.poifs.filesystem.FileMagic r1 = org.apache.poi.poifs.filesystem.FileMagic.OOXML
            if (r1 != r0) goto L1c
            org.apache.poi.extractor.a r1 = new org.apache.poi.extractor.a
            r1.<init>()
            org.apache.poi.extractor.POITextExtractor r5 = m68742wp(r0, r1)
            return r5
        L1c:
            org.apache.poi.poifs.filesystem.FileMagic r2 = org.apache.poi.poifs.filesystem.FileMagic.OLE2
            if (r2 != r0) goto L52
            r2 = 0
            org.apache.poi.poifs.filesystem.POIFSFileSystem r3 = new org.apache.poi.poifs.filesystem.POIFSFileSystem     // Catch: java.lang.Throwable -> L4d
            r4 = 1
            r3.<init>(r5, r4)     // Catch: java.lang.Throwable -> L4d
            org.apache.poi.poifs.filesystem.DirectoryNode r5 = r3.getRoot()     // Catch: java.lang.Throwable -> L4a
            java.lang.String r2 = "EncryptedPackage"
            boolean r2 = r5.hasEntry(r2)     // Catch: java.lang.Throwable -> L4a
            if (r2 != 0) goto L3d
            java.lang.String r2 = "Package"
            boolean r2 = r5.hasEntry(r2)     // Catch: java.lang.Throwable -> L4a
            if (r2 == 0) goto L3c
            goto L3d
        L3c:
            r4 = 0
        L3d:
            if (r4 == 0) goto L40
            r0 = r1
        L40:
            org.apache.poi.extractor.b r1 = new org.apache.poi.extractor.b     // Catch: java.lang.Throwable -> L4a
            r1.<init>()     // Catch: java.lang.Throwable -> L4a
            org.apache.poi.extractor.POITextExtractor r5 = m68742wp(r0, r1)     // Catch: java.lang.Throwable -> L4a
            return r5
        L4a:
            r5 = move-exception
            r2 = r3
            goto L4e
        L4d:
            r5 = move-exception
        L4e:
            org.apache.poi.util.IOUtils.closeQuietly(r2)
            throw r5
        L52:
            java.io.IOException r5 = new java.io.IOException
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r1 = "Can't create extractor - unsupported file type: "
            r6.append(r1)
            r6.append(r0)
            java.lang.String r6 = r6.toString()
            r5.<init>(r6)
            throw r5
        L69:
            org.apache.poi.EmptyFileException r6 = new org.apache.poi.EmptyFileException
            r6.<init>(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.extractor.ExtractorFactory.createExtractor(java.io.File, java.lang.String):org.apache.poi.extractor.POITextExtractor");
    }

    public static POITextExtractor createExtractor(DirectoryNode directoryNode) throws IOException {
        return createExtractor(directoryNode, Biff8EncryptionKey.getCurrentUserPassword());
    }

    public static POITextExtractor createExtractor(final DirectoryNode directoryNode, final String str) throws IOException {
        if (!directoryNode.hasEntry(Decryptor.DEFAULT_POIFS_ENTRY) && !directoryNode.hasEntry(OOXML_PACKAGE)) {
            return m68742wp(FileMagic.OLE2, new ProviderMethod() { // from class: org.apache.poi.extractor.f
                @Override // org.apache.poi.extractor.ExtractorFactory.ProviderMethod
                public final POITextExtractor create(ExtractorProvider extractorProvider) {
                    POITextExtractor lambda$createExtractor$5;
                    lambda$createExtractor$5 = ExtractorFactory.lambda$createExtractor$5(DirectoryNode.this, str, extractorProvider);
                    return lambda$createExtractor$5;
                }
            });
        }
        return m68742wp(FileMagic.OOXML, new ProviderMethod() { // from class: org.apache.poi.extractor.e
            @Override // org.apache.poi.extractor.ExtractorFactory.ProviderMethod
            public final POITextExtractor create(ExtractorProvider extractorProvider) {
                POITextExtractor lambda$createExtractor$4;
                lambda$createExtractor$4 = ExtractorFactory.lambda$createExtractor$4(DirectoryNode.this, str, extractorProvider);
                return lambda$createExtractor$4;
            }
        });
    }
}
