.class public Lorg/apache/commons/collections4/CollectionUtils$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/CollectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/collections4/Equator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Equator<",
            "-TO;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/Equator;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Equator<",
            "-TO;>;TO;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections4/CollectionUtils$e;->a:Lorg/apache/commons/collections4/Equator;

    iput-object p2, p0, Lorg/apache/commons/collections4/CollectionUtils$e;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/collections4/CollectionUtils$e;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/commons/collections4/CollectionUtils$e;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lorg/apache/commons/collections4/CollectionUtils$e;

    iget-object v0, p0, Lorg/apache/commons/collections4/CollectionUtils$e;->a:Lorg/apache/commons/collections4/Equator;

    iget-object p0, p0, Lorg/apache/commons/collections4/CollectionUtils$e;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/CollectionUtils$e;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/commons/collections4/Equator;->equate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/CollectionUtils$e;->a:Lorg/apache/commons/collections4/Equator;

    iget-object p0, p0, Lorg/apache/commons/collections4/CollectionUtils$e;->b:Ljava/lang/Object;

    invoke-interface {v0, p0}, Lorg/apache/commons/collections4/Equator;->hash(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
