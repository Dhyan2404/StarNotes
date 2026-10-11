.class public Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;->type:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;->type:Ljava/lang/String;

    return-object p0
.end method

.method public setType(Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;->setType(Ljava/lang/String;)V

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;->type:Ljava/lang/String;

    return-void
.end method

.method public withType(Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;)Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;->setType(Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;)V

    return-object p0
.end method

.method public withType(Ljava/lang/String;)Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;->setType(Ljava/lang/String;)V

    return-object p0
.end method
