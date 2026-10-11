.class public Lnet/sf/saxon/om/GroundedValueAsIterable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lnet/sf/saxon/om/Item;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/om/GroundedValue;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/GroundedValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/om/GroundedValueAsIterable;->e:Lnet/sf/saxon/om/GroundedValue;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/om/Item;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/tree/jiter/WrappingJavaIterator;

    iget-object p0, p0, Lnet/sf/saxon/om/GroundedValueAsIterable;->e:Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/jiter/WrappingJavaIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    return-object v0
.end method
