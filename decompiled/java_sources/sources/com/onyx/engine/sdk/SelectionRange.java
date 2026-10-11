package com.onyx.engine.sdk;

/* loaded from: classes8.dex */
public class SelectionRange {
    VisiblePosition positionEnd;
    VisiblePosition positionStart;

    public static SelectionRange fromJson(String str) {
        return (SelectionRange) JsonUtils.fromJson(str, SelectionRange.class);
    }

    public int getEndOffset() {
        return this.positionEnd.offset;
    }

    public VisiblePosition getPositionEnd() {
        return this.positionEnd;
    }

    public VisiblePosition getPositionStart() {
        return this.positionStart;
    }

    public int getStartOffset() {
        return this.positionStart.offset;
    }

    public String getText() {
        VisiblePosition visiblePosition = this.positionStart;
        return visiblePosition.text.substring(visiblePosition.offset, this.positionEnd.offset);
    }

    public SelectionRange setPositionEnd(VisiblePosition visiblePosition) {
        this.positionEnd = visiblePosition;
        return this;
    }

    public SelectionRange setPositionStart(VisiblePosition visiblePosition) {
        this.positionStart = visiblePosition;
        return this;
    }
}
