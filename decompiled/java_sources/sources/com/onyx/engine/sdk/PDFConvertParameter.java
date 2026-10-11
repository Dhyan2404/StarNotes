package com.onyx.engine.sdk;

/* loaded from: classes8.dex */
public class PDFConvertParameter {
    public static final float DEFAULT_IMAGE_MAX_SCALE = 2.5f;
    public static final int DEFAULT_IMAGE_QUALITY = 80;
    public static final int SAVE_PDF_IMAGE_SIZE = 524288000;
    public static final int SAVE_PDF_PAGE_COUNT = 100;
    String cachePath;
    String pdfPath;
    boolean writeCover = true;
    boolean addLineTailSpace = true;
    boolean writeTextByWord = true;
    boolean enableHyphen = true;
    int savePDFPageCount = 100;
    int savePDFImageSize = SAVE_PDF_IMAGE_SIZE;
    ImageType imageType = ImageType.ORIGIN;
    int imageQuality = 80;
    float imageMaxScale = 2.5f;

    public PDFConvertParameter() {
    }

    public String getCachePath() {
        return this.cachePath;
    }

    public float getImageMaxScale() {
        return this.imageMaxScale;
    }

    public int getImageQuality() {
        return this.imageQuality;
    }

    public ImageType getImageType() {
        return this.imageType;
    }

    public String getPdfPath() {
        return this.pdfPath;
    }

    public int getSavePDFImageSize() {
        return this.savePDFImageSize;
    }

    public int getSavePDFPageCount() {
        return this.savePDFPageCount;
    }

    public boolean isAddLineTailSpace() {
        return this.addLineTailSpace;
    }

    public boolean isEnableHyphen() {
        return this.enableHyphen;
    }

    public boolean isWriteCover() {
        return this.writeCover;
    }

    public boolean isWriteTextByWord() {
        return this.writeTextByWord;
    }

    public PDFConvertParameter setAddLineTailSpace(boolean z) {
        this.addLineTailSpace = z;
        return this;
    }

    public PDFConvertParameter setCachePath(String str) {
        this.cachePath = str;
        return this;
    }

    public PDFConvertParameter setEnableHyphen(boolean z) {
        this.enableHyphen = z;
        return this;
    }

    public PDFConvertParameter setImageMaxScale(float f) {
        this.imageMaxScale = f;
        return this;
    }

    public PDFConvertParameter setImageQuality(int i) {
        this.imageQuality = i;
        return this;
    }

    public PDFConvertParameter setImageType(ImageType imageType) {
        this.imageType = imageType;
        return this;
    }

    public PDFConvertParameter setPdfPath(String str) {
        this.pdfPath = str;
        return this;
    }

    public PDFConvertParameter setSavePDFImageSize(int i) {
        this.savePDFImageSize = i;
        return this;
    }

    public PDFConvertParameter setSavePDFPageCount(int i) {
        this.savePDFPageCount = i;
        return this;
    }

    public PDFConvertParameter setWriteCover(boolean z) {
        this.writeCover = z;
        return this;
    }

    public PDFConvertParameter setWriteTextByWord(boolean z) {
        this.writeTextByWord = z;
        return this;
    }

    public String toJson() {
        return JsonUtils.toJson(this);
    }

    public PDFConvertParameter(String str, String str2) {
        this.cachePath = str;
        this.pdfPath = str2;
    }
}
