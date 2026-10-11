package com.twelvemonkeys.imageio.metadata;

import java.io.IOException;
import javax.imageio.stream.ImageOutputStream;

/* loaded from: classes10.dex */
public abstract class MetadataWriter {
    public abstract boolean write(Directory directory, ImageOutputStream imageOutputStream) throws IOException;
}
