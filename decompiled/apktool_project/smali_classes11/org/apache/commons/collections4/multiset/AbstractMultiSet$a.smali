.class public Lorg/apache/commons/collections4/multiset/AbstractMultiSet$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/Transformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->createUniqueSetIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Transformer<",
        "Lorg/apache/commons/collections4/MultiSet$Entry<",
        "TE;>;TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/multiset/AbstractMultiSet;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$a;->e:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/commons/collections4/MultiSet$Entry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/MultiSet$Entry<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/commons/collections4/MultiSet$Entry;->getElement()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/apache/commons/collections4/MultiSet$Entry;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$a;->a(Lorg/apache/commons/collections4/MultiSet$Entry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
