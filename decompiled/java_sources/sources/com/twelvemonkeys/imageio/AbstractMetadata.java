package com.twelvemonkeys.imageio;

import java.util.Arrays;
import javax.imageio.metadata.IIOInvalidTreeException;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.metadata.IIOMetadataFormatImpl;
import org.w3c.dom.Node;

/* loaded from: classes10.dex */
public abstract class AbstractMetadata extends IIOMetadata implements Cloneable {
    public AbstractMetadata(boolean z, String str, String str2, String[] strArr, String[] strArr2) {
        super(z, str, str2, strArr, strArr2);
    }

    public static String toListString(short[] sArr) {
        String arrays = Arrays.toString(sArr);
        return arrays.substring(1, arrays.length() - 1);
    }

    public final void assertMutable() {
        if (isReadOnly()) {
            throw new IllegalStateException("Metadata is read-only");
        }
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public Node getAsTree(String str) {
        validateFormatName(str);
        if (str.equals(this.nativeMetadataFormatName)) {
            return getNativeTree();
        }
        if (str.equals(IIOMetadataFormatImpl.standardMetadataFormatName)) {
            return getStandardTree();
        }
        return null;
    }

    public Node getNativeTree() {
        throw new UnsupportedOperationException("getNativeTree");
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public boolean isReadOnly() {
        return true;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public void mergeTree(String str, Node node) throws IIOInvalidTreeException {
        assertMutable();
        validateFormatName(str);
        if (node.getNodeName().equals(str)) {
            return;
        }
        throw new IIOInvalidTreeException("Root must be " + str, node);
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public void reset() {
        assertMutable();
    }

    public final void validateFormatName(String str) {
        String[] metadataFormatNames = getMetadataFormatNames();
        if (metadataFormatNames != null) {
            for (String str2 : metadataFormatNames) {
                if (str2.equals(str)) {
                    return;
                }
            }
        }
        throw new IllegalArgumentException(String.format("Bad format name: \"%s\". Expected one of %s", str, Arrays.toString(metadataFormatNames)));
    }

    public AbstractMetadata() {
        super(true, null, null, null, null);
    }
}
