package com.onyx.engine.sdk;

/* loaded from: classes8.dex */
public class VisiblePosition {
    TextGranularity granularity = TextGranularity.kWord;
    int offset;
    String text;

    static {
        System.loadLibrary("engine_sdk");
    }

    private native String nativeExpandWithGranularity(String str);

    public SelectionRange expandWithGranularity() {
        return SelectionRange.fromJson(nativeExpandWithGranularity(toJson()));
    }

    public TextGranularity getGranularity() {
        return this.granularity;
    }

    public int getOffset() {
        return this.offset;
    }

    public String getText() {
        return this.text;
    }

    public VisiblePosition setGranularity(TextGranularity textGranularity) {
        this.granularity = textGranularity;
        return this;
    }

    public VisiblePosition setOffset(int i) {
        this.offset = i;
        return this;
    }

    public VisiblePosition setText(String str) {
        this.text = str;
        return this;
    }

    public String toJson() {
        return JsonUtils.toJson(this);
    }
}
