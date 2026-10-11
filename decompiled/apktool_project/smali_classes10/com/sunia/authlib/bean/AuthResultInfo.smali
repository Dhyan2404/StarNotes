.class public Lcom/sunia/authlib/bean/AuthResultInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public code:I

.field public msg:Ljava/lang/String;

.field public savePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunia/authlib/bean/AuthResultInfo;->code:I

    const-string v0, ""

    iput-object v0, p0, Lcom/sunia/authlib/bean/AuthResultInfo;->msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/sunia/authlib/bean/AuthResultInfo;->savePath:Ljava/lang/String;

    return-void
.end method
