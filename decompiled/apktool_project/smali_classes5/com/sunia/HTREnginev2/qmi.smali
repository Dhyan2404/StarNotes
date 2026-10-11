.class public final synthetic Lcom/sunia/HTREnginev2/qmi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/backport/function/IntPredicate;


# instance fields
.field public final synthetic a:Ljava/backport/function/IntPredicate;


# direct methods
.method public synthetic constructor <init>(Ljava/backport/function/IntPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qmi;->a:Ljava/backport/function/IntPredicate;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qmi;->a:Ljava/backport/function/IntPredicate;

    invoke-static {p0, p1}, Ljava/backport/function/IntPredicate;->a(Ljava/backport/function/IntPredicate;I)Z

    move-result p0

    return p0
.end method
