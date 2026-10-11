.class public final Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$Companion;,
        Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0018\u0000 \u001e2\u00020\u0001:\u0002\u001e\u001fB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000b\u001a\u00020\u0004J\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0006J\u0006\u0010\r\u001a\u00020\u0008J\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0008J\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0008J\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0008J\u0008\u0010\u0011\u001a\u00020\u0012H\u0007J\u0008\u0010\u0013\u001a\u00020\u0012H\u0007J\u0008\u0010\u0014\u001a\u00020\u0012H\u0007J\u0008\u0010\u0015\u001a\u00020\u0012H\u0007J\u0008\u0010\u0016\u001a\u00020\u0012H\u0007J\u0008\u0010\u0017\u001a\u00020\u0012H\u0007J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0004J\u0010\u0010\u001a\u001a\u00020\u00002\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u001b\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u001c\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u001d\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;",
        "",
        "()V",
        "displayStyle",
        "",
        "docBean",
        "Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;",
        "key",
        "",
        "remark",
        "value",
        "getDisplayStyle",
        "getDocBean",
        "getFirstLinkedShapeId",
        "getKey",
        "getRemark",
        "getValue",
        "isLinkAudioType",
        "",
        "isLinkNoteType",
        "isLinkPageShapeType",
        "isLinkPageType",
        "isLinkUrlType",
        "isOnlyIconStyle",
        "setDisplayStyle",
        "style",
        "setDocBean",
        "setKey",
        "setRemark",
        "setValue",
        "Companion",
        "DisplayStyle",
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


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHAPE_TYPE_LINK:I = 0x21


# instance fields
.field private displayStyle:I

.field private docBean:Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private key:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private remark:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->Companion:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;->getONLY_ICON()I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->displayStyle:I

    return-void
.end method


# virtual methods
.method public final getDisplayStyle()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->displayStyle:I

    return p0
.end method

.method public final getDocBean()Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->docBean:Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    return-object p0
.end method

.method public final getFirstLinkedShapeId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getDocBean()Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->getShapeIdList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final getRemark()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->remark:Ljava/lang/String;

    return-object p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final isLinkAudioType()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    const-string v0, "AUDIO"

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isLinkNoteType()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    const-string v0, "NOTE"

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isLinkPageShapeType()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->isLinkPageType()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->docBean:Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->getShapeIdList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final isLinkPageType()Z
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    const-string v0, "PAGE_NUMBER"

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->isLinkNoteType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getDocBean()Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getDocBean()Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->isLinkPageValid()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isLinkUrlType()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    const-string v0, "URL"

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isOnlyIconStyle()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getDisplayStyle()I

    move-result p0

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;->getONLY_ICON()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setDisplayStyle(I)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->displayStyle:I

    return-object p0
.end method

.method public final setDocBean(Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->docBean:Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    return-object p0
.end method

.method public final setKey(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final setRemark(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->remark:Ljava/lang/String;

    return-object p0
.end method

.method public final setValue(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->value:Ljava/lang/String;

    return-object p0
.end method
