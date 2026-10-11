package com.twelvemonkeys.imageio.metadata;

import java.io.IOException;
import javax.imageio.stream.ImageInputStream;

/* loaded from: classes10.dex */
public abstract class MetadataReader {
    public abstract Directory read(ImageInputStream imageInputStream) throws IOException;
}
