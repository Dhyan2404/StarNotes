package com.sun.org.apache.xerces.internal.p056xs;

/* loaded from: classes10.dex */
public interface XSModelGroup extends XSTerm {
    public static final short COMPOSITOR_ALL = 3;
    public static final short COMPOSITOR_CHOICE = 2;
    public static final short COMPOSITOR_SEQUENCE = 1;

    XSAnnotation getAnnotation();

    short getCompositor();

    XSObjectList getParticles();
}
