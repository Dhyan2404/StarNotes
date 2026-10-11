.class public final synthetic Lcom/sunia/HTREnginev2/e6p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lcom/sunia/calculatorv2/ink/model/o;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/calculatorv2/ink/model/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/e6p;->e:Lcom/sunia/calculatorv2/ink/model/o;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e6p;->e:Lcom/sunia/calculatorv2/ink/model/o;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/r;->z0(Lcom/sunia/calculatorv2/ink/model/o;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method
