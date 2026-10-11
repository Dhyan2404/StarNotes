.class public interface abstract Lorg/apache/poi/xwpf/usermodel/ShapeContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/Shape;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/poi/xwpf/usermodel/Shape<",
        "TS;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/poi/xwpf/usermodel/Shape<",
        "TS;>;",
        "Ljava/lang/Iterable<",
        "TS;>;"
    }
.end annotation


# virtual methods
.method public abstract addShape(Lorg/apache/poi/xwpf/usermodel/Shape;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method

.method public abstract getShapes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation
.end method
