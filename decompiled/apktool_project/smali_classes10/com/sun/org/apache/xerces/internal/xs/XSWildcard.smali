.class public interface abstract Lcom/sun/org/apache/xerces/internal/xs/XSWildcard;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/XSTerm;


# static fields
.field public static final NSCONSTRAINT_ANY:S = 0x1s

.field public static final NSCONSTRAINT_LIST:S = 0x3s

.field public static final NSCONSTRAINT_NOT:S = 0x2s

.field public static final PC_LAX:S = 0x3s

.field public static final PC_SKIP:S = 0x2s

.field public static final PC_STRICT:S = 0x1s


# virtual methods
.method public abstract getAnnotation()Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;
.end method

.method public abstract getConstraintType()S
.end method

.method public abstract getNsConstraintList()Lcom/sun/org/apache/xerces/internal/xs/StringList;
.end method

.method public abstract getProcessContents()S
.end method
