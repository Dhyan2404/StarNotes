.class public Lnet/sf/saxon/expr/ItemFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ItemMappingFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/ItemFilter$Lambda;
    }
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/expr/ItemFilter$Lambda;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/ItemFilter$Lambda;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/ItemFilter;->e:Lnet/sf/saxon/expr/ItemFilter$Lambda;

    return-void
.end method

.method public static of(Lnet/sf/saxon/expr/ItemFilter$Lambda;)Lnet/sf/saxon/expr/ItemFilter;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/ItemFilter;

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/ItemFilter;-><init>(Lnet/sf/saxon/expr/ItemFilter$Lambda;)V

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

    iget-object p0, p0, Lnet/sf/saxon/expr/ItemFilter;->e:Lnet/sf/saxon/expr/ItemFilter$Lambda;

    invoke-interface {p0, p1}, Lnet/sf/saxon/expr/ItemFilter$Lambda;->test(Lnet/sf/saxon/om/Item;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
