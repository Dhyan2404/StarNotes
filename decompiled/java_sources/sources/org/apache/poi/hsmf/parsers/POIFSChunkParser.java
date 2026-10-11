package org.apache.poi.hsmf.parsers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.TreeMap;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Stream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.hsmf.datatypes.AttachmentChunks;
import org.apache.poi.hsmf.datatypes.ByteChunk;
import org.apache.poi.hsmf.datatypes.ByteChunkDeferred;
import org.apache.poi.hsmf.datatypes.Chunk;
import org.apache.poi.hsmf.datatypes.ChunkGroup;
import org.apache.poi.hsmf.datatypes.Chunks;
import org.apache.poi.hsmf.datatypes.DirectoryChunk;
import org.apache.poi.hsmf.datatypes.MAPIProperty;
import org.apache.poi.hsmf.datatypes.MessagePropertiesChunk;
import org.apache.poi.hsmf.datatypes.MessageSubmissionChunk;
import org.apache.poi.hsmf.datatypes.NameIdChunks;
import org.apache.poi.hsmf.datatypes.PropertiesChunk;
import org.apache.poi.hsmf.datatypes.RecipientChunks;
import org.apache.poi.hsmf.datatypes.StoragePropertiesChunk;
import org.apache.poi.hsmf.datatypes.StringChunk;
import org.apache.poi.hsmf.datatypes.Types;
import org.apache.poi.hsmf.parsers.POIFSChunkParser;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.DocumentInputStream;
import org.apache.poi.poifs.filesystem.DocumentNode;
import org.apache.poi.poifs.filesystem.Entry;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

/* loaded from: classes12.dex */
public final class POIFSChunkParser {
    private static final Logger LOG = LogManager.getLogger((Class<?>) POIFSChunkParser.class);

    /* loaded from: classes12.dex */
    public static class MultiChunk {
        private final Map<Integer, Chunk> chunks;
        private int length;

        private MultiChunk() {
            this.length = -1;
            this.chunks = new TreeMap();
        }

        public void addChunk(int i, Chunk chunk) {
            this.chunks.put(Integer.valueOf(i), chunk);
        }

        public Map<Integer, Chunk> getChunks() {
            return this.chunks;
        }

        public int getLength() {
            return this.length;
        }

        public void setLength(int i) {
            this.length = i;
        }
    }

