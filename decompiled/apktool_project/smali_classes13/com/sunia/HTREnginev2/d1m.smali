.class public final synthetic Lcom/sunia/HTREnginev2/d1m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/query/StaticQueryContext;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/query/StaticQueryContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/d1m;->e:Lnet/sf/saxon/query/StaticQueryContext;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d1m;->e:Lnet/sf/saxon/query/StaticQueryContext;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/query/StaticQueryContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
