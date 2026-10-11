.class public Lcom/sunia/calculatorv2/ink/model/z;
.super Lcom/sunia/calculatorv2/ink/model/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/calculatorv2/ink/model/f<",
        "Lcom/sunia/calculatorv2/ink/model/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Lcom/sunia/calculatorv2/ink/model/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/z;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sunia/calculatorv2/ink/model/f;-><init>()V

    iput-object p1, p0, Lcom/sunia/calculatorv2/ink/model/z;->e:Lcom/sunia/calculatorv2/ink/model/f;

    iput-object p2, p0, Lcom/sunia/calculatorv2/ink/model/z;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/sunia/HTREnginev2/k;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/z;->e:Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->c()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/z;->e:Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->d()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
    .locals 0

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/z;->e:Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p0

    return-object p0
.end method

.method public f()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/z;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/z;->f:Ljava/util/List;

    return-object p0
.end method

.method public g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
    .locals 0

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/z;->e:Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p0

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/z;->e:Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->j()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public l()Lcom/sunia/calculatorv2/ink/model/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/z;->e:Lcom/sunia/calculatorv2/ink/model/f;

    return-object p0
.end method
