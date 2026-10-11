.class public final synthetic Lcom/sunia/HTREnginev2/lvi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/b;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lvi;->e:Lcom/sunia/HTREnginev2/b;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lvi;->e:Lcom/sunia/HTREnginev2/b;

    check-cast p1, Lcom/sunia/HTREnginev2/b;

    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->e(Lcom/sunia/HTREnginev2/b;Lcom/sunia/HTREnginev2/b;)Lcom/sunia/HTREnginev2/b;

    move-result-object p0

    return-object p0
.end method
