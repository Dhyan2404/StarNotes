.class public Lcom/sunia/commonv2/bean/HWRSimpleResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;
    }
.end annotation


# instance fields
.field private contentJson:Ljava/lang/String;

.field private id:J

.field private singleResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/commonv2/bean/HWRSimpleResult;->singleResultList:Ljava/util/List;

    iput-object p1, p0, Lcom/sunia/commonv2/bean/HWRSimpleResult;->contentJson:Ljava/lang/String;

    iput-wide p2, p0, Lcom/sunia/commonv2/bean/HWRSimpleResult;->id:J

    iput-object p4, p0, Lcom/sunia/commonv2/bean/HWRSimpleResult;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentJson()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/HWRSimpleResult;->contentJson:Ljava/lang/String;

    return-object p0
.end method

.method public getSingleResultList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/commonv2/bean/HWRSimpleResult;->singleResultList:Ljava/util/List;

    return-object p0
.end method
