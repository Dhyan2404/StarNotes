.class public Lorg/apache/commons/compress/harmony/pack200/CPSignature;
.super Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final f:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPClass;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/lang/String;

.field public final i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/compress/harmony/pack200/CPUTF8;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/harmony/pack200/CPUTF8;",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPClass;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->h:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->f:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->g:Ljava/util/List;

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "("

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->i:Z

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->h:Ljava/lang/String;

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    iget-object v1, p1, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v2, p1, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->i:Z

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-boolean v2, p1, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->i:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p1, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v0, v2

    if-eqz v0, :cond_3

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    iget-object p1, p1, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iget-object v2, p1, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->compareTo(Lorg/apache/commons/compress/harmony/pack200/CPClass;)I

    move-result v1

    if-eqz v1, :cond_4

    return v1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->h:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getClasses()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPClass;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->g:Ljava/util/List;

    return-object p0
.end method

.method public getIndexInCpUtf8()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->f:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;->getIndex()I

    move-result p0

    return p0
.end method

.method public getSignatureForm()Lorg/apache/commons/compress/harmony/pack200/CPUTF8;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->f:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    return-object p0
.end method

.method public getUnderlyingString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->h:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->h:Ljava/lang/String;

    return-object p0
.end method
