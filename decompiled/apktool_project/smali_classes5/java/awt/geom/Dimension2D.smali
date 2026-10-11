.class public abstract Ljava/awt/geom/Dimension2D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/awt/InternalError;

    invoke-direct {v0, p0}, Ljava/awt/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract getHeight()D
.end method

.method public abstract getWidth()D
.end method

.method public abstract setSize(DD)V
.end method

.method public setSize(Ljava/awt/geom/Dimension2D;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/awt/geom/Dimension2D;->setSize(DD)V

    return-void
.end method
