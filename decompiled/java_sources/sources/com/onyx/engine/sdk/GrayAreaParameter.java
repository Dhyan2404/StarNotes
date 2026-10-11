package com.onyx.engine.sdk;

/* loaded from: classes8.dex */
public class GrayAreaParameter {
    GrayRange range = new GrayRange();
    int size;

    /* loaded from: classes8.dex */
    public static class GrayRange {
        public int end;
        public int start;
    }

    public GrayRange getRange() {
        return this.range;
    }

    public int getSize() {
        return this.size;
    }

    public GrayAreaParameter setRange(GrayRange grayRange) {
        this.range = grayRange;
        return this;
    }

    public GrayAreaParameter setSize(int i) {
        this.size = i;
        return this;
    }

    public String toJson() {
        return JsonUtils.toJson(this);
    }
}
