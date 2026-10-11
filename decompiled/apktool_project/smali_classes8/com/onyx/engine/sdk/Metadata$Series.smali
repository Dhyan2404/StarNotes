.class public Lcom/onyx/engine/sdk/Metadata$Series;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/engine/sdk/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Series"
.end annotation


# instance fields
.field index:Ljava/lang/String;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Metadata$Series;->index:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Metadata$Series;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setIndex(Ljava/lang/String;)Lcom/onyx/engine/sdk/Metadata$Series;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Metadata$Series;->index:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/onyx/engine/sdk/Metadata$Series;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Metadata$Series;->name:Ljava/lang/String;

    return-object p0
.end method
