package javax.imageio;

import javax.imageio.metadata.IIOMetadata;

/* loaded from: classes5.dex */
public interface ImageTranscoder {
    IIOMetadata convertImageMetadata(IIOMetadata iIOMetadata, ImageTypeSpecifier imageTypeSpecifier, ImageWriteParam imageWriteParam);

    IIOMetadata convertStreamMetadata(IIOMetadata iIOMetadata, ImageWriteParam imageWriteParam);
}
