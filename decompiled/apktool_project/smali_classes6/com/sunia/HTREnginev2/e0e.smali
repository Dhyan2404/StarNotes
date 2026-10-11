.class public final synthetic Lcom/sunia/HTREnginev2/e0e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/vzd$i;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/vzd$i;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/e0e;->e:Lcom/sunia/HTREnginev2/vzd$i;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/e0e;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/e0e;->e:Lcom/sunia/HTREnginev2/vzd$i;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e0e;->f:Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/sunia/HTREnginev2/vzd$i;->f(Lcom/sunia/HTREnginev2/vzd$i;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
