.class public Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;
.super Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnionCase"
.end annotation


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->d:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$c;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$a;)V

    .line 2
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$c;",
            ">;)V"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->d:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$c;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$a;)V

    .line 4
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->c:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addToAttribute(ILorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->b:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$c;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$b;->addToAttribute(ILorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;)V

    goto :goto_0

    :cond_0
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

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->b:Ljava/util/List;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public hasTag(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hasTag(J)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->c:Ljava/util/List;

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

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

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->b:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$c;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$b;->readBands(Ljava/io/InputStream;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
