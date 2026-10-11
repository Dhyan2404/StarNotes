.class public Lorg/apache/commons/compress/harmony/pack200/IcBands$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/pack200/IcBands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/compress/harmony/pack200/IcBands$a;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Lorg/apache/commons/compress/harmony/pack200/CPClass;

.field public f:I

.field public g:Lorg/apache/commons/compress/harmony/pack200/CPClass;

.field public h:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

.field public final synthetic i:Lorg/apache/commons/compress/harmony/pack200/IcBands;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/IcBands;Lorg/apache/commons/compress/harmony/pack200/CPClass;ILorg/apache/commons/compress/harmony/pack200/CPClass;Lorg/apache/commons/compress/harmony/pack200/CPUTF8;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/IcBands$a;->i:Lorg/apache/commons/compress/harmony/pack200/IcBands;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/IcBands$a;->e:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iput p3, p0, Lorg/apache/commons/compress/harmony/pack200/IcBands$a;->f:I

    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/IcBands$a;->g:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iput-object p5, p0, Lorg/apache/commons/compress/harmony/pack200/IcBands$a;->h:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/commons/compress/harmony/pack200/IcBands$a;)I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/IcBands$a;->e:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iget-object p1, p1, Lorg/apache/commons/compress/harmony/pack200/IcBands$a;->e:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->compareTo(Lorg/apache/commons/compress/harmony/pack200/CPClass;)I

    move-result p0

    return p0
.end method

.method public b()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/IcBands$a;->e:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/IcBands$a;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/IcBands$a;->a(Lorg/apache/commons/compress/harmony/pack200/IcBands$a;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/IcBands$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/IcBands$a;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/IcBands$a;->e:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iget-object v2, p1, Lorg/apache/commons/compress/harmony/pack200/IcBands$a;->e:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/IcBands$a;->f:I

    iget v2, p1, Lorg/apache/commons/compress/harmony/pack200/IcBands$a;->f:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/IcBands$a;->g:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iget-object v2, p1, Lorg/apache/commons/compress/harmony/pack200/IcBands$a;->g:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/IcBands$a;->h:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    iget-object p1, p1, Lorg/apache/commons/compress/harmony/pack200/IcBands$a;->h:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/IcBands$a;->e:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
