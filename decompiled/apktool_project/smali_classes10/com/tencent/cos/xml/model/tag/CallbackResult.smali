.class public Lcom/tencent/cos/xml/model/tag/CallbackResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/tag/CallbackResult$Error;
    }
.end annotation


# instance fields
.field public callbackBody:Ljava/lang/String;

.field public callbackBodyNotBase64:Z

.field public error:Lcom/tencent/cos/xml/model/tag/CallbackResult$Error;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallbackBody()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/cos/xml/model/tag/CallbackResult;->callbackBodyNotBase64:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/CallbackResult;->callbackBody:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/CallbackResult;->callbackBody:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/cos/xml/utils/DigestUtils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
