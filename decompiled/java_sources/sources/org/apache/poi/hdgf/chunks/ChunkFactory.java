package org.apache.poi.hdgf.chunks;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/* loaded from: classes12.dex */
public final class ChunkFactory {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 1000000;
    private static final Logger LOG = LogManager.getLogger((Class<?>) ChunkFactory.class);
    private static int MAX_RECORD_LENGTH = 1000000;
    private static final String chunkTableName = "/org/apache/poi/hdgf/chunks_parse_cmds.tbl";
    private final Map<Integer, CommandDefinition[]> chunkCommandDefinitions = new HashMap();
    private int version;

    /* loaded from: classes12.dex */
    public static class CommandDefinition {
        private String name;
        private int offset;
        private int type;

        public CommandDefinition(int i, int i2, String str) {
            this.type = i;
            this.offset = i2;
            this.name = str;
        }

        public String getName() {
            return this.name;
        }

        public int getOffset() {
            return this.offset;
        }

        public int getType() {
            return this.type;
        }
    }

    public ChunkFactory(int i) throws IOException {
        this.version = i;
        processChunkParseCommands();
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a8, code lost:
    
        throw new java.lang.IllegalStateException("Expecting start xxx, found " + r2);
     */
    /* JADX WARN: Finally extract failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void processChunkParseCommands() throws java.io.IOException {
        /*
            r10 = this;
            java.lang.Class<org.apache.poi.hdgf.chunks.ChunkFactory> r0 = org.apache.poi.hdgf.chunks.ChunkFactory.class
            java.lang.String r1 = "/org/apache/poi/hdgf/chunks_parse_cmds.tbl"
            java.io.InputStream r0 = r0.getResourceAsStream(r1)
            if (r0 == 0) goto Lbe
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> Lbc
            java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> Lbc
            java.nio.charset.Charset r3 = org.apache.poi.util.LocaleUtil.CHARSET_1252     // Catch: java.lang.Throwable -> Lbc
            r2.<init>(r0, r3)     // Catch: java.lang.Throwable -> Lbc
            r1.<init>(r2)     // Catch: java.lang.Throwable -> Lbc
        L16:
            java.lang.String r2 = r1.readLine()     // Catch: java.lang.Throwable -> Lb0
            if (r2 == 0) goto La9
            boolean r3 = r2.isEmpty()     // Catch: java.lang.Throwable -> Lb0
            if (r3 != 0) goto L16
            java.lang.String r3 = "# \t"
            r4 = 1
            r5 = 0
            java.lang.String r6 = r2.substring(r5, r4)     // Catch: java.lang.Throwable -> Lb0
            boolean r3 = r3.contains(r6)     // Catch: java.lang.Throwable -> Lb0
            if (r3 == 0) goto L31
            goto L16
        L31:
            java.lang.String r3 = "^start [0-9]+$"
            boolean r3 = r2.matches(r3)     // Catch: java.lang.Throwable -> Lb0
            if (r3 == 0) goto L92
            r3 = 6
            java.lang.String r2 = r2.substring(r3)     // Catch: java.lang.Throwable -> Lb0
            int r2 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.Throwable -> Lb0
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.Throwable -> Lb0
            r3.<init>()     // Catch: java.lang.Throwable -> Lb0
        L47:
            java.lang.String r6 = r1.readLine()     // Catch: java.lang.Throwable -> Lb0
            if (r6 == 0) goto L80
            java.lang.String r7 = "end"
            boolean r7 = r6.startsWith(r7)     // Catch: java.lang.Throwable -> Lb0
            if (r7 == 0) goto L56
            goto L80
        L56:
            java.util.StringTokenizer r7 = new java.util.StringTokenizer     // Catch: java.lang.Throwable -> Lb0
            java.lang.String r8 = " "
            r7.<init>(r6, r8)     // Catch: java.lang.Throwable -> Lb0
            java.lang.String r6 = r7.nextToken()     // Catch: java.lang.Throwable -> Lb0
            int r6 = java.lang.Integer.parseInt(r6)     // Catch: java.lang.Throwable -> Lb0
            java.lang.String r8 = r7.nextToken()     // Catch: java.lang.Throwable -> Lb0
            int r8 = java.lang.Integer.parseInt(r8)     // Catch: java.lang.Throwable -> Lb0
            java.lang.String r9 = "\uffff"
            java.lang.String r7 = r7.nextToken(r9)     // Catch: java.lang.Throwable -> Lb0
            java.lang.String r7 = r7.substring(r4)     // Catch: java.lang.Throwable -> Lb0
            org.apache.poi.hdgf.chunks.ChunkFactory$CommandDefinition r9 = new org.apache.poi.hdgf.chunks.ChunkFactory$CommandDefinition     // Catch: java.lang.Throwable -> Lb0
            r9.<init>(r6, r8, r7)     // Catch: java.lang.Throwable -> Lb0
            r3.add(r9)     // Catch: java.lang.Throwable -> Lb0
            goto L47
        L80:
            org.apache.poi.hdgf.chunks.ChunkFactory$CommandDefinition[] r4 = new org.apache.poi.hdgf.chunks.ChunkFactory.CommandDefinition[r5]     // Catch: java.lang.Throwable -> Lb0
            java.lang.Object[] r3 = r3.toArray(r4)     // Catch: java.lang.Throwable -> Lb0
            org.apache.poi.hdgf.chunks.ChunkFactory$CommandDefinition[] r3 = (org.apache.poi.hdgf.chunks.ChunkFactory.CommandDefinition[]) r3     // Catch: java.lang.Throwable -> Lb0
            java.util.Map<java.lang.Integer, org.apache.poi.hdgf.chunks.ChunkFactory$CommandDefinition[]> r4 = r10.chunkCommandDefinitions     // Catch: java.lang.Throwable -> Lb0
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Throwable -> Lb0
            r4.put(r2, r3)     // Catch: java.lang.Throwable -> Lb0
            goto L16
        L92:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> Lb0
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb0
            r3.<init>()     // Catch: java.lang.Throwable -> Lb0
            java.lang.String r4 = "Expecting start xxx, found "
            r3.append(r4)     // Catch: java.lang.Throwable -> Lb0
            r3.append(r2)     // Catch: java.lang.Throwable -> Lb0
            java.lang.String r2 = r3.toString()     // Catch: java.lang.Throwable -> Lb0
            r10.<init>(r2)     // Catch: java.lang.Throwable -> Lb0
            throw r10     // Catch: java.lang.Throwable -> Lb0
        La9:
            r1.close()     // Catch: java.lang.Throwable -> Lbc
            r0.close()
            return
        Lb0:
            r10 = move-exception
            throw r10     // Catch: java.lang.Throwable -> Lb2
        Lb2:
            r2 = move-exception
            r1.close()     // Catch: java.lang.Throwable -> Lb7
            goto Lbb
        Lb7:
            r1 = move-exception
            r10.addSuppressed(r1)     // Catch: java.lang.Throwable -> Lbc
        Lbb:
            throw r2     // Catch: java.lang.Throwable -> Lbc
        Lbc:
            r10 = move-exception
            goto Lc6
        Lbe:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> Lbc
            java.lang.String r1 = "Unable to find HDGF chunk definition on the classpath - /org/apache/poi/hdgf/chunks_parse_cmds.tbl"
            r10.<init>(r1)     // Catch: java.lang.Throwable -> Lbc
            throw r10     // Catch: java.lang.Throwable -> Lbc
        Lc6:
            throw r10     // Catch: java.lang.Throwable -> Lc7
        Lc7:
            r1 = move-exception
            if (r0 == 0) goto Ld2
            r0.close()     // Catch: java.lang.Throwable -> Lce
            goto Ld2
        Lce:
            r0 = move-exception
            r10.addSuppressed(r0)
        Ld2:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hdgf.chunks.ChunkFactory.processChunkParseCommands():void");
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00cd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.poi.hdgf.chunks.Chunk createChunk(byte[] r8, int r9) {
        /*
            r7 = this;
            int r0 = r7.version
            org.apache.poi.hdgf.chunks.ChunkHeader r0 = org.apache.poi.hdgf.chunks.ChunkHeader.createChunkHeader(r0, r8, r9)
            int r1 = r0.getLength()
            if (r1 < 0) goto Ld7
            int r1 = r0.getLength()
            int r1 = r1 + r9
            int r2 = r0.getSizeInBytes()
            int r1 = r1 + r2
            int r2 = r8.length
            if (r1 <= r2) goto L59
            org.apache.logging.log4j.Logger r1 = org.apache.poi.hdgf.chunks.ChunkFactory.LOG
            org.apache.logging.log4j.LogBuilder r1 = r1.atWarn()
            int r2 = r0.getLength()
            java.lang.StringBuilder r2 = org.apache.logging.log4j.util.Unbox.box(r2)
            java.lang.String r3 = "Header called for {} bytes, but that would take us past the end of the data!"
            r1.log(r3, r2)
            int r1 = r8.length
            int r2 = r8.length
            int r2 = r2 - r9
            int r3 = r0.getSizeInBytes()
            int r2 = r2 - r3
            r0.setLength(r2)
            boolean r2 = r0.hasTrailer()
            if (r2 == 0) goto L48
            int r2 = r0.getLength()
            int r2 = r2 + (-8)
            r0.setLength(r2)
            int r1 = r1 + (-8)
        L48:
            boolean r2 = r0.hasSeparator()
            if (r2 == 0) goto L59
            int r2 = r0.getLength()
            int r2 = r2 + (-4)
            r0.setLength(r2)
            int r1 = r1 + (-4)
        L59:
            boolean r2 = r0.hasTrailer()
            r3 = 0
            if (r2 == 0) goto L81
            int r2 = r8.length
            int r2 = r2 + (-8)
            if (r1 > r2) goto L6d
            org.apache.poi.hdgf.chunks.ChunkTrailer r2 = new org.apache.poi.hdgf.chunks.ChunkTrailer
            r2.<init>(r8, r1)
            int r1 = r1 + 8
            goto L82
        L6d:
            org.apache.logging.log4j.Logger r2 = org.apache.poi.hdgf.chunks.ChunkFactory.LOG
            org.apache.logging.log4j.LogBuilder r2 = r2.atError()
            java.lang.StringBuilder r4 = org.apache.logging.log4j.util.Unbox.box(r1)
            int r5 = r8.length
            java.lang.StringBuilder r5 = org.apache.logging.log4j.util.Unbox.box(r5)
            java.lang.String r6 = "Header claims a length to {} there's then no space for the trailer in the data ({})"
            r2.log(r6, r4, r5)
        L81:
            r2 = r3
        L82:
            boolean r4 = r0.hasSeparator()
            if (r4 == 0) goto La7
            int r4 = r8.length
            int r4 = r4 + (-4)
            if (r1 > r4) goto L93
            org.apache.poi.hdgf.chunks.ChunkSeparator r3 = new org.apache.poi.hdgf.chunks.ChunkSeparator
            r3.<init>(r8, r1)
            goto La7
        L93:
            org.apache.logging.log4j.Logger r4 = org.apache.poi.hdgf.chunks.ChunkFactory.LOG
            org.apache.logging.log4j.LogBuilder r4 = r4.atError()
            java.lang.StringBuilder r1 = org.apache.logging.log4j.util.Unbox.box(r1)
            int r5 = r8.length
            java.lang.StringBuilder r5 = org.apache.logging.log4j.util.Unbox.box(r5)
            java.lang.String r6 = "Header claims a length to {} there's then no space for the separator in the data ({})"
            r4.log(r6, r1, r5)
        La7:
            int r1 = r0.getSizeInBytes()
            int r9 = r9 + r1
            int r1 = r0.getLength()
            int r4 = org.apache.poi.hdgf.chunks.ChunkFactory.MAX_RECORD_LENGTH
            byte[] r8 = org.apache.poi.util.IOUtils.safelyClone(r8, r9, r1, r4)
            org.apache.poi.hdgf.chunks.Chunk r9 = new org.apache.poi.hdgf.chunks.Chunk
            r9.<init>(r0, r2, r3, r8)
            java.util.Map<java.lang.Integer, org.apache.poi.hdgf.chunks.ChunkFactory$CommandDefinition[]> r7 = r7.chunkCommandDefinitions
            int r8 = r0.getType()
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)
            java.lang.Object r7 = r7.get(r8)
            org.apache.poi.hdgf.chunks.ChunkFactory$CommandDefinition[] r7 = (org.apache.poi.hdgf.chunks.ChunkFactory.CommandDefinition[]) r7
            if (r7 != 0) goto Ld0
            r7 = 0
            org.apache.poi.hdgf.chunks.ChunkFactory$CommandDefinition[] r7 = new org.apache.poi.hdgf.chunks.ChunkFactory.CommandDefinition[r7]
        Ld0:
            r9.setCommandDefinitions(r7)
            r9.processCommands()
            return r9
        Ld7:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            java.lang.String r8 = "Found a chunk with a negative length, which isn't allowed"
            r7.<init>(r8)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hdgf.chunks.ChunkFactory.createChunk(byte[], int):org.apache.poi.hdgf.chunks.Chunk");
    }

    public int getVersion() {
        return this.version;
    }
}
