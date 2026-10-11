package sun.java2d.pipe;

/* loaded from: classes16.dex */
public interface AATileGenerator {
    void dispose();

    void getAlpha(byte[] bArr, int i, int i2);

    int getTileHeight();

    int getTileWidth();

    int getTypicalAlpha();

    void nextTile();
}
