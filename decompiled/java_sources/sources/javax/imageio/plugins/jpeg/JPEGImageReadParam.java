package javax.imageio.plugins.jpeg;

import javax.imageio.ImageReadParam;

/* loaded from: classes5.dex */
public class JPEGImageReadParam extends ImageReadParam {

    /* renamed from: a */
    public JPEGQTable[] f97907a = null;

    /* renamed from: b */
    public JPEGHuffmanTable[] f97908b = null;

    /* renamed from: c */
    public JPEGHuffmanTable[] f97909c = null;

    public boolean areTablesSet() {
        return this.f97907a != null;
    }

    public JPEGHuffmanTable[] getACHuffmanTables() {
        JPEGHuffmanTable[] jPEGHuffmanTableArr = this.f97909c;
        if (jPEGHuffmanTableArr != null) {
            return (JPEGHuffmanTable[]) jPEGHuffmanTableArr.clone();
        }
        return null;
    }

    public JPEGHuffmanTable[] getDCHuffmanTables() {
        JPEGHuffmanTable[] jPEGHuffmanTableArr = this.f97908b;
        if (jPEGHuffmanTableArr != null) {
            return (JPEGHuffmanTable[]) jPEGHuffmanTableArr.clone();
        }
        return null;
    }

    public JPEGQTable[] getQTables() {
        JPEGQTable[] jPEGQTableArr = this.f97907a;
        if (jPEGQTableArr != null) {
            return (JPEGQTable[]) jPEGQTableArr.clone();
        }
        return null;
    }

    public void setDecodeTables(JPEGQTable[] jPEGQTableArr, JPEGHuffmanTable[] jPEGHuffmanTableArr, JPEGHuffmanTable[] jPEGHuffmanTableArr2) {
        if (jPEGQTableArr == null || jPEGHuffmanTableArr == null || jPEGHuffmanTableArr2 == null || jPEGQTableArr.length > 4 || jPEGHuffmanTableArr.length > 4 || jPEGHuffmanTableArr2.length > 4 || jPEGHuffmanTableArr.length != jPEGHuffmanTableArr2.length) {
            throw new IllegalArgumentException("Invalid JPEG table arrays");
        }
        this.f97907a = (JPEGQTable[]) jPEGQTableArr.clone();
        this.f97908b = (JPEGHuffmanTable[]) jPEGHuffmanTableArr.clone();
        this.f97909c = (JPEGHuffmanTable[]) jPEGHuffmanTableArr2.clone();
    }

    public void unsetDecodeTables() {
        this.f97907a = null;
        this.f97908b = null;
        this.f97909c = null;
    }
}
