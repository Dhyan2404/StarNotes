package org.apache.poi.extractor.ole2;

import com.sunia.HTREnginev2.z6g;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.extractor.ExtractorProvider;
import org.apache.poi.extractor.POIOLE2TextExtractor;
import org.apache.poi.extractor.POITextExtractor;
import org.apache.poi.extractor.ole2.OLE2ScratchpadExtractorFactory;
import org.apache.poi.hdgf.extractor.VisioTextExtractor;
import org.apache.poi.hpbf.extractor.PublisherTextExtractor;
import org.apache.poi.hslf.usermodel.HSLFSlideShow;
import org.apache.poi.hsmf.datatypes.AttachmentChunks;
import org.apache.poi.hsmf.extractor.OutlookTextExtractor;
import org.apache.poi.hssf.extractor.ExcelExtractor;
import org.apache.poi.hssf.record.crypto.Biff8EncryptionKey;
import org.apache.poi.hwpf.OldWordFileFormatException;
import org.apache.poi.hwpf.extractor.Word6Extractor;
import org.apache.poi.hwpf.extractor.WordExtractor;
import org.apache.poi.poifs.filesystem.DirectoryEntry;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.Entry;
import org.apache.poi.poifs.filesystem.FileMagic;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.sl.extractor.SlideShowExtractor;
import org.apache.poi.sl.usermodel.SlideShowFactory;

/* loaded from: classes12.dex */
public class OLE2ScratchpadExtractorFactory implements ExtractorProvider {
    private static final Logger LOG = LogManager.getLogger((Class<?>) OLE2ScratchpadExtractorFactory.class);
    private static final String[] OUTLOOK_ENTRY_NAMES = {"__substg1.0_1000001E", "__substg1.0_1000001F", "__substg1.0_0047001E", "__substg1.0_0047001F", "__substg1.0_0037001E", "__substg1.0_0037001F"};

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$identifyEmbeddedResources$0(Entry entry) {
        return entry.getName().startsWith("MBD");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$identifyEmbeddedResources$1(Entry entry) {
        return entry.getName().startsWith("_");
    }

    @Override // org.apache.poi.extractor.ExtractorProvider
    public boolean accepts(FileMagic fileMagic) {
        return FileMagic.OLE2 == fileMagic;
    }

    @Override // org.apache.poi.extractor.ExtractorProvider
    public POITextExtractor create(File file, String str) throws IOException {
        return create(new POIFSFileSystem(file, true).getRoot(), str);
    }

    @Override // org.apache.poi.extractor.ExtractorProvider
    public void identifyEmbeddedResources(POIOLE2TextExtractor pOIOLE2TextExtractor, List<Entry> list, List<InputStream> list2) {
        DirectoryEntry root = pOIOLE2TextExtractor.getRoot();
        if (root == null) {
            throw new IllegalStateException("The extractor didn't know which POIFS it came from!");
        }
        if (pOIOLE2TextExtractor instanceof ExcelExtractor) {
            Stream filter = StreamSupport.stream(root.spliterator(), false).filter(new Predicate() { // from class: com.sunia.HTREnginev2.r6k
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean lambda$identifyEmbeddedResources$0;
                    lambda$identifyEmbeddedResources$0 = OLE2ScratchpadExtractorFactory.lambda$identifyEmbeddedResources$0((Entry) obj);
                    return lambda$identifyEmbeddedResources$0;
                }
            });
            list.getClass();
            filter.forEach(new z6g(list));
            return;
        }
        if (pOIOLE2TextExtractor instanceof WordExtractor) {
            try {
                Stream filter2 = StreamSupport.stream(((DirectoryEntry) root.getEntry("ObjectPool")).spliterator(), false).filter(new Predicate() { // from class: com.sunia.HTREnginev2.s6k
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        boolean lambda$identifyEmbeddedResources$1;
                        lambda$identifyEmbeddedResources$1 = OLE2ScratchpadExtractorFactory.lambda$identifyEmbeddedResources$1((Entry) obj);
                        return lambda$identifyEmbeddedResources$1;
                    }
                });
                list.getClass();
                filter2.forEach(new z6g(list));
                return;
            } catch (FileNotFoundException e) {
                LOG.atInfo().withThrowable(e).log("Ignoring FileNotFoundException while extracting Word document");
                return;
            }
        }
        if (pOIOLE2TextExtractor instanceof OutlookTextExtractor) {
            for (AttachmentChunks attachmentChunks : ((OutlookTextExtractor) pOIOLE2TextExtractor).getMAPIMessage().getAttachmentFiles()) {
                if (attachmentChunks.getAttachData() != null) {
                    list2.add(new UnsynchronizedByteArrayInputStream(attachmentChunks.getAttachData().getValue()));
                } else if (attachmentChunks.getAttachmentDirectory() != null) {
                    list.add(attachmentChunks.getAttachmentDirectory().getDirectory());
                }
            }
        }
    }

    @Override // org.apache.poi.extractor.ExtractorProvider
    public POITextExtractor create(InputStream inputStream, String str) throws IOException {
        return create(new POIFSFileSystem(inputStream).getRoot(), str);
    }

    @Override // org.apache.poi.extractor.ExtractorProvider
    public POITextExtractor create(DirectoryNode directoryNode, String str) throws IOException {
        String currentUserPassword = Biff8EncryptionKey.getCurrentUserPassword();
        try {
            Biff8EncryptionKey.setCurrentUserPassword(str);
            if (directoryNode.hasEntry("WordDocument")) {
                return new WordExtractor(directoryNode);
            }
            if (!directoryNode.hasEntry(HSLFSlideShow.POWERPOINT_DOCUMENT) && !directoryNode.hasEntry(HSLFSlideShow.PP97_DOCUMENT)) {
                if (directoryNode.hasEntry("VisioDocument")) {
                    return new VisioTextExtractor(directoryNode);
                }
                if (directoryNode.hasEntry("Quill")) {
                    return new PublisherTextExtractor(directoryNode);
                }
                for (String str2 : OUTLOOK_ENTRY_NAMES) {
                    if (directoryNode.hasEntry(str2)) {
                        return new OutlookTextExtractor(directoryNode);
                    }
                }
                Biff8EncryptionKey.setCurrentUserPassword(currentUserPassword);
                return null;
            }
            return new SlideShowExtractor((HSLFSlideShow) SlideShowFactory.create(directoryNode));
        } catch (OldWordFileFormatException unused) {
            return new Word6Extractor(directoryNode);
        } finally {
            Biff8EncryptionKey.setCurrentUserPassword(currentUserPassword);
        }
    }
}
