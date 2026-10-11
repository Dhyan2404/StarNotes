.class public Lorg/apache/commons/collections4/list/FixedSizeList$a;
.super Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/list/FixedSizeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lorg/apache/commons/collections4/list/FixedSizeList;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/list/FixedSizeList;Ljava/util/ListIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/commons/collections4/list/FixedSizeList$a;->f:Lorg/apache/commons/collections4/list/FixedSizeList;

    invoke-direct {p0, p2}, Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 0

    invoke-static {}, Lorg/apache/commons/collections4/list/FixedSizeList;->access$000()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public remove()V
    .locals 0

    invoke-static {}, Lorg/apache/commons/collections4/list/FixedSizeList;->access$000()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method
