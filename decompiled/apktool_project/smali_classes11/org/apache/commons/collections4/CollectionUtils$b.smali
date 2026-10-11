.class public final Lorg/apache/commons/collections4/CollectionUtils$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/Transformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/CollectionUtils;->retainAll(Ljava/lang/Iterable;Ljava/lang/Iterable;Lorg/apache/commons/collections4/Equator;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Transformer<",
        "TE;",
        "Lorg/apache/commons/collections4/CollectionUtils$e<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/commons/collections4/Equator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/Equator;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/collections4/CollectionUtils$b;->e:Lorg/apache/commons/collections4/Equator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lorg/apache/commons/collections4/CollectionUtils$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/apache/commons/collections4/CollectionUtils$e<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/CollectionUtils$e;

    iget-object p0, p0, Lorg/apache/commons/collections4/CollectionUtils$b;->e:Lorg/apache/commons/collections4/Equator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/CollectionUtils$e;-><init>(Lorg/apache/commons/collections4/Equator;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/CollectionUtils$b;->a(Ljava/lang/Object;)Lorg/apache/commons/collections4/CollectionUtils$e;

    move-result-object p0

    return-object p0
.end method
