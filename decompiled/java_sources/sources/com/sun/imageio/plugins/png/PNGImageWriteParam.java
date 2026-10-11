package com.sun.imageio.plugins.png;

import java.util.Locale;
import javax.imageio.ImageWriteParam;

/* loaded from: classes9.dex */
final class PNGImageWriteParam extends ImageWriteParam {
    private static final float DEFAULT_QUALITY = 0.5f;
    private static final String[] compressionNames = {"Deflate"};
    private static final float[] qualityVals = {0.0f, 0.3f, 0.75f, 1.0f};
    private static final String[] qualityDescs = {"High compression", "Medium compression", "Low compression"};

    public PNGImageWriteParam(Locale locale) {
        this.canWriteProgressive = true;
        this.locale = locale;
        this.canWriteCompressed = true;
        String[] strArr = compressionNames;
        this.compressionTypes = strArr;
        this.compressionType = strArr[0];
        this.compressionMode = 1;
        this.compressionQuality = 0.5f;
    }

    @Override // javax.imageio.ImageWriteParam
    public String[] getCompressionQualityDescriptions() {
        super.getCompressionQualityDescriptions();
        return (String[]) qualityDescs.clone();
    }

    @Override // javax.imageio.ImageWriteParam
    public float[] getCompressionQualityValues() {
        super.getCompressionQualityValues();
        return (float[]) qualityVals.clone();
    }

    @Override // javax.imageio.ImageWriteParam
    public boolean isCompressionLossless() {
        return true;
    }

    @Override // javax.imageio.ImageWriteParam
    public void unsetCompression() {
        super.unsetCompression();
        this.compressionType = this.compressionTypes[0];
        this.compressionQuality = 0.5f;
    }
}
