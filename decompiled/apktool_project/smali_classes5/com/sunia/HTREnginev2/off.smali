.class public final synthetic Lcom/sunia/HTREnginev2/off;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/backport/function/DoublePredicate;


# instance fields
.field public final synthetic a:Ljava/backport/function/DoublePredicate;

.field public final synthetic b:Ljava/backport/function/DoublePredicate;


# direct methods
.method public synthetic constructor <init>(Ljava/backport/function/DoublePredicate;Ljava/backport/function/DoublePredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/off;->a:Ljava/backport/function/DoublePredicate;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/off;->b:Ljava/backport/function/DoublePredicate;

    return-void
.end method


# virtual methods
.method public final test(D)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/off;->a:Ljava/backport/function/DoublePredicate;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/off;->b:Ljava/backport/function/DoublePredicate;

    invoke-static {v0, p0, p1, p2}, Ljava/backport/function/DoublePredicate;->a(Ljava/backport/function/DoublePredicate;Ljava/backport/function/DoublePredicate;D)Z

    move-result p0

    return p0
.end method
