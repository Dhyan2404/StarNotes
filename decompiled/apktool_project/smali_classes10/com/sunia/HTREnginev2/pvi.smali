.class public final synthetic Lcom/sunia/HTREnginev2/pvi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lcom/sunia/calculatorv2/ink/model/f;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/calculatorv2/ink/model/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pvi;->e:Lcom/sunia/calculatorv2/ink/model/f;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pvi;->e:Lcom/sunia/calculatorv2/ink/model/f;

    check-cast p1, Lcom/sunia/HTREnginev2/b;

    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->a(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/b;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
