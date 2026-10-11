package com.sun.imageio.plugins.tiff;

import javax.imageio.ImageWriteParam;

/* loaded from: classes9.dex */
public class TIFFZLibCompressor extends TIFFDeflater {
    public TIFFZLibCompressor(ImageWriteParam imageWriteParam, int i) {
        super("ZLib", 8, imageWriteParam, i);
    }
}
