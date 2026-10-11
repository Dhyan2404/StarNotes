.class public final Lorg/apache/xerces/util/AugmentationsImpl$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/util/AugmentationsImpl$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public e:[Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Lorg/apache/xerces/util/AugmentationsImpl$c;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/util/AugmentationsImpl$c;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/util/AugmentationsImpl$c$a;->g:Lorg/apache/xerces/util/AugmentationsImpl$c;

    iget v0, p1, Lorg/apache/xerces/util/AugmentationsImpl$c;->b:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xerces/util/AugmentationsImpl$c$a;->e:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/util/AugmentationsImpl$c$a;->f:I

    :goto_0
    iget v1, p1, Lorg/apache/xerces/util/AugmentationsImpl$c;->b:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/util/AugmentationsImpl$c$a;->e:[Ljava/lang/Object;

    iget-object v2, p1, Lorg/apache/xerces/util/AugmentationsImpl$c;->a:[Ljava/lang/Object;

    mul-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    iget v0, p0, Lorg/apache/xerces/util/AugmentationsImpl$c$a;->f:I

    iget-object p0, p0, Lorg/apache/xerces/util/AugmentationsImpl$c$a;->e:[Ljava/lang/Object;

    array-length p0, p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lorg/apache/xerces/util/AugmentationsImpl$c$a;->f:I

    iget-object v1, p0, Lorg/apache/xerces/util/AugmentationsImpl$c$a;->e:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    const/4 v3, 0x0

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xerces/util/AugmentationsImpl$c$a;->f:I

    return-object v2

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
