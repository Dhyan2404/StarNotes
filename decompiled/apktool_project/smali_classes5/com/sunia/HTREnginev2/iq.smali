.class public final synthetic Lcom/sunia/HTREnginev2/iq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/backport/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/backport/function/BiConsumer;

.field public final synthetic b:Ljava/backport/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/backport/function/BiConsumer;Ljava/backport/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/iq;->a:Ljava/backport/function/BiConsumer;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/iq;->b:Ljava/backport/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/iq;->a:Ljava/backport/function/BiConsumer;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/iq;->b:Ljava/backport/function/BiConsumer;

    invoke-static {v0, p0, p1, p2}, Ljava/backport/function/BiConsumer;->a(Ljava/backport/function/BiConsumer;Ljava/backport/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
