.class public final Lcom/onyx/android/sdk/textbox/data/TextAlignType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/textbox/data/TextAlignType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/textbox/data/TextAlignType$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\tJ\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/data/TextAlignType$Companion;",
        "",
        "()V",
        "fromAlignment",
        "Lcom/onyx/android/sdk/textbox/data/TextAlignType;",
        "alignment",
        "Landroid/text/Layout$Alignment;",
        "fromValue",
        "value",
        "",
        "toAlignment",
        "alignType",
        "toTextAlignment",
        "",
        "sdk-textbox_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/textbox/data/TextAlignType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromAlignment(Landroid/text/Layout$Alignment;)Lcom/onyx/android/sdk/textbox/data/TextAlignType;
    .locals 0
    .param p1    # Landroid/text/Layout$Alignment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "alignment"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/textbox/data/TextAlignType$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/textbox/data/TextAlignType;->JUSTIFY_CENTER:Lcom/onyx/android/sdk/textbox/data/TextAlignType;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/textbox/data/TextAlignType;->JUSTIFY_RIGHT:Lcom/onyx/android/sdk/textbox/data/TextAlignType;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/textbox/data/TextAlignType;->JUSTIFY_LEFT:Lcom/onyx/android/sdk/textbox/data/TextAlignType;

    :goto_0
    return-object p0
.end method

.method public final fromValue(Ljava/lang/String;)Lcom/onyx/android/sdk/textbox/data/TextAlignType;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/textbox/data/TextAlignType;->values()[Lcom/onyx/android/sdk/textbox/data/TextAlignType;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/textbox/data/TextAlignType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyEqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/textbox/data/TextAlignType;->JUSTIFY_LEFT:Lcom/onyx/android/sdk/textbox/data/TextAlignType;

    return-object p0
.end method

.method public final toAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "alignType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/textbox/data/TextAlignType;->Companion:Lcom/onyx/android/sdk/textbox/data/TextAlignType$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/data/TextAlignType$Companion;->fromValue(Ljava/lang/String;)Lcom/onyx/android/sdk/textbox/data/TextAlignType;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/textbox/data/TextAlignType$Companion$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_2
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_0
    return-object p0
.end method

.method public final toTextAlignment(Landroid/text/Layout$Alignment;)I
    .locals 0
    .param p1    # Landroid/text/Layout$Alignment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "alignment"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextAlignType;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextAlignType;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextAlignType;->toTextAlignment(Landroid/text/Layout$Alignment;)I

    move-result p0

    return p0
.end method

.method public final toTextAlignment(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "alignType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextAlignType;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextAlignType;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/data/TextAlignType$Companion;->toAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextAlignType;->toTextAlignment(Landroid/text/Layout$Alignment;)I

    move-result p0

    return p0
.end method
