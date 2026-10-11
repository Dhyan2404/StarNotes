.class public final synthetic Lcom/sunia/HTREnginev2/mvi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mvi;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mvi;->e:Ljava/util/Map;

    check-cast p1, Lcom/sunia/HTREnginev2/b;

    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->b(Ljava/util/Map;Lcom/sunia/HTREnginev2/b;)Z

    move-result p0

    return p0
.end method
