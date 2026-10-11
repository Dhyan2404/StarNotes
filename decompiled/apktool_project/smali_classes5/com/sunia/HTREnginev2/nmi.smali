.class public final synthetic Lcom/sunia/HTREnginev2/nmi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/backport/function/IntConsumer;


# instance fields
.field public final synthetic a:Ljava/backport/function/IntConsumer;

.field public final synthetic b:Ljava/backport/function/IntConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/backport/function/IntConsumer;Ljava/backport/function/IntConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nmi;->a:Ljava/backport/function/IntConsumer;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/nmi;->b:Ljava/backport/function/IntConsumer;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nmi;->a:Ljava/backport/function/IntConsumer;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nmi;->b:Ljava/backport/function/IntConsumer;

    invoke-static {v0, p0, p1}, Ljava/backport/function/IntConsumer;->a(Ljava/backport/function/IntConsumer;Ljava/backport/function/IntConsumer;I)V

    return-void
.end method
