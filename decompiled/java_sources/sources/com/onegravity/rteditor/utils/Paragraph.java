package com.onegravity.rteditor.utils;

/* loaded from: classes7.dex */
public class Paragraph extends Selection {
    private static final long serialVersionUID = 2475227150049924994L;
    private final boolean mIsFirst;
    private final boolean mIsLast;

    public Paragraph(int i, int i2, boolean z, boolean z2) {
        super(i, i2);
        this.mIsFirst = z;
        this.mIsLast = z2;
    }

    public boolean isFirst() {
        return this.mIsFirst;
    }

    public boolean isLast() {
        return this.mIsLast;
    }

    public boolean isSelected(Selection selection) {
        if (selection == null) {
            return false;
        }
        if (selection.isEmpty()) {
            return (selection.start() >= start() && selection.end() < end()) || ((selection.start() >= start() && selection.end() <= end()) && this.mIsLast);
        }
        return Math.max(start(), selection.start()) < Math.min(end(), selection.end());
    }
}
