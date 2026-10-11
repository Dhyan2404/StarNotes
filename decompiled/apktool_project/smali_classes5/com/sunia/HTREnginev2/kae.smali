.class public final synthetic Lcom/sunia/HTREnginev2/kae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/backport/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/backport/function/Consumer;

.field public final synthetic b:Ljava/backport/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/backport/function/Consumer;Ljava/backport/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kae;->a:Ljava/backport/function/Consumer;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/kae;->b:Ljava/backport/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/kae;->a:Ljava/backport/function/Consumer;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kae;->b:Ljava/backport/function/Consumer;

    invoke-static {v0, p0, p1}, Ljava/backport/function/Consumer;->a(Ljava/backport/function/Consumer;Ljava/backport/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
