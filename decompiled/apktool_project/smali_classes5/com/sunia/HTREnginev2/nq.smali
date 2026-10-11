.class public final synthetic Lcom/sunia/HTREnginev2/nq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/backport/function/BiPredicate;


# instance fields
.field public final synthetic a:Ljava/backport/function/BiPredicate;


# direct methods
.method public synthetic constructor <init>(Ljava/backport/function/BiPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nq;->a:Ljava/backport/function/BiPredicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nq;->a:Ljava/backport/function/BiPredicate;

    invoke-static {p0, p1, p2}, Ljava/backport/function/BiPredicate;->c(Ljava/backport/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
