.class public Lorg/apache/logging/log4j/util/Unbox$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/util/Unbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:[Ljava/lang/StringBuilder;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/apache/logging/log4j/util/Unbox;->a()I

    move-result v0

    new-array v0, v0, [Ljava/lang/StringBuilder;

    iput-object v0, p0, Lorg/apache/logging/log4j/util/Unbox$b;->a:[Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/util/Unbox$b;->a:[Ljava/lang/StringBuilder;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/StringBuilder;
    .locals 4

    iget-object v0, p0, Lorg/apache/logging/log4j/util/Unbox$b;->a:[Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/apache/logging/log4j/util/Unbox;->b()I

    move-result v1

    iget v2, p0, Lorg/apache/logging/log4j/util/Unbox$b;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/logging/log4j/util/Unbox$b;->b:I

    and-int p0, v1, v2

    aget-object p0, v0, p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object p0
.end method

.method public b(Ljava/lang/StringBuilder;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "text"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/logging/log4j/util/Unbox$b;->a:[Ljava/lang/StringBuilder;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    if-ne p1, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
