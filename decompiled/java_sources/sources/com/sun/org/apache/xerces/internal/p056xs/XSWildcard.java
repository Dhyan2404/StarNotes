package com.sun.org.apache.xerces.internal.p056xs;

/* loaded from: classes10.dex */
public interface XSWildcard extends XSTerm {
    public static final short NSCONSTRAINT_ANY = 1;
    public static final short NSCONSTRAINT_LIST = 3;
    public static final short NSCONSTRAINT_NOT = 2;
    public static final short PC_LAX = 3;
    public static final short PC_SKIP = 2;
    public static final short PC_STRICT = 1;

    XSAnnotation getAnnotation();

    short getConstraintType();

    StringList getNsConstraintList();

    short getProcessContents();
}
