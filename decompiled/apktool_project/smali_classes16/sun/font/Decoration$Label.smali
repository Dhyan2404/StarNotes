.class public interface abstract Lsun/font/Decoration$Label;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/Decoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Label"
.end annotation


# virtual methods
.method public abstract getCoreMetrics()Lsun/font/CoreMetrics;
.end method

.method public abstract getLogicalBounds()Ljava/awt/geom/Rectangle2D;
.end method

.method public abstract handleDraw(Ljava/awt/Graphics2D;FF)V
.end method

.method public abstract handleGetCharVisualBounds(I)Ljava/awt/geom/Rectangle2D;
.end method

.method public abstract handleGetOutline(FF)Ljava/awt/Shape;
.end method

.method public abstract handleGetVisualBounds()Ljava/awt/geom/Rectangle2D;
.end method
