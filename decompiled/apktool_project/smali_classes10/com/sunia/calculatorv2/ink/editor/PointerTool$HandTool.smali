.class public Lcom/sunia/calculatorv2/ink/editor/PointerTool$HandTool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/calculatorv2/ink/editor/PointerTool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/calculatorv2/ink/editor/PointerTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandTool"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/q;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/p1;->getPoints()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/p1;->b()Lcom/sunia/HTREnginev2/s1;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/p1;->a()Lcom/sunia/HTREnginev2/s1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result p1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result p0

    sub-float/2addr p1, p0

    neg-float p0, v0

    neg-float p1, p1

    invoke-virtual {p2, p0, p1}, Lcom/sunia/HTREnginev2/q;->c(FF)V

    :cond_0
    return-void
.end method

.method public getStyleName()Ljava/lang/String;
    .locals 0

    const-string p0, "hand"

    return-object p0
.end method
