.class public interface abstract Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RenderBounds"
.end annotation


# virtual methods
.method public abstract getBounds()Ljava/awt/geom/Rectangle2D;
.end method

.method public abstract getState()Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;
.end method

.method public abstract getViewport()Ljava/awt/geom/Rectangle2D;
.end method

.method public abstract getWindow()Ljava/awt/geom/Rectangle2D;
.end method

.method public abstract setState(Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;)V
.end method
