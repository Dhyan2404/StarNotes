package javax.imageio.plugins.jpeg;

import java.util.Locale;
import javax.imageio.ImageWriteParam;

/* loaded from: classes5.dex */
public class JPEGImageWriteParam extends ImageWriteParam {

    /* renamed from: a */
    public JPEGQTable[] f97910a;

    /* renamed from: b */
    public JPEGHuffmanTable[] f97911b;

    /* renamed from: c */
    public JPEGHuffmanTable[] f97912c;

    /* renamed from: d */
    public boolean f97913d;

    /* renamed from: e */
    public String[] f97914e;

    /* renamed from: f */
    public float[] f97915f;

    /* renamed from: g */
    public String[] f97916g;

    public JPEGImageWriteParam(Locale locale) {
        super(locale);
        this.f97910a = null;
        this.f97911b = null;
        this.f97912c = null;
        this.f97913d = false;
        String[] strArr = {"JPEG"};
        this.f97914e = strArr;
        this.f97915f = new float[]{0.0f, 0.3f, 0.75f, 1.0f};
        this.f97916g = new String[]{"Low quality", "Medium quality", "Visually lossless"};
        this.canWriteProgressive = true;
        this.progressiveMode = 0;
        this.canWriteCompressed = true;
        this.compressionTypes = strArr;
        this.compressionType = strArr[0];
        this.compressionQuality = 0.75f;
    }

    public boolean areTablesSet() {
        return this.f97910a != null;
    }

    public JPEGHuffmanTable[] getACHuffmanTables() {
        JPEGHuffmanTable[] jPEGHuffmanTableArr = this.f97912c;
        if (jPEGHuffmanTableArr != null) {
            return (JPEGHuffmanTable[]) jPEGHuffmanTableArr.clone();
        }
        return null;
    }

    @Override // javax.imageio.ImageWriteParam
    public String[] getCompressionQualityDescriptions() {
        if (getCompressionMode() != 2) {
            throw new IllegalStateException("Compression mode not MODE_EXPLICIT!");
        }
        if (getCompressionTypes() == null || getCompressionType() != null) {
            return (String[]) this.f97916g.clone();
        }
        throw new IllegalStateException("No compression type set!");
    }

    @Override // javax.imageio.ImageWriteParam
    public float[] getCompressionQualityValues() {
        if (getCompressionMode() != 2) {
            throw new IllegalStateException("Compression mode not MODE_EXPLICIT!");
        }
        if (getCompressionTypes() == null || getCompressionType() != null) {
            return (float[]) this.f97915f.clone();
        }
        throw new IllegalStateException("No compression type set!");
    }

    public JPEGHuffmanTable[] getDCHuffmanTables() {
        JPEGHuffmanTable[] jPEGHuffmanTableArr = this.f97911b;
        if (jPEGHuffmanTableArr != null) {
            return (JPEGHuffmanTable[]) jPEGHuffmanTableArr.clone();
        }
        return null;
    }

    public boolean getOptimizeHuffmanTables() {
        return this.f97913d;
    }

    public JPEGQTable[] getQTables() {
        JPEGQTable[] jPEGQTableArr = this.f97910a;
        if (jPEGQTableArr != null) {
            return (JPEGQTable[]) jPEGQTableArr.clone();
        }
        return null;
    }

    @Override // javax.imageio.ImageWriteParam
    public boolean isCompressionLossless() {
        if (getCompressionMode() == 2) {
            return false;
        }
        throw new IllegalStateException("Compression mode not MODE_EXPLICIT!");
    }

    public void setEncodeTables(JPEGQTable[] jPEGQTableArr, JPEGHuffmanTable[] jPEGHuffmanTableArr, JPEGHuffmanTable[] jPEGHuffmanTableArr2) {
        if (jPEGQTableArr == null || jPEGHuffmanTableArr == null || jPEGHuffmanTableArr2 == null || jPEGQTableArr.length > 4 || jPEGHuffmanTableArr.length > 4 || jPEGHuffmanTableArr2.length > 4 || jPEGHuffmanTableArr.length != jPEGHuffmanTableArr2.length) {
            throw new IllegalArgumentException("Invalid JPEG table arrays");
        }
        this.f97910a = (JPEGQTable[]) jPEGQTableArr.clone();
        this.f97911b = (JPEGHuffmanTable[]) jPEGHuffmanTableArr.clone();
        this.f97912c = (JPEGHuffmanTable[]) jPEGHuffmanTableArr2.clone();
    }

    public void setOptimizeHuffmanTables(boolean z) {
        this.f97913d = z;
    }

    @Override // javax.imageio.ImageWriteParam
    public void unsetCompression() {
        if (getCompressionMode() != 2) {
            throw new IllegalStateException("Compression mode not MODE_EXPLICIT!");
        }
        this.compressionQuality = 0.75f;
    }

    public void unsetEncodeTables() {
        this.f97910a = null;
        this.f97911b = null;
        this.f97912c = null;
    }
}
