.class public final Ljava/awt/font/TransformAttribute;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final IDENTITY:Ljava/awt/font/TransformAttribute;

.field static final serialVersionUID:J = 0x2e93c93095a9fa5aL


# instance fields
.field private transform:Ljava/awt/geom/AffineTransform;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/awt/font/TransformAttribute;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/awt/font/TransformAttribute;-><init>(Ljava/awt/geom/AffineTransform;)V

    sput-object v0, Ljava/awt/font/TransformAttribute;->IDENTITY:Ljava/awt/font/TransformAttribute;

    return-void
.end method

.method public constructor <init>(Ljava/awt/geom/AffineTransform;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0, p1}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    iput-object v0, p0, Ljava/awt/font/TransformAttribute;->transform:Ljava/awt/geom/AffineTransform;

    :cond_0
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    iget-object v0, p0, Ljava/awt/font/TransformAttribute;->transform:Ljava/awt/geom/AffineTransform;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Ljava/awt/font/TransformAttribute;->IDENTITY:Ljava/awt/font/TransformAttribute;

    return-object p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/awt/font/TransformAttribute;->transform:Ljava/awt/geom/AffineTransform;

    if-nez v0, :cond_0

    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Ljava/awt/font/TransformAttribute;->transform:Ljava/awt/geom/AffineTransform;

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    check-cast p1, Ljava/awt/font/TransformAttribute;

    iget-object p0, p0, Ljava/awt/font/TransformAttribute;->transform:Ljava/awt/geom/AffineTransform;

    if-nez p0, :cond_1

    iget-object p0, p1, Ljava/awt/font/TransformAttribute;->transform:Ljava/awt/geom/AffineTransform;

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    iget-object p1, p1, Ljava/awt/font/TransformAttribute;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p0, p1}, Ljava/awt/geom/AffineTransform;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_2
    return v0
.end method

.method public getTransform()Ljava/awt/geom/AffineTransform;
    .locals 1

    iget-object p0, p0, Ljava/awt/font/TransformAttribute;->transform:Ljava/awt/geom/AffineTransform;

    if-nez p0, :cond_0

    new-instance p0, Ljava/awt/geom/AffineTransform;

    invoke-direct {p0}, Ljava/awt/geom/AffineTransform;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0, p0}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Ljava/awt/font/TransformAttribute;->transform:Ljava/awt/geom/AffineTransform;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public isIdentity()Z
    .locals 0

    iget-object p0, p0, Ljava/awt/font/TransformAttribute;->transform:Ljava/awt/geom/AffineTransform;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
