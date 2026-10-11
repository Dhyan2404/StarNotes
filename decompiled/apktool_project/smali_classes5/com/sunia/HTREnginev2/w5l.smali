.class public final synthetic Lcom/sunia/HTREnginev2/w5l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/backport/function/Predicate;


# instance fields
.field public final synthetic a:Ljava/backport/function/Predicate;

.field public final synthetic b:Ljava/backport/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/backport/function/Predicate;Ljava/backport/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/w5l;->a:Ljava/backport/function/Predicate;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/w5l;->b:Ljava/backport/function/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/w5l;->a:Ljava/backport/function/Predicate;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/w5l;->b:Ljava/backport/function/Predicate;

    invoke-static {v0, p0, p1}, Ljava/backport/function/Predicate;->b(Ljava/backport/function/Predicate;Ljava/backport/function/Predicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
