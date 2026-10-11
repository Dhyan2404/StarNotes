.class public final synthetic Lcom/sunia/HTREnginev2/d6p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/sunia/HTREnginev2/r;->t0(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/k;

    move-result-object p0

    return-object p0
.end method
