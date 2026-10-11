.class public Lcom/sunia/HTREnginev2/o;
.super Lcom/sunia/calculatorv2/ink/model/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/calculatorv2/ink/model/b<",
        "Lcom/sunia/calculatorv2/ink/model/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sunia/calculatorv2/ink/model/b;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public j()Ljava/lang/String;
    .locals 0

    const-string p0, "Drawing"

    return-object p0
.end method
