.class public Lcom/onyx/engine/sdk/TableOfContent$TocParameter;
.super Lcom/onyx/engine/sdk/BatchParameter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/engine/sdk/TableOfContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TocParameter"
.end annotation


# instance fields
.field public loadPosition:Z

.field public loadRootTitle:Z

.field public path:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public recursive:Z
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/engine/sdk/BatchParameter;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/onyx/engine/sdk/TableOfContent$TocParameter;->path:Ljava/util/ArrayDeque;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/engine/sdk/TableOfContent$TocParameter;->loadPosition:Z

    return-void
.end method
