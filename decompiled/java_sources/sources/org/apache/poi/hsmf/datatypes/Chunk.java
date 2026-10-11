package org.apache.poi.hsmf.datatypes;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Locale;
import org.apache.poi.hsmf.datatypes.Types;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public abstract class Chunk {
    public static final String DEFAULT_NAME_PREFIX = "__substg1.0_";
    private final int chunkId;
    private final String namePrefix;
    private final Types.MAPIType type;

    public Chunk(String str, int i, Types.MAPIType mAPIType) {
        this.namePrefix = str;
        this.chunkId = i;
        this.type = mAPIType;
    }

    public int getChunkId() {
        return this.chunkId;
    }

    public String getEntryName() {
        String asFileEnding = this.type.asFileEnding();
        StringBuilder sb = new StringBuilder(Integer.toHexString(this.chunkId));
        int length = 4 - sb.length();
        if (length > 0) {
            sb.insert(0, StringUtil.repeat('0', length));
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.namePrefix);
        String sb3 = sb.toString();
        Locale locale = Locale.ROOT;
        sb2.append(sb3.toUpperCase(locale));
        sb2.append(asFileEnding.toUpperCase(locale));
        return sb2.toString();
    }

    public Types.MAPIType getType() {
        return this.type;
    }

    public abstract void readValue(InputStream inputStream) throws IOException;

    public abstract void writeValue(OutputStream outputStream) throws IOException;

    public Chunk(int i, Types.MAPIType mAPIType) {
        this("__substg1.0_", i, mAPIType);
    }
}
