.class public Lcom/sunia/commonv2/bean/NAICheckResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/commonv2/bean/NAICheckResult$OneChar;
    }
.end annotation


# instance fields
.field private naiCheckException:Lcom/sunia/commonv2/exception/NAICheckException;

.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/NAICheckResult$OneChar;",
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

    iput-object v0, p0, Lcom/sunia/commonv2/bean/NAICheckResult;->result:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getException()Lcom/sunia/commonv2/exception/NAICheckException;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/NAICheckResult;->naiCheckException:Lcom/sunia/commonv2/exception/NAICheckException;

    return-object p0
.end method

.method public getResult()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/NAICheckResult$OneChar;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/commonv2/bean/NAICheckResult;->result:Ljava/util/List;

    return-object p0
.end method

.method public isSuccess()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/NAICheckResult;->naiCheckException:Lcom/sunia/commonv2/exception/NAICheckException;

    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setException(Lcom/sunia/commonv2/exception/NAICheckException;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/NAICheckResult;->naiCheckException:Lcom/sunia/commonv2/exception/NAICheckException;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NAICheckResult{result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sunia/commonv2/bean/NAICheckResult;->result:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", naiCheckException="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sunia/commonv2/bean/NAICheckResult;->naiCheckException:Lcom/sunia/commonv2/exception/NAICheckException;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
