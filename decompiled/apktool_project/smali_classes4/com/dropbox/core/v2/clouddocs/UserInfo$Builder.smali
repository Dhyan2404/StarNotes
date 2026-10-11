.class public Lcom/dropbox/core/v2/clouddocs/UserInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/clouddocs/UserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected email:Ljava/lang/String;

.field protected id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\"\""

    iput-object v0, p0, Lcom/dropbox/core/v2/clouddocs/UserInfo$Builder;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/v2/clouddocs/UserInfo$Builder;->email:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/clouddocs/UserInfo;
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/clouddocs/UserInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/clouddocs/UserInfo$Builder;->id:Ljava/lang/String;

    iget-object p0, p0, Lcom/dropbox/core/v2/clouddocs/UserInfo$Builder;->email:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/clouddocs/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/clouddocs/UserInfo$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/v2/clouddocs/UserInfo$Builder;->email:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "\"\""

    iput-object p1, p0, Lcom/dropbox/core/v2/clouddocs/UserInfo$Builder;->email:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public withId(Ljava/lang/String;)Lcom/dropbox/core/v2/clouddocs/UserInfo$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/v2/clouddocs/UserInfo$Builder;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "\"\""

    iput-object p1, p0, Lcom/dropbox/core/v2/clouddocs/UserInfo$Builder;->id:Ljava/lang/String;

    :goto_0
    return-object p0
.end method
