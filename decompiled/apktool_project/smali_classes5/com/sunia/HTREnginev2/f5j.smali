.class public final synthetic Lcom/sunia/HTREnginev2/f5j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/backport/function/LongConsumer;


# instance fields
.field public final synthetic a:Ljava/backport/function/LongConsumer;

.field public final synthetic b:Ljava/backport/function/LongConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/backport/function/LongConsumer;Ljava/backport/function/LongConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/f5j;->a:Ljava/backport/function/LongConsumer;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/f5j;->b:Ljava/backport/function/LongConsumer;

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/f5j;->a:Ljava/backport/function/LongConsumer;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/f5j;->b:Ljava/backport/function/LongConsumer;

    invoke-static {v0, p0, p1, p2}, Ljava/backport/function/LongConsumer;->a(Ljava/backport/function/LongConsumer;Ljava/backport/function/LongConsumer;J)V

    return-void
.end method