    private POIFSChunkParser() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Stream lambda$processChunks$0(Map.Entry entry) {
        return ((MultiChunk) entry.getValue()).getChunks().values().stream();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ MultiChunk lambda$readMultiValue$1(Integer num) {
        return new MultiChunk();
    }

    public static ChunkGroup[] parse(POIFSFileSystem pOIFSFileSystem) {
        return parse(pOIFSFileSystem.getRoot());
    }

    private static void process(Entry entry, ChunkGroup chunkGroup, Map<Integer, MultiChunk> map) {
        boolean[] zArr = {false};
        Chunk readPropertiesChunk = PropertiesChunk.NAME.equals(entry.getName()) ? readPropertiesChunk(chunkGroup, entry) : readPrimitiveChunk(entry, zArr, map);
        if (readPropertiesChunk == null) {
            return;
        }
        if (entry instanceof DocumentNode) {
            try {
                DocumentInputStream documentInputStream = new DocumentInputStream((DocumentNode) entry);
                try {
                    readPropertiesChunk.readValue(documentInputStream);
                    documentInputStream.close();
                } finally {
                }
            } catch (IOException e) {
                LOG.atError().withThrowable(e).log("Error reading from part {}", entry.getName());
            }
        }
        if (zArr[0]) {
            return;
        }
        chunkGroup.record(readPropertiesChunk);
    }

    private static void processChunks(DirectoryNode directoryNode, final ChunkGroup chunkGroup) {
        TreeMap treeMap = new TreeMap();
        Iterator<Entry> it2 = directoryNode.iterator();
        while (it2.hasNext()) {
            Entry next = it2.next();
            if ((next instanceof DocumentNode) || ((next instanceof DirectoryNode) && next.getName().endsWith(Types.DIRECTORY.asFileEnding()))) {
                process(next, chunkGroup, treeMap);
            }
        }
        Stream filter = treeMap.entrySet().stream().flatMap(new Function() { // from class: com.sunia.HTREnginev2.dkk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Stream lambda$processChunks$0;
                lambda$processChunks$0 = POIFSChunkParser.lambda$processChunks$0((Map.Entry) obj);
                return lambda$processChunks$0;
            }
        }).filter(new Predicate() { // from class: com.sunia.HTREnginev2.ekk
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Objects.nonNull((Chunk) obj);
            }
        });
        chunkGroup.getClass();
        filter.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.fkk
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ChunkGroup.this.record((Chunk) obj);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static org.apache.poi.hsmf.datatypes.Chunk readMultiValue(java.lang.String r7, java.lang.String r8, int r9, org.apache.poi.poifs.filesystem.Entry r10, org.apache.poi.hsmf.datatypes.Types.MAPIType r11, java.util.Map<java.lang.Integer, org.apache.poi.hsmf.parsers.POIFSChunkParser.MultiChunk> r12) {
        /*
            java.lang.String r0 = "-"
            boolean r0 = r8.contains(r0)
            r1 = -1
            if (r0 == 0) goto L30
            r0 = 45
            int r0 = r8.lastIndexOf(r0)
            int r0 = r0 + 1
            java.lang.String r8 = r8.substring(r0)
            long r3 = java.lang.Long.parseLong(r8)     // Catch: java.lang.NumberFormatException -> L21
            r5 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r3 = r3 & r5
            goto L31
        L21:
            org.apache.logging.log4j.Logger r8 = org.apache.poi.hsmf.parsers.POIFSChunkParser.LOG
            org.apache.logging.log4j.LogBuilder r8 = r8.atWarn()
            java.lang.String r0 = "Can't read multi value idx from entry {}"
            java.lang.String r3 = r10.getName()
            r8.log(r0, r3)
        L30:
            r3 = r1
        L31:
            java.lang.Integer r8 = java.lang.Integer.valueOf(r9)
            com.sunia.HTREnginev2.ckk r0 = new com.sunia.HTREnginev2.ckk
            r0.<init>()
            java.lang.Object r8 = r12.computeIfAbsent(r8, r0)
            org.apache.poi.hsmf.parsers.POIFSChunkParser$MultiChunk r8 = (org.apache.poi.hsmf.parsers.POIFSChunkParser.MultiChunk) r8
            int r12 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r12 != 0) goto L4c
            org.apache.poi.hsmf.parsers.POIFSChunkParser$1 r7 = new org.apache.poi.hsmf.parsers.POIFSChunkParser$1
            org.apache.poi.hsmf.datatypes.Types$MAPIType r10 = org.apache.poi.hsmf.datatypes.Types.BINARY
            r7.<init>(r9, r10)
            return r7
        L4c:
            org.apache.poi.hsmf.datatypes.Types$MAPIType r12 = org.apache.poi.hsmf.datatypes.Types.BINARY
            if (r11 != r12) goto L56
            org.apache.poi.hsmf.datatypes.ByteChunk r10 = new org.apache.poi.hsmf.datatypes.ByteChunk
            r10.<init>(r7, r9, r11)
            goto L75
        L56:
            org.apache.poi.hsmf.datatypes.Types$MAPIType r12 = org.apache.poi.hsmf.datatypes.Types.ASCII_STRING
            if (r11 == r12) goto L70
            org.apache.poi.hsmf.datatypes.Types$MAPIType r12 = org.apache.poi.hsmf.datatypes.Types.UNICODE_STRING
            if (r11 != r12) goto L5f
            goto L70
        L5f:
            org.apache.logging.log4j.Logger r7 = org.apache.poi.hsmf.parsers.POIFSChunkParser.LOG
            org.apache.logging.log4j.LogBuilder r7 = r7.atWarn()
            java.lang.String r8 = "Unsupported multivalued prop type for entry {}"
            java.lang.String r9 = r10.getName()
            r7.log(r8, r9)
            r7 = 0
            return r7
        L70:
            org.apache.poi.hsmf.datatypes.StringChunk r10 = new org.apache.poi.hsmf.datatypes.StringChunk
            r10.<init>(r7, r9, r11)
        L75:
            int r7 = (int) r3
            r8.addChunk(r7, r10)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hsmf.parsers.POIFSChunkParser.readMultiValue(java.lang.String, java.lang.String, int, org.apache.poi.poifs.filesystem.Entry, org.apache.poi.hsmf.datatypes.Types$MAPIType, java.util.Map):org.apache.poi.hsmf.datatypes.Chunk");
    }

    private static Chunk readPrimitiveChunk(Entry entry, boolean[] zArr, Map<Integer, MultiChunk> map) {
        String name = entry.getName();
        int lastIndexOf = name.lastIndexOf(95);
        if (name.length() >= 9 && lastIndexOf != -1) {
            int i = lastIndexOf + 1;
            String substring = name.substring(0, i);
            String substring2 = name.substring(i);
            if (!substring.equals("Olk10SideProps") && !substring.equals("Olk10SideProps_")) {
                if (lastIndexOf > name.length() - 8) {
                    throw new IllegalArgumentException("Invalid chunk name " + name);
                }
                try {
                    int parseInt = Integer.parseInt(substring2.substring(0, 4), 16);
                    int parseInt2 = Integer.parseInt(substring2.substring(4, 8), 16);
                    zArr[0] = (parseInt2 & 4096) != 0;
                    int i2 = parseInt2 & (-4097);
                    Types.MAPIType byId = Types.getById(i2);
                    Types.MAPIType createCustom = byId == null ? Types.createCustom(i2) : byId;
                    if (parseInt == MAPIProperty.MESSAGE_SUBMISSION_ID.f111389id) {
                        return new MessageSubmissionChunk(substring, parseInt, createCustom);
                    }
                    Types.MAPIType mAPIType = Types.BINARY;
                    if (createCustom == mAPIType && parseInt == MAPIProperty.ATTACH_DATA.f111389id) {
                        ByteChunkDeferred byteChunkDeferred = new ByteChunkDeferred(substring, parseInt, createCustom);
                        if (entry instanceof DocumentNode) {
                            byteChunkDeferred.readValue((DocumentNode) entry);
                        }
                        return byteChunkDeferred;
                    }
                    if (zArr[0]) {
                        return readMultiValue(substring, substring2, parseInt, entry, createCustom, map);
                    }
                    if (createCustom == Types.DIRECTORY && (entry instanceof DirectoryNode)) {
                        return new DirectoryChunk((DirectoryNode) entry, substring, parseInt, createCustom);
                    }
                    if (createCustom == mAPIType) {
                        return new ByteChunk(substring, parseInt, createCustom);
                    }
                    if (createCustom == Types.ASCII_STRING || createCustom == Types.UNICODE_STRING) {
                        return new StringChunk(substring, parseInt, createCustom);
                    }
                    LOG.atWarn().log("UNSUPPORTED PROP TYPE {}", name);
                    return null;
                } catch (NumberFormatException unused) {
                    return null;
                }
            }
        }
        return null;
    }

    private static Chunk readPropertiesChunk(ChunkGroup chunkGroup, Entry entry) {
        if (chunkGroup instanceof Chunks) {
            return new MessagePropertiesChunk(chunkGroup, (entry.getParent() == null || entry.getParent().getParent() == null) ? false : true);
        }
        return new StoragePropertiesChunk(chunkGroup);
    }

    public static ChunkGroup[] parse(DirectoryNode directoryNode) {
        Chunks chunks = new Chunks();
        ArrayList arrayList = new ArrayList();
        arrayList.add(chunks);
        Iterator<Entry> it2 = directoryNode.iterator();
        while (it2.hasNext()) {
            Entry next = it2.next();
            if (next instanceof DirectoryNode) {
                DirectoryNode directoryNode2 = (DirectoryNode) next;
                ChunkGroup attachmentChunks = directoryNode2.getName().startsWith(AttachmentChunks.PREFIX) ? new AttachmentChunks(directoryNode2.getName()) : null;
                if (directoryNode2.getName().startsWith(NameIdChunks.NAME)) {
                    attachmentChunks = new NameIdChunks();
                }
                if (directoryNode2.getName().startsWith(RecipientChunks.PREFIX)) {
                    attachmentChunks = new RecipientChunks(directoryNode2.getName());
                }
                if (attachmentChunks != null) {
                    processChunks(directoryNode2, attachmentChunks);
                    arrayList.add(attachmentChunks);
                }
            }
        }
        processChunks(directoryNode, chunks);
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            ((ChunkGroup) it3.next()).chunksComplete();
        }
        return (ChunkGroup[]) arrayList.toArray(new ChunkGroup[0]);
    }
}
