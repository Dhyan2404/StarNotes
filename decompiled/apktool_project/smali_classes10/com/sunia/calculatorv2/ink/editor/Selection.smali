.class public Lcom/sunia/calculatorv2/ink/editor/Selection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sunia/calculatorv2/ink/model/IElement;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final converted:Lcom/sunia/calculatorv2/ink/model/IElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final traces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sunia/calculatorv2/ink/model/IElement;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/calculatorv2/ink/editor/Selection;->converted:Lcom/sunia/calculatorv2/ink/model/IElement;

    iput-object p2, p0, Lcom/sunia/calculatorv2/ink/editor/Selection;->traces:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getConverted()Lcom/sunia/calculatorv2/ink/model/IElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/editor/Selection;->converted:Lcom/sunia/calculatorv2/ink/model/IElement;

    return-object p0
.end method

.method public getTraces()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/editor/Selection;->traces:Ljava/util/List;

    return-object p0
.end method
