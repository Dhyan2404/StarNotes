.class public Lnet/sf/saxon/expr/SequenceMapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/MappingFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/SequenceMapper$Lambda;
    }
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/expr/SequenceMapper$Lambda;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/SequenceMapper$Lambda;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/SequenceMapper;->e:Lnet/sf/saxon/expr/SequenceMapper$Lambda;

    return-void
.end method

.method public static of(Lnet/sf/saxon/expr/SequenceMapper$Lambda;)Lnet/sf/saxon/expr/SequenceMapper;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/SequenceMapper;

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/SequenceMapper;-><init>(Lnet/sf/saxon/expr/SequenceMapper$Lambda;)V

    return-object v0
.end method


# virtual methods
.method public map(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/SequenceMapper;->e:Lnet/sf/saxon/expr/SequenceMapper$Lambda;

    invoke-interface {p0, p1}, Lnet/sf/saxon/expr/SequenceMapper$Lambda;->map(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method
