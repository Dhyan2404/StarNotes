.class public final synthetic Lcom/sunia/HTREnginev2/a5p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:F

.field public final synthetic f:F


# direct methods
.method public synthetic constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/a5p;->e:F

    iput p2, p0, Lcom/sunia/HTREnginev2/a5p;->f:F

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/a5p;->e:F

    iget p0, p0, Lcom/sunia/HTREnginev2/a5p;->f:F

    check-cast p1, Lcom/sunia/HTREnginev2/s1;

    invoke-static {v0, p0, p1}, Lcom/sunia/HTREnginev2/q1;->e(FFLcom/sunia/HTREnginev2/s1;)Lcom/sunia/calculatorv2/ink/util/Pair;

    move-result-object p0

    return-object p0
.end method
