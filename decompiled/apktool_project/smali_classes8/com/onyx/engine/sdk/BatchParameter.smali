.class public Lcom/onyx/engine/sdk/BatchParameter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BATCH_FONT_ONCE_LIMIT:I = 0x28

.field public static final BATCH_ONCE_LIMIT:I = 0x64


# instance fields
.field public limit:I

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/onyx/engine/sdk/BatchParameter;->limit:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/engine/sdk/BatchParameter;->start:I

    return-void
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/onyx/engine/sdk/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
