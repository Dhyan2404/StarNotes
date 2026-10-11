package org.apache.poi.hdgf.chunks;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.hdgf.chunks.ChunkFactory;

/* loaded from: classes12.dex */
public final class Chunk {
    private static final Logger LOG = LogManager.getLogger((Class<?>) Chunk.class);
    private ChunkFactory.CommandDefinition[] commandDefinitions;
    private Command[] commands;
    private final byte[] contents;
    private final ChunkHeader header;
    private String name;
    private final ChunkSeparator separator;
    private final ChunkTrailer trailer;

    /* loaded from: classes12.dex */
    public static final class BlockOffsetCommand extends Command {
        /* JADX INFO: Access modifiers changed from: private */
        public void setOffset(int i) {
            this.value = Integer.valueOf(i);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private BlockOffsetCommand(org.apache.poi.hdgf.chunks.ChunkFactory.CommandDefinition r2) {
            /*
                r1 = this;
                r0 = 0
                r1.<init>(r2, r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hdgf.chunks.Chunk.BlockOffsetCommand.<init>(org.apache.poi.hdgf.chunks.ChunkFactory$CommandDefinition):void");
        }
    }

    public Chunk(ChunkHeader chunkHeader, ChunkTrailer chunkTrailer, ChunkSeparator chunkSeparator, byte[] bArr) {
        this.header = chunkHeader;
        this.trailer = chunkTrailer;
        this.separator = chunkSeparator;
        this.contents = (byte[]) bArr.clone();
    }

    public byte[] _getContents() {
        return this.contents;
    }

    public ChunkFactory.CommandDefinition[] getCommandDefinitions() {
        return this.commandDefinitions;
    }

    public Command[] getCommands() {
        return this.commands;
    }

    public ChunkHeader getHeader() {
        return this.header;
    }

    public String getName() {
        return this.name;
    }

    public int getOnDiskSize() {
        int sizeInBytes = this.header.getSizeInBytes() + this.contents.length;
        ChunkTrailer chunkTrailer = this.trailer;
        if (chunkTrailer != null) {
            sizeInBytes += chunkTrailer.getTrailerData().length;
        }
        ChunkSeparator chunkSeparator = this.separator;
        return chunkSeparator != null ? sizeInBytes + chunkSeparator.separatorData.length : sizeInBytes;
    }

    public ChunkSeparator getSeparator() {
        return this.separator;
    }

    public ChunkTrailer getTrailer() {
        return this.trailer;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void processCommands() {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hdgf.chunks.Chunk.processCommands():void");
    }

    public void setCommandDefinitions(ChunkFactory.CommandDefinition[] commandDefinitionArr) {
        this.commandDefinitions = commandDefinitionArr;
    }

    /* loaded from: classes12.dex */
    public static class Command {
        private ChunkFactory.CommandDefinition definition;
        protected Object value;

        public ChunkFactory.CommandDefinition getDefinition() {
            return this.definition;
        }

        public Object getValue() {
            return this.value;
        }

        private Command(ChunkFactory.CommandDefinition commandDefinition, Object obj) {
            this.definition = commandDefinition;
            this.value = obj;
        }

        private Command(ChunkFactory.CommandDefinition commandDefinition) {
            this(commandDefinition, (Object) null);
        }
    }
}
