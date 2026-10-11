.class public interface abstract Ljava/awt/image/renderable/ContextualRenderedImageFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/image/renderable/RenderedImageFactory;


# virtual methods
.method public abstract create(Ljava/awt/image/renderable/RenderContext;Ljava/awt/image/renderable/ParameterBlock;)Ljava/awt/image/RenderedImage;
.end method

.method public abstract getBounds2D(Ljava/awt/image/renderable/ParameterBlock;)Ljava/awt/geom/Rectangle2D;
.end method

.method public abstract getProperty(Ljava/awt/image/renderable/ParameterBlock;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getPropertyNames()[Ljava/lang/String;
.end method

.method public abstract isDynamic()Z
.end method

.method public abstract mapRenderContext(ILjava/awt/image/renderable/RenderContext;Ljava/awt/image/renderable/ParameterBlock;Ljava/awt/image/renderable/RenderableImage;)Ljava/awt/image/renderable/RenderContext;
.end method
