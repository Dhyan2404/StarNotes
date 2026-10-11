package org.apache.poi.xwpf.usermodel;

/* loaded from: classes13.dex */
public class LatexPart implements IRunPart {
    private float fontSize;
    private String latex;

    public LatexPart(String str, float f) {
        this.latex = str;
        this.fontSize = f;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public float getFontSize() {
        return this.fontSize;
    }

    public String getLatex() {
        return this.latex;
    }

    @Override // org.apache.poi.xwpf.usermodel.IRunPart
    public String getText() {
        return this.latex;
    }
}
