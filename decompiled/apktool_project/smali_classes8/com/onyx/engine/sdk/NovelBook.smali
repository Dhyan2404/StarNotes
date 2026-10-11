.class public Lcom/onyx/engine/sdk/NovelBook;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/engine/sdk/NovelBook$NovelVolume;,
        Lcom/onyx/engine/sdk/NovelBook$NovelChapter;
    }
.end annotation


# instance fields
.field public chapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/NovelBook$NovelChapter;",
            ">;"
        }
    .end annotation
.end field

.field public hasVolume:Z

.field public volumes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/NovelBook$NovelVolume;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/engine/sdk/NovelBook;->chapters:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/engine/sdk/NovelBook;->volumes:Ljava/util/List;

    return-void
.end method
