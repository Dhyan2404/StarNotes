.class public final synthetic Lcom/sunia/HTREnginev2/j5p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/n;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/j5p;->e:Lcom/sunia/HTREnginev2/n;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/j5p;->e:Lcom/sunia/HTREnginev2/n;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/r;->s0(Lcom/sunia/HTREnginev2/n;Ljava/util/List;)Lcom/sunia/HTREnginev2/n;

    move-result-object p0

    return-object p0
.end method
