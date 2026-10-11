.class public Lcom/sunia/calculatorv2/ink/model/e;
.super Lcom/sunia/calculatorv2/ink/model/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/calculatorv2/ink/model/f<",
        "Lcom/sunia/calculatorv2/ink/model/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Lcom/sunia/calculatorv2/ink/model/e;


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sunia/calculatorv2/ink/model/e;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sunia/calculatorv2/ink/model/e;-><init>(Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/sunia/calculatorv2/ink/model/e;->g:Lcom/sunia/calculatorv2/ink/model/e;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sunia/calculatorv2/ink/model/f;-><init>()V

    iput-object p1, p0, Lcom/sunia/calculatorv2/ink/model/e;->e:Ljava/util/List;

    iput-object p2, p0, Lcom/sunia/calculatorv2/ink/model/e;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public f()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/e;->e:Ljava/util/List;

    return-object p0
.end method

.method public i()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/e;->f:Ljava/util/List;

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    const-string p0, "Container"

    return-object p0
.end method
