package com.sun.imageio.plugins.bmp;

import androidx.exifinterface.media.ExifInterface;
import androidx.palette.graphics.Palette;
import com.google.common.net.HttpHeaders;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.sun.imageio.plugins.common.I18N;
import com.sun.imageio.plugins.common.ImageUtil;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.UnsupportedEncodingException;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.metadata.IIOMetadataFormatImpl;
import javax.imageio.metadata.IIOMetadataNode;
import org.w3c.dom.Node;

/* loaded from: classes9.dex */
public class BMPMetadata extends IIOMetadata implements BMPConstants {
    public static final String nativeMetadataFormatName = "javax_imageio_bmp_1.0";
    public int alphaMask;
    public short bitsPerPixel;
    public int blue;
    public int blueMask;
    public double blueX;
    public double blueY;
    public double blueZ;
    public String bmpVersion;
    public int colorSpace;
    public int colorsImportant;
    public int colorsUsed;
    public int compression;
    public int gammaBlue;
    public int gammaGreen;
    public int gammaRed;
    public int green;
    public int greenMask;
    public double greenX;
    public double greenY;
    public double greenZ;
    public int height;
    public int imageSize;
    public int intent;
    public byte[] palette;
    public int paletteSize;
    public int red;
    public int redMask;
    public double redX;
    public double redY;
    public double redZ;
    public int width;
    public int xPixelsPerMeter;
    public int yPixelsPerMeter;

    public BMPMetadata() {
        super(true, nativeMetadataFormatName, "com.sun.imageio.plugins.bmp.BMPMetadataFormat", null, null);
        this.palette = null;
    }

    private IIOMetadataNode addChildNode(IIOMetadataNode iIOMetadataNode, String str, Object obj) {
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode(str);
        if (obj != null) {
            iIOMetadataNode2.setUserObject(obj);
            iIOMetadataNode2.setNodeValue(ImageUtil.convertObjectToString(obj));
        }
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        return iIOMetadataNode2;
    }

    private void addXYZPoints(IIOMetadataNode iIOMetadataNode, String str, double d, double d2, double d3) {
        IIOMetadataNode addChildNode = addChildNode(iIOMetadataNode, str, null);
        addChildNode(addChildNode, "X", Double.valueOf(d));
        addChildNode(addChildNode, "Y", Double.valueOf(d2));
        addChildNode(addChildNode, Constants.HASIDCALL_INDEX_SIG, Double.valueOf(d3));
    }

    private String countBits(int i) {
        int i2 = 0;
        while (i > 0) {
            if ((i & 1) == 1) {
                i2++;
            }
            i >>>= 1;
        }
        if (i2 == 0) {
            return "";
        }
        return "" + i2;
    }

    private Node getNativeTree() {
        String str;
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode(nativeMetadataFormatName);
        addChildNode(iIOMetadataNode, "BMPVersion", this.bmpVersion);
        addChildNode(iIOMetadataNode, HttpHeaders.WIDTH, Integer.valueOf(this.width));
        addChildNode(iIOMetadataNode, "Height", Integer.valueOf(this.height));
        addChildNode(iIOMetadataNode, "BitsPerPixel", Short.valueOf(this.bitsPerPixel));
        addChildNode(iIOMetadataNode, ExifInterface.TAG_COMPRESSION, Integer.valueOf(this.compression));
        addChildNode(iIOMetadataNode, "ImageSize", Integer.valueOf(this.imageSize));
        IIOMetadataNode addChildNode = addChildNode(iIOMetadataNode, "PixelsPerMeter", null);
        addChildNode(addChildNode, "X", Integer.valueOf(this.xPixelsPerMeter));
        addChildNode(addChildNode, "Y", Integer.valueOf(this.yPixelsPerMeter));
        addChildNode(iIOMetadataNode, "ColorsUsed", Integer.valueOf(this.colorsUsed));
        addChildNode(iIOMetadataNode, "ColorsImportant", Integer.valueOf(this.colorsImportant));
        int i = 0;
        for (int i2 = 0; i2 < this.bmpVersion.length(); i2++) {
            if (Character.isDigit(this.bmpVersion.charAt(i2))) {
                i = this.bmpVersion.charAt(i2) - '0';
            }
        }
        if (i >= 4) {
            IIOMetadataNode addChildNode2 = addChildNode(iIOMetadataNode, "Mask", null);
            addChildNode(addChildNode2, "Red", Integer.valueOf(this.redMask));
            addChildNode(addChildNode2, "Green", Integer.valueOf(this.greenMask));
            addChildNode(addChildNode2, "Blue", Integer.valueOf(this.blueMask));
            addChildNode(addChildNode2, "Alpha", Integer.valueOf(this.alphaMask));
            addChildNode(iIOMetadataNode, "ColorSpaceType", Integer.valueOf(this.colorSpace));
            IIOMetadataNode addChildNode3 = addChildNode(iIOMetadataNode, "CIEXYZEndPoints", null);
            str = "Red";
            addXYZPoints(addChildNode3, "Red", this.redX, this.redY, this.redZ);
            addXYZPoints(addChildNode3, "Green", this.greenX, this.greenY, this.greenZ);
            addXYZPoints(addChildNode3, "Blue", this.blueX, this.blueY, this.blueZ);
            addChildNode(iIOMetadataNode, "Intent", Integer.valueOf(this.intent));
        } else {
            str = "Red";
        }
        if (this.palette != null && this.paletteSize > 0) {
            IIOMetadataNode addChildNode4 = addChildNode(iIOMetadataNode, Palette.f8616j, null);
            int length = this.palette.length / this.paletteSize;
            int i3 = 0;
            for (int i4 = 0; i4 < this.paletteSize; i4++) {
                IIOMetadataNode addChildNode5 = addChildNode(addChildNode4, "PaletteEntry", null);
                byte[] bArr = this.palette;
                int i5 = i3 + 1;
                int i6 = bArr[i3] & 255;
                this.red = i6;
                int i7 = i5 + 1;
                this.green = bArr[i5] & 255;
                int i8 = i7 + 1;
                this.blue = bArr[i7] & 255;
                addChildNode(addChildNode5, str, Byte.valueOf((byte) i6));
                addChildNode(addChildNode5, "Green", Byte.valueOf((byte) this.green));
                addChildNode(addChildNode5, "Blue", Byte.valueOf((byte) this.blue));
                if (length == 4) {
                    addChildNode(addChildNode5, "Alpha", Byte.valueOf((byte) (this.palette[i8] & 255)));
                    i3 = i8 + 1;
                } else {
                    i3 = i8;
                }
            }
        }
        return iIOMetadataNode;
    }

