.class public final synthetic Lcom/sunia/HTREnginev2/kq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/backport/function/BiFunction;


# instance fields
.field public final synthetic a:Ljava/backport/function/BiFunction;

.field public final synthetic b:Ljava/backport/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/backport/function/BiFunction;Ljava/backport/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kq;->a:Ljava/backport/function/BiFunction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/kq;->b:Ljava/backport/function/Function;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/kq;->a:Ljava/backport/function/BiFunction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kq;->b:Ljava/backport/function/Function;

    invoke-static {v0, p0, p1, p2}, Ljava/backport/function/BiFunction;->c(Ljava/backport/function/BiFunction;Ljava/backport/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
