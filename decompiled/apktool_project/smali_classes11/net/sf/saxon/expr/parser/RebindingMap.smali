.class public Lnet/sf/saxon/expr/parser/RebindingMap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/expr/Binding;",
            "Lnet/sf/saxon/expr/Binding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/RebindingMap;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public get(Lnet/sf/saxon/expr/Binding;)Lnet/sf/saxon/expr/Binding;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/RebindingMap;->a:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/Binding;

    :goto_0
    return-object p0
.end method

.method public put(Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Binding;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/RebindingMap;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/RebindingMap;->a:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/parser/RebindingMap;->a:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