    private String toISO8859(byte[] bArr) {
        try {
            return new String(bArr, "ISO-8859-1");
        } catch (UnsupportedEncodingException unused) {
            return "";
        }
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public Node getAsTree(String str) {
        if (str.equals(nativeMetadataFormatName)) {
            return getNativeTree();
        }
        if (str.equals(IIOMetadataFormatImpl.standardMetadataFormatName)) {
            return getStandardTree();
        }
        throw new IllegalArgumentException(I18N.getString("BMPMetadata0"));
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardChromaNode() {
        if (this.palette == null || this.paletteSize <= 0) {
            return null;
        }
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("Chroma");
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode(Palette.f8616j);
        int length = this.palette.length / this.paletteSize;
        iIOMetadataNode2.setAttribute("value", "" + length);
        int i = 0;
        for (int i2 = 0; i2 < this.paletteSize; i2++) {
            IIOMetadataNode iIOMetadataNode3 = new IIOMetadataNode("PaletteEntry");
            iIOMetadataNode3.setAttribute(FirebaseAnalytics.Param.INDEX, "" + i2);
            StringBuilder sb = new StringBuilder();
            sb.append("");
            int i3 = i + 1;
            sb.append((int) this.palette[i]);
            iIOMetadataNode3.setAttribute("red", sb.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("");
            int i4 = i3 + 1;
            sb2.append((int) this.palette[i3]);
            iIOMetadataNode3.setAttribute("green", sb2.toString());
            StringBuilder sb3 = new StringBuilder();
            sb3.append("");
            int i5 = i4 + 1;
            sb3.append((int) this.palette[i4]);
            iIOMetadataNode3.setAttribute("blue", sb3.toString());
            if (length != 4 || this.palette[i5] == 0) {
                i = i5;
            } else {
                iIOMetadataNode3.setAttribute("alpha", "" + ((int) this.palette[i5]));
                i = i5 + 1;
            }
            iIOMetadataNode2.appendChild(iIOMetadataNode3);
        }
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardCompressionNode() {
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode(ExifInterface.TAG_COMPRESSION);
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("CompressionTypeName");
        iIOMetadataNode2.setAttribute("value", BMPCompressionTypes.getName(this.compression));
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardDataNode() {
        String str;
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("Data");
        short s = this.bitsPerPixel;
        if (s == 24) {
            str = "8 8 8 ";
        } else if (s == 16 || s == 32) {
            str = "" + countBits(this.redMask) + " " + countBits(this.greenMask) + countBits(this.blueMask) + "" + countBits(this.alphaMask);
        } else {
            str = "";
        }
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode(ExifInterface.TAG_BITS_PER_SAMPLE);
        iIOMetadataNode2.setAttribute("value", str);
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public IIOMetadataNode getStandardDimensionNode() {
        if (this.yPixelsPerMeter <= 0.0f || this.xPixelsPerMeter <= 0.0f) {
            return null;
        }
        IIOMetadataNode iIOMetadataNode = new IIOMetadataNode("Dimension");
        float f = this.yPixelsPerMeter / this.xPixelsPerMeter;
        IIOMetadataNode iIOMetadataNode2 = new IIOMetadataNode("PixelAspectRatio");
        iIOMetadataNode2.setAttribute("value", "" + f);
        iIOMetadataNode.appendChild(iIOMetadataNode2);
        IIOMetadataNode iIOMetadataNode3 = new IIOMetadataNode("HorizontalPhysicalPixelSpacing");
        iIOMetadataNode3.setAttribute("value", "" + (1000.0f / this.xPixelsPerMeter));
        iIOMetadataNode.appendChild(iIOMetadataNode3);
        IIOMetadataNode iIOMetadataNode4 = new IIOMetadataNode("VerticalPhysicalPixelSpacing");
        iIOMetadataNode4.setAttribute("value", "" + (1000.0f / this.yPixelsPerMeter));
        iIOMetadataNode.appendChild(iIOMetadataNode4);
        return iIOMetadataNode;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public boolean isReadOnly() {
        return true;
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public void mergeTree(String str, Node node) {
        throw new IllegalStateException(I18N.getString("BMPMetadata1"));
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public void reset() {
        throw new IllegalStateException(I18N.getString("BMPMetadata1"));
    }

    @Override // javax.imageio.metadata.IIOMetadata
    public void setFromTree(String str, Node node) {
        throw new IllegalStateException(I18N.getString("BMPMetadata1"));
    }
}
