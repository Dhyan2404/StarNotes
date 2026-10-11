.class public final Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000f\u001a\u00020\u0000R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;",
        "Ljava/io/Serializable;",
        "()V",
        "margin",
        "Lcom/onyx/android/sdk/geometry/data/MarginPercent;",
        "getMargin",
        "()Lcom/onyx/android/sdk/geometry/data/MarginPercent;",
        "setMargin",
        "(Lcom/onyx/android/sdk/geometry/data/MarginPercent;)V",
        "style",
        "Lcom/onyx/android/sdk/geometry/data/MarginStyle;",
        "getStyle",
        "()Lcom/onyx/android/sdk/geometry/data/MarginStyle;",
        "setStyle",
        "(Lcom/onyx/android/sdk/geometry/data/MarginStyle;)V",
        "copy",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private margin:Lcom/onyx/android/sdk/geometry/data/MarginPercent;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        alternateNames = {
            "b"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private style:Lcom/onyx/android/sdk/geometry/data/MarginStyle;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        alternateNames = {
            "a"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;->style:Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;->margin:Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    return-void
.end method


# virtual methods
.method public final copy()Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;->style:Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->copy()Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;->style:Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;->margin:Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->copy()Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    move-result-object p0

    iput-object p0, v0, Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;->margin:Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    return-object v0
.end method

.method public final getMargin()Lcom/onyx/android/sdk/geometry/data/MarginPercent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;->margin:Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    return-object p0
.end method

.method public final getStyle()Lcom/onyx/android/sdk/geometry/data/MarginStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;->style:Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    return-object p0
.end method

.method public final setMargin(Lcom/onyx/android/sdk/geometry/data/MarginPercent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/MarginPercent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;->margin:Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    return-void
.end method

.method public final setStyle(Lcom/onyx/android/sdk/geometry/data/MarginStyle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/MarginStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;->style:Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    return-void
.end method
