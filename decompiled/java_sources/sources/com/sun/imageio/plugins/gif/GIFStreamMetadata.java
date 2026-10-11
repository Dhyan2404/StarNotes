package com.sun.imageio.plugins.gif;

import androidx.exifinterface.media.ExifInterface;
import androidx.palette.graphics.Palette;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.utils.ColorUtils;
import javax.imageio.metadata.IIOInvalidTreeException;
import javax.imageio.metadata.IIOMetadataFormatImpl;
import javax.imageio.metadata.IIOMetadataNode;
import org.w3c.dom.Node;

/* loaded from: classes9.dex */
public class GIFStreamMetadata extends GIFMetadata {
    static final String nativeMetadataFormatName = "javax_imageio_gif_stream_1.0";
    public int backgroundColorIndex;
    public int colorResolution;
    public byte[] globalColorTable;
    public int logicalScreenHeight;
    public int logicalScreenWidth;
    public int pixelAspectRatio;
    public boolean sortFlag;
    public String version;
    static final String[] versionStrings = {"87a", "89a"};
    static final String[] colorTableSizes = {"2", "4", "8", "16", "32", "64", "128", "256"};

    public GIFStreamMetadata(boolean z, String str, String str2, String[] strArr, String[] strArr2) {
        super(z, str, str2, strArr, strArr2);
        this.globalColorTable = null;
    }

