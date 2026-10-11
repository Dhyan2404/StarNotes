.class public final synthetic Lcom/sunia/HTREnginev2/l2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/j2$b;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/j2$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/l2;->e:Lcom/sunia/HTREnginev2/j2$b;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/l2;->e:Lcom/sunia/HTREnginev2/j2$b;

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/j2$b;->b(Lcom/sunia/HTREnginev2/j2$b;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0
.end method
