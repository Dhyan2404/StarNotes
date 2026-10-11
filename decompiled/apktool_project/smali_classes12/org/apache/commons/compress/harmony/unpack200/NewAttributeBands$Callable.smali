.class public Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callable"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$c;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->a:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->a:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addCount(I)V
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->d:I

    return-void
.end method

.method public addNextToAttribute(Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$c;

    iget v2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->e:I

    invoke-interface {v1, v2, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$b;->addToAttribute(ILorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->e:I

    return-void
.end method

.method public addToAttribute(ILorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;)V
    .locals 2

    iget-boolean p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->c:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$c;

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->e:I

    invoke-interface {v0, v1, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$b;->addToAttribute(ILorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->e:I

    :cond_1
    return-void
.end method

.method public getBody()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$c;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->a:Ljava/util/List;

    return-object p0
.end method

.method public isBackwardsCallable()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->b:Z

    return p0
.end method

.method public readBands(Ljava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->d:I

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    iget p2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->d:I

    :goto_0
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$c;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$b;->readBands(Ljava/io/InputStream;I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setBackwardsCallable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->b:Z

    return-void
.end method

.method public setFirstCallable(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->c:Z

    return-void
.end method
