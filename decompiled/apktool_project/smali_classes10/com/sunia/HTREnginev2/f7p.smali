.class public final synthetic Lcom/sunia/HTREnginev2/f7p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/s;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/f7p;->e:Lcom/sunia/HTREnginev2/s;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/f7p;->e:Lcom/sunia/HTREnginev2/s;

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/s;->s(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
