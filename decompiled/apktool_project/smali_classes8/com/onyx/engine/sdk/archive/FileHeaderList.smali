.class public Lcom/onyx/engine/sdk/archive/FileHeaderList;
.super Lcom/onyx/engine/sdk/DataList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/engine/sdk/DataList<",
        "Lcom/onyx/engine/sdk/archive/FileHeader;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/engine/sdk/DataList;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/archive/FileHeaderList;
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/xgg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/xgg;-><init>()V

    const-class v1, Lcom/onyx/engine/sdk/archive/FileHeaderList;

    invoke-static {p0, v1, v0}, Lcom/onyx/engine/sdk/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/archive/FileHeaderList;

    return-object p0
.end method
