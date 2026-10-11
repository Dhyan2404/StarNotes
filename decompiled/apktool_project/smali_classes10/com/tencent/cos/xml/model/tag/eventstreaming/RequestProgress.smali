.class public Lcom/tencent/cos/xml/model/tag/eventstreaming/RequestProgress;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private enabled:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/RequestProgress;->enabled:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getEnabled()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/RequestProgress;->enabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setEnabled(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/RequestProgress;->enabled:Ljava/lang/Boolean;

    return-void
.end method

.method public withEnabled(Ljava/lang/Boolean;)Lcom/tencent/cos/xml/model/tag/eventstreaming/RequestProgress;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/RequestProgress;->setEnabled(Ljava/lang/Boolean;)V

    return-object p0
.end method
