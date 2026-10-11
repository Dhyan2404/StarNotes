.class public final Lcom/onyx/galaxy/note/utils/GuideUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/utils/GuideUtils;",
        "",
        "()V",
        "isDragToolGuideNeed",
        "",
        "isOpenTwoNotesNeed",
        "isPageWhiteSpaceGuideNeed",
        "note_overseasRelease"
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
.field public static final INSTANCE:Lcom/onyx/galaxy/note/utils/GuideUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/utils/GuideUtils;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/utils/GuideUtils;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/utils/GuideUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/GuideUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isDragToolGuideNeed()Z
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v0, "guide_drag_tool"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isOpenTwoNotesNeed()Z
    .locals 3

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v0, "guide_drag_tool"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "guide_open_two_notes"

    invoke-virtual {p0, v2, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final isPageWhiteSpaceGuideNeed()Z
    .locals 3

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v0, "guide_drag_tool"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "guide_page_white_space"

    invoke-virtual {p0, v2, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
