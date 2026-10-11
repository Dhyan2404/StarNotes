.class public Lorg/mortbay/io/View$CaseInsensitive;
.super Lorg/mortbay/io/View;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/io/Buffer$CaseInsensitve;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/io/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaseInsensitive"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mortbay/io/View;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/mortbay/io/Buffer;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/mortbay/io/View;-><init>(Lorg/mortbay/io/Buffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/mortbay/io/Buffer;IIII)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lorg/mortbay/io/View;-><init>(Lorg/mortbay/io/Buffer;IIII)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_2

    instance-of v0, p1, Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mortbay/io/Buffer;

    invoke-interface {v0, p0}, Lorg/mortbay/io/Buffer;->equalsIgnoreCase(Lorg/mortbay/io/Buffer;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-super {p0, p1}, Lorg/mortbay/io/View;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
