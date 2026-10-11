.class public interface abstract Lorg/apache/xerces/xs/XSWildcard;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/XSTerm;


# static fields
.field public static final NSCONSTRAINT_ANY:S = 0x1s

.field public static final NSCONSTRAINT_LIST:S = 0x3s

.field public static final NSCONSTRAINT_NOT:S = 0x2s

.field public static final PC_LAX:S = 0x3s

.field public static final PC_SKIP:S = 0x2s

.field public static final PC_STRICT:S = 0x1s


# virtual methods
.method public abstract getAnnotation()Lorg/apache/xerces/xs/XSAnnotation;
.end method

.method public abstract getAnnotations()Lorg/apache/xerces/xs/XSObjectList;
.end method

.method public abstract getConstraintType()S
.end method

.method public abstract getNsConstraintList()Lorg/apache/xerces/xs/StringList;
.end method

.method public abstract getProcessContents()S
.end method
