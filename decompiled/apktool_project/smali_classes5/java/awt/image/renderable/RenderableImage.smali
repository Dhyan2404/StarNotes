.class public interface abstract Ljava/awt/image/renderable/RenderableImage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/awt/image/renderable/RenderableImage;",
        "R::",
        "Ljava/awt/image/RenderedImage;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final HINTS_OBSERVED:Ljava/lang/String; = "HINTS_OBSERVED"


# virtual methods
.method public abstract createDefaultRendering()Ljava/awt/image/RenderedImage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public abstract createRendering(Ljava/awt/image/renderable/RenderContext;)Ljava/awt/image/RenderedImage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/image/renderable/RenderContext;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract createScaledRendering(IILjava/awt/RenderingHints;)Ljava/awt/image/RenderedImage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/awt/RenderingHints;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract getHeight()F
.end method

.method public abstract getMinX()F
.end method

.method public abstract getMinY()F
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getPropertyNames()[Ljava/lang/String;
.end method

.method public abstract getSources()Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getWidth()F
.end method

.method public abstract isDynamic()Z
.end method
