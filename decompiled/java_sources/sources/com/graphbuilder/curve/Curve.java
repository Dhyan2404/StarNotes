package com.graphbuilder.curve;

/* loaded from: classes4.dex */
public abstract class Curve {
    protected boolean connect = false;

    /* renamed from: cp */
    protected ControlPath f38824cp;

    /* renamed from: gi */
    protected GroupIterator f38825gi;

    public Curve(ControlPath controlPath, GroupIterator groupIterator) {
        setControlPath(controlPath);
        setGroupIterator(groupIterator);
    }

    public abstract void appendTo(MultiPath multiPath);

    public boolean getConnect() {
        return this.connect;
    }

    public ControlPath getControlPath() {
        return this.f38824cp;
    }

    public GroupIterator getGroupIterator() {
        return this.f38825gi;
    }

    public void resetMemory() {
    }

    public void setConnect(boolean z) {
        this.connect = z;
    }

    public void setControlPath(ControlPath controlPath) {
        if (controlPath == null) {
            throw new IllegalArgumentException("ControlPath cannot be null.");
        }
        this.f38824cp = controlPath;
    }

    public void setGroupIterator(GroupIterator groupIterator) {
        if (groupIterator == null) {
            throw new IllegalArgumentException("GroupIterator cannot be null.");
        }
        this.f38825gi = groupIterator;
    }
}