    private Node getNativeTree() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode(nativeMetadataFormatName);
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("Version");
        iIOMetadataNode2.setAttribute("value", this.version);
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        IIOMetadataNode iIOMetadataNode3 = new IIOMetadataNode("LogicalScreenDescriptor");
        int i = this.logicalScreenWidth;
        iIOMetadataNode3.setAttribute("logicalScreenWidth", i == -1 ? "" : Integer.toString(i));
        int i2 = this.logicalScreenHeight;
        iIOMetadataNode3.setAttribute("logicalScreenHeight", i2 == -1 ? "" : Integer.toString(i2));
        int i3 = this.colorResolution;
        iIOMetadataNode3.setAttribute("colorResolution", i3 != -1 ? Integer.toString(i3) : "");
        iIOMetadataNode3.setAttribute("pixelAspectRatio", Integer.toString(this.pixelAspectRatio));
        iIOMetadataNode.appendChild(iIOMetadataNode3);
        if (this.globalColorTable != null) {
            IIOMetadataNode iIOMetadataNode4 = new IIOMetadataNode("GlobalColorTable");
            int length = this.globalColorTable.length / 3;
            iIOMetadataNode4.setAttribute("sizeOfGlobalColorTable", Integer.toString(length));
            iIOMetadataNode4.setAttribute("backgroundColorIndex", Integer.toString(this.backgroundColorIndex));
            iIOMetadataNode4.setAttribute("sortFlag", this.sortFlag ? "TRUE" : "FALSE");
            for (int i4 = 0; i4 < length; i4++) {
                IIOMetadataNode iIOMetadataNode5 = new IIOMetadataNode("ColorTableEntry");
                iIOMetadataNode5.setAttribute(FirebaseAnalytics.Param.INDEX, Integer.toString(i4));
                byte[] bArr = this.globalColorTable;
                int i5 = i4 * 3;
                int i6 = bArr[i5] & 255;
                int i7 = bArr[i5 + 1] & 255;
                int i8 = bArr[i5 + 2] & 255;
                iIOMetadataNode5.setAttribute("red", Integer.toString(i6));
                iIOMetadataNode5.setAttribute("green", Integer.toString(i7));
                iIOMetadataNode5.setAttribute("blue", Integer.toString(i8));
                iIOMetadataNode4.appendChild(iIOMetadataNode5);
            }
            iIOMetadataNode.appendChild(iIOMetadataNode4);
        }
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public Node getAsTree(String str) {
        if (str.equals(nativeMetadataFormatName)) {
            return getNativeTree();
        }
        if (str.equals(IIOMetadataFormatImpl.standardMetadataFormatName)) {
            return getStandardTree();
        }
        throw new IllegalArgumentException("Not a recognized format!");
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardChromaNode() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("Chroma");
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("ColorSpaceType");
        iIOMetadataNode2.setAttribute("name", ColorUtils.RGB_COLOR_START);
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        IIOMetadataNode iIOMetadataNode3 = new IIOMetadataNode("BlackIsZero");
        iIOMetadataNode3.setAttribute("value", "TRUE");
        iIOMetadataNode.appendChild(iIOMetadataNode3);
        if (this.globalColorTable != null) {
            Node iIOMetadataNode4 = new IIOMetadataNode(Palette.f8616j);
            int length = this.globalColorTable.length / 3;
            for (int i = 0; i < length; i++) {
                IIOMetadataNode iIOMetadataNode5 = new IIOMetadataNode("PaletteEntry");
                iIOMetadataNode5.setAttribute(FirebaseAnalytics.Param.INDEX, Integer.toString(i));
                int i2 = i * 3;
                iIOMetadataNode5.setAttribute("red", Integer.toString(this.globalColorTable[i2] & 255));
                iIOMetadataNode5.setAttribute("green", Integer.toString(this.globalColorTable[i2 + 1] & 255));
                iIOMetadataNode5.setAttribute("blue", Integer.toString(this.globalColorTable[i2 + 2] & 255));
                iIOMetadataNode4.appendChild(iIOMetadataNode5);
            }
            iIOMetadataNode.appendChild(iIOMetadataNode4);
            IIOMetadataNode iIOMetadataNode6 = new IIOMetadataNode("BackgroundIndex");
            iIOMetadataNode6.setAttribute("value", Integer.toString(this.backgroundColorIndex));
            iIOMetadataNode.appendChild(iIOMetadataNode6);
        }
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardCompressionNode() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode(ExifInterface.TAG_COMPRESSION);
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("CompressionTypeName");
        iIOMetadataNode2.setAttribute("value", "lzw");
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        IIOMetadataNode iIOMetadataNode3 = new IIOMetadataNode("Lossless");
        iIOMetadataNode3.setAttribute("value", "TRUE");
        iIOMetadataNode.appendChild(iIOMetadataNode3);
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardDataNode() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("Data");
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("SampleFormat");
        iIOMetadataNode2.setAttribute("value", SsManifestParser.C4932c.f26641g);
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        IIOMetadataNode iIOMetadataNode3 = new IIOMetadataNode(ExifInterface.TAG_BITS_PER_SAMPLE);
        int i = this.colorResolution;
        iIOMetadataNode3.setAttribute("value", i == -1 ? "" : Integer.toString(i));
        iIOMetadataNode.appendChild(iIOMetadataNode3);
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardDimensionNode() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("Dimension");
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("PixelAspectRatio");
        iIOMetadataNode2.setAttribute("value", Float.toString(this.pixelAspectRatio != 0 ? (r2 + 15) / 64.0f : 1.0f));
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        IIOMetadataNode iIOMetadataNode3 = new IIOMetadataNode("ImageOrientation");
        iIOMetadataNode3.setAttribute("value", "Normal");
        iIOMetadataNode.appendChild(iIOMetadataNode3);
        IIOMetadataNode iIOMetadataNode4 = new IIOMetadataNode("HorizontalScreenSize");
        int i = this.logicalScreenWidth;
        iIOMetadataNode4.setAttribute("value", i == -1 ? "" : Integer.toString(i));
        iIOMetadataNode.appendChild(iIOMetadataNode4);
        IIOMetadataNode iIOMetadataNode5 = new IIOMetadataNode("VerticalScreenSize");
        int i2 = this.logicalScreenHeight;
        iIOMetadataNode5.setAttribute("value", i2 != -1 ? Integer.toString(i2) : "");
        iIOMetadataNode.appendChild(iIOMetadataNode5);
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardDocumentNode() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("Document");
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("FormatVersion");
        iIOMetadataNode2.setAttribute("value", this.version);
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardTextNode() {
        return null;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardTransparencyNode() {
        return null;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public boolean isReadOnly() {
        return true;
    }

    @Override // com.sun.imageio.plugins.gif.GIFMetadata
    public void mergeNativeTree(Node node) throws IIOInvalidTreeException {
        throw new IllegalStateException("Metadata is read-only!");
    }

    @Override // com.sun.imageio.plugins.gif.GIFMetadata
    public void mergeStandardTree(Node node) throws IIOInvalidTreeException {
        throw new IllegalStateException("Metadata is read-only!");
    }

    @Override // com.sun.imageio.plugins.gif.GIFMetadata, javax.imageio.metadata.IIOMetadata
    public /* bridge */ /* synthetic */ void mergeTree(String str, Node node) throws IIOInvalidTreeException {
        super.mergeTree(str, node);
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public void reset() {
        throw new IllegalStateException("Metadata is read-only!");
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public void setFromTree(String str, Node node) throws IIOInvalidTreeException {
        throw new IllegalStateException("Metadata is read-only!");
    }

    public GIFStreamMetadata() {
        this(true, nativeMetadataFormatName, "com.sun.imageio.plugins.gif.GIFStreamMetadataFormat", null, null);
    }
}
