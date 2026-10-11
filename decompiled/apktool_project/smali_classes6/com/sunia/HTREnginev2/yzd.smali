.class public final synthetic Lcom/sunia/HTREnginev2/yzd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/vzd$d;

.field public final synthetic f:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/vzd$d;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yzd;->e:Lcom/sunia/HTREnginev2/vzd$d;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/yzd;->f:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yzd;->e:Lcom/sunia/HTREnginev2/vzd$d;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yzd;->f:Ljava/util/function/Consumer;

    invoke-static {v0, p0, p1}, Lcom/sunia/HTREnginev2/vzd$d;->a(Lcom/sunia/HTREnginev2/vzd$d;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
