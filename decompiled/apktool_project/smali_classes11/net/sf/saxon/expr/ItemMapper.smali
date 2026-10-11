.class public Lnet/sf/saxon/expr/ItemMapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ItemMappingFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/ItemMapper$Lambda;
    }
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/expr/ItemMapper$Lambda;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/ItemMapper$Lambda;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/ItemMapper;->e:Lnet/sf/saxon/expr/ItemMapper$Lambda;

    return-void
.end method

.method public static of(Lnet/sf/saxon/expr/ItemMapper$Lambda;)Lnet/sf/saxon/expr/ItemMapper;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/ItemMapper;

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/ItemMapper;-><init>(Lnet/sf/saxon/expr/ItemMapper$Lambda;)V

    return-object v0
.end method


# virtual methods
.method public mapItem(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/ItemMapper;->e:Lnet/sf/saxon/expr/ItemMapper$Lambda;

    invoke-interface {p0, p1}, Lnet/sf/saxon/expr/ItemMapper$Lambda;->map(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method
