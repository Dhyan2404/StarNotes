.class public Lcom/sunia/calculatorv2/ink/model/d;
.super Lcom/sunia/calculatorv2/ink/model/g;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/d0;


# instance fields
.field public final h:Ljava/lang/String;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/sunia/HTREnginev2/k;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p4, p5}, Lcom/sunia/calculatorv2/ink/model/g;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object p1, p0, Lcom/sunia/calculatorv2/ink/model/d;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/sunia/calculatorv2/ink/model/d;->i:Ljava/util/List;

    iput-object p3, p0, Lcom/sunia/calculatorv2/ink/model/d;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/d;->h:Ljava/lang/String;

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    const-string p0, "Node"

    return-object p0
.end method

.method public l()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/d;->j:Ljava/util/List;

    return-object p0
.end method

.method public m()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/d;->i:Ljava/util/List;

    return-object p0
.end method
