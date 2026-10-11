.class public final synthetic Lcom/sunia/HTREnginev2/l5p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lcom/sunia/calculatorv2/ink/model/y;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/calculatorv2/ink/model/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/l5p;->e:Lcom/sunia/calculatorv2/ink/model/y;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/l5p;->e:Lcom/sunia/calculatorv2/ink/model/y;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/r;->G0(Lcom/sunia/calculatorv2/ink/model/y;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/y;

    move-result-object p0

    return-object p0
.end method
