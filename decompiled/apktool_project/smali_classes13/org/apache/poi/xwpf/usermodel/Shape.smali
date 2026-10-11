.class public interface abstract Lorg/apache/poi/xwpf/usermodel/Shape;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/poi/xwpf/usermodel/Shape<",
        "TS;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract draw(Ljava/awt/Graphics2D;)V
.end method

.method public abstract getAnchor()Ljava/awt/geom/Rectangle2D;
.end method

.method public abstract getParent()Lorg/apache/poi/xwpf/usermodel/ShapeContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/xwpf/usermodel/ShapeContainer<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract getShapeId()Ljava/lang/String;
.end method
