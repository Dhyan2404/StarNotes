.class public Lcom/tencent/qimei/sdk/QimeiSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "QmSDK"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;
    .locals 0

    invoke-static {p0}, Lcom/tencent/qimei/r/l;->a(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;

    move-result-object p0

    return-object p0
.end method
