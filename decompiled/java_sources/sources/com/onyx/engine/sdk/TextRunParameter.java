package com.onyx.engine.sdk;

/* loaded from: classes8.dex */
public class TextRunParameter {
    boolean addLineTailSpace = true;
    boolean addHyphen = false;
    boolean combineWords = false;

    public boolean isAddHyphen() {
        return this.addHyphen;
    }

    public boolean isAddLineTailSpace() {
        return this.addLineTailSpace;
    }

    public boolean isCombineWords() {
        return this.combineWords;
    }

    public TextRunParameter setAddHyphen(boolean z) {
        this.addHyphen = z;
        return this;
    }

    public TextRunParameter setAddLineTailSpace(boolean z) {
        this.addLineTailSpace = z;
        return this;
    }

    public TextRunParameter setCombineWords(boolean z) {
        this.combineWords = z;
        return this;
    }

    public String toJson() {
        return JsonUtils.toJson(this);
    }
}
