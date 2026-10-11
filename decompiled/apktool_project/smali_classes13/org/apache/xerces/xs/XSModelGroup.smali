.class public interface abstract Lorg/apache/xerces/xs/XSModelGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/XSTerm;


# static fields
.field public static final COMPOSITOR_ALL:S = 0x3s

.field public static final COMPOSITOR_CHOICE:S = 0x2s

.field public static final COMPOSITOR_SEQUENCE:S = 0x1s


# virtual methods
.method public abstract getAnnotation()Lorg/apache/xerces/xs/XSAnnotation;
.end method

.method public abstract getAnnotations()Lorg/apache/xerces/xs/XSObjectList;
.end method

.method public abstract getCompositor()S
.end method

.method public abstract getParticles()Lorg/apache/xerces/xs/XSObjectList;
.end method
