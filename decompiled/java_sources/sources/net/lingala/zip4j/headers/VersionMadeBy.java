package net.lingala.zip4j.headers;

import org.apache.commons.compress.archivers.tar.TarConstants;

/* loaded from: classes11.dex */
public enum VersionMadeBy {
    SPECIFICATION_VERSION(TarConstants.LF_CHR),
    WINDOWS((byte) 0),
    UNIX((byte) 3);

    private final byte code;

    VersionMadeBy(byte b) {
        this.code = b;
    }

    public byte getCode() {
        return this.code;
    }
}
