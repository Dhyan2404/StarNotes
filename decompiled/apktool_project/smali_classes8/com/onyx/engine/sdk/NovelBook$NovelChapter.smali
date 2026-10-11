.class public Lcom/onyx/engine/sdk/NovelBook$NovelChapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/engine/sdk/NovelBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NovelChapter"
.end annotation


# instance fields
.field public buy:Z

.field public canRead:Z

.field public id:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public words:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
