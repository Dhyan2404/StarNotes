.class public Lcom/sunia/commonv2/bean/NAITextBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/commonv2/bean/NAITextBean$OneChar;
    }
.end annotation


# instance fields
.field private rowList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rows"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/NAITextBean$OneChar;",
            ">;>;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1"

    iput-object v0, p0, Lcom/sunia/commonv2/bean/NAITextBean;->version:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/commonv2/bean/NAITextBean;->rowList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getRowList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/NAITextBean$OneChar;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/commonv2/bean/NAITextBean;->rowList:Ljava/util/List;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/NAITextBean;->version:Ljava/lang/String;

    return-object p0
.end method
