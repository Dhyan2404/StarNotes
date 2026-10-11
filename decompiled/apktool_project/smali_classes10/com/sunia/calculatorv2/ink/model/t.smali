.class public Lcom/sunia/calculatorv2/ink/model/t;
.super Lcom/sunia/calculatorv2/ink/model/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/calculatorv2/ink/model/f<",
        "Lcom/sunia/calculatorv2/ink/model/u;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/u;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sunia/calculatorv2/ink/model/f;-><init>()V

    iput-object p1, p0, Lcom/sunia/calculatorv2/ink/model/t;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public f()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/u;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/t;->e:Ljava/util/List;

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    const-string p0, "matrix"

    return-object p0
.end method
