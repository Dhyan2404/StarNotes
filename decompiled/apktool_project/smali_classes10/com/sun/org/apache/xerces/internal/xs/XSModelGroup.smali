.class public interface abstract Lcom/sun/org/apache/xerces/internal/xs/XSModelGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/XSTerm;


# static fields
.field public static final COMPOSITOR_ALL:S = 0x3s

.field public static final COMPOSITOR_CHOICE:S = 0x2s

.field public static final COMPOSITOR_SEQUENCE:S = 0x1s


# virtual methods
.method public abstract getAnnotation()Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;
.end method

.method public abstract getCompositor()S
.end method

.method public abstract getParticles()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;
.end method
