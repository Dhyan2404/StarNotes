.class public Lorg/apache/commons/compress/compressors/deflate64/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/deflate64/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public c:Lorg/apache/commons/compress/compressors/deflate64/a$b;

.field public d:Lorg/apache/commons/compress/compressors/deflate64/a$b;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lorg/apache/commons/compress/compressors/deflate64/a$b;->b:I

    .line 4
    iput p1, p0, Lorg/apache/commons/compress/compressors/deflate64/a$b;->a:I

    return-void
.end method

.method public synthetic constructor <init>(ILorg/apache/commons/compress/compressors/deflate64/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/deflate64/a$b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/compressors/deflate64/a$b;->b:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/deflate64/a$b;->c:Lorg/apache/commons/compress/compressors/deflate64/a$b;

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/deflate64/a$b;->d:Lorg/apache/commons/compress/compressors/deflate64/a$b;

    return-void
.end method

.method public b()Lorg/apache/commons/compress/compressors/deflate64/a$b;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/a$b;->c:Lorg/apache/commons/compress/compressors/deflate64/a$b;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/compressors/deflate64/a$b;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/apache/commons/compress/compressors/deflate64/a$b;

    iget v1, p0, Lorg/apache/commons/compress/compressors/deflate64/a$b;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/deflate64/a$b;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/a$b;->c:Lorg/apache/commons/compress/compressors/deflate64/a$b;

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/deflate64/a$b;->c:Lorg/apache/commons/compress/compressors/deflate64/a$b;

    return-object p0
.end method

.method public c()Lorg/apache/commons/compress/compressors/deflate64/a$b;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/a$b;->d:Lorg/apache/commons/compress/compressors/deflate64/a$b;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/compressors/deflate64/a$b;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/apache/commons/compress/compressors/deflate64/a$b;

    iget v1, p0, Lorg/apache/commons/compress/compressors/deflate64/a$b;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/deflate64/a$b;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/a$b;->d:Lorg/apache/commons/compress/compressors/deflate64/a$b;

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/deflate64/a$b;->d:Lorg/apache/commons/compress/compressors/deflate64/a$b;

    return-object p0
.end method
