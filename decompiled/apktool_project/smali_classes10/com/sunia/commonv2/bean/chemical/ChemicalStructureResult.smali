.class public Lcom/sunia/commonv2/bean/chemical/ChemicalStructureResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private recognitionBeanList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recognition"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/chemical/RecognitionBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/commonv2/bean/chemical/ChemicalStructureResult;->recognitionBeanList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getRecognitionBeanList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/chemical/RecognitionBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/commonv2/bean/chemical/ChemicalStructureResult;->recognitionBeanList:Ljava/util/List;

    return-object p0
.end method
