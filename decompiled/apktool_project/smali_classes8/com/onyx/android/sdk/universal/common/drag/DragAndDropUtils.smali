.class public final Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDragAndDropUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragAndDropUtils.kt\ncom/onyx/android/sdk/universal/common/drag/DragAndDropUtils\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,145:1\n32#2,5:146\n41#2,5:151\n*S KotlinDebug\n*F\n+ 1 DragAndDropUtils.kt\ncom/onyx/android/sdk/universal/common/drag/DragAndDropUtils\n*L\n47#1:146,5\n52#1:151,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008(\u0010)J\u0012\u0010\u0006\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u0007J\u0016\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000eJP\u0010\u0019\u001a\u00020\u0005*\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00122\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00112\u001e\u0008\u0002\u0010\u0018\u001a\u0018\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00160\u0015j\u0008\u0012\u0004\u0012\u00020\u0003`\u0017J\n\u0010\u001a\u001a\u00020\u0007*\u00020\tJ\n\u0010\u001b\u001a\u00020\u0007*\u00020\u0003J\n\u0010\u001c\u001a\u00020\u0007*\u00020\u0003J\u000c\u0010\u001e\u001a\u0004\u0018\u00010\u001d*\u00020\u0003J\n\u0010\u001f\u001a\u00020\u0007*\u00020\u0003J\u000c\u0010 \u001a\u00020\u0005*\u00020\tH\u0002R\u0014\u0010!\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0014\u0010#\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008#\u0010\"R\u0014\u0010$\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008$\u0010\"R\u0014\u0010%\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008%\u0010\"R\u0014\u0010&\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008&\u0010\"R\u0014\u0010\'\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\'\u0010\"\u00a8\u0006*"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;",
        "",
        "Landroid/app/Activity;",
        "Landroid/view/DragEvent;",
        "dragEvent",
        "",
        "requestDragAndDropPermissionsSafely",
        "",
        "label",
        "Landroid/content/ClipData;",
        "createCustomClipData",
        "type",
        "Landroid/content/Intent;",
        "buildCustomDragDropIntent",
        "Ljava/io/Serializable;",
        "data",
        "buildDragDropClipData",
        "Landroid/view/View;",
        "Lcom/onyx/android/sdk/ui/ShadowCreateArgs;",
        "shadowCreateArgs",
        "responseView",
        "Lkotlin/Function1;",
        "",
        "Lcom/onyx/android/sdk/base/extension/SingleArgCallbackFunc;",
        "responseAction",
        "dragAndDropOnce",
        "getCustomDragDropType",
        "name",
        "info",
        "Landroid/os/Bundle;",
        "getDataBundle",
        "getDataType",
        "e",
        "KEY_DRAG_DROP_TYPE",
        "Ljava/lang/String;",
        "KEY_DRAG_DROP_DATA",
        "DRAG_DROP_TYPE_TOC",
        "DRAG_DROP_TYPE_COLOR_CELL",
        "DRAG_DROP_TYPE_UNIVERSAL_ITEM",
        "DRAG_DROP_TYPE_UNIVERSAL_FAVORITE_ITEM",
        "<init>",
        "()V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDragAndDropUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragAndDropUtils.kt\ncom/onyx/android/sdk/universal/common/drag/DragAndDropUtils\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,145:1\n32#2,5:146\n41#2,5:151\n*S KotlinDebug\n*F\n+ 1 DragAndDropUtils.kt\ncom/onyx/android/sdk/universal/common/drag/DragAndDropUtils\n*L\n47#1:146,5\n52#1:151,5\n*E\n"
    }
.end annotation


# static fields
.field public static final DRAG_DROP_TYPE_COLOR_CELL:Ljava/lang/String; = "ColorCell"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DRAG_DROP_TYPE_TOC:Ljava/lang/String; = "Toc"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DRAG_DROP_TYPE_UNIVERSAL_FAVORITE_ITEM:Ljava/lang/String; = "UniversalFavoriteItem"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DRAG_DROP_TYPE_UNIVERSAL_ITEM:Ljava/lang/String; = "UniversalItem"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_DRAG_DROP_DATA:Ljava/lang/String; = "DragDropData"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_DRAG_DROP_TYPE:Ljava/lang/String; = "DragDropType"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;->c(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;->d(Lkotlin/jvm/functions/Function1;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public static final c(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2

    const-string v0, "$this_dragAndDropOnce"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v1, 0x4

    if-eq p3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->cancelDragAndDrop()V

    goto :goto_0

    :cond_2
    const p1, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return v0
.end method

.method public static final d(Lkotlin/jvm/functions/Function1;Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 0

    const-string p1, "$responseAction"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic dragAndDropOnce$default(Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;Landroid/view/View;Ljava/lang/String;Ljava/io/Serializable;Lcom/onyx/android/sdk/ui/ShadowCreateArgs;Landroid/view/View;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
    .locals 18

    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7f

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;-><init>(FFFFFIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v0

    goto :goto_0

    :cond_0
    move-object/from16 v15, p4

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move-object/from16 v16, v0

    goto :goto_1

    :cond_1
    move-object/from16 v16, p5

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    sget-object v0, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils$dragAndDropOnce$1;->INSTANCE:Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils$dragAndDropOnce$1;

    move-object/from16 v17, v0

    goto :goto_2

    :cond_2
    move-object/from16 v17, p6

    :goto_2
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-virtual/range {v11 .. v17}, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;->dragAndDropOnce(Landroid/view/View;Ljava/lang/String;Ljava/io/Serializable;Lcom/onyx/android/sdk/ui/ShadowCreateArgs;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final buildCustomDragDropIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "type"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "DragDropType"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public final buildDragDropClipData(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/ClipData;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/Serializable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "type"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "DragDropType"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "DragDropData"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {p1, p0}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final createCustomClipData(Ljava/lang/String;)Landroid/content/ClipData;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "label"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/content/ClipData;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Landroid/content/ClipData$Item;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-direct {v1, v2}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, p1, v0, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-object p0
.end method

.method public final dragAndDropOnce(Landroid/view/View;Ljava/lang/String;Ljava/io/Serializable;Lcom/onyx/android/sdk/ui/ShadowCreateArgs;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/Serializable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/ui/ShadowCreateArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            "Lcom/onyx/android/sdk/ui/ShadowCreateArgs;",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/DragEvent;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shadowCreateArgs"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseAction"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;->buildDragDropClipData(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/ClipData;

    move-result-object p0

    new-instance p2, Lcom/sunia/HTREnginev2/phf;

    invoke-direct {p2, p1, p5}, Lcom/sunia/HTREnginev2/phf;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    if-eqz p5, :cond_0

    new-instance p2, Lcom/sunia/HTREnginev2/qhf;

    invoke-direct {p2, p6}, Lcom/sunia/HTREnginev2/qhf;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p5, p2}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_0
    invoke-virtual {p4, p1}, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;->createDragDropShadow(Landroid/view/View;)Landroid/view/View$DragShadowBuilder;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-virtual {p1, p0, p2, p3, p4}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final e(Landroid/content/ClipData;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final getCustomDragDropType(Landroid/content/ClipData;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/ClipData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result p0

    const-string v0, ""

    if-gtz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "DragDropType"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p0

    :goto_1
    return-object v0
.end method

.method public final getDataBundle(Landroid/view/DragEvent;)Landroid/os/Bundle;
    .locals 0
    .param p1    # Landroid/view/DragEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getDataType(Landroid/view/DragEvent;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/view/DragEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final info(Landroid/view/DragEvent;)Ljava/lang/String;
    .locals 2
    .param p1    # Landroid/view/DragEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;->name(Landroid/view/DragEvent;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final name(Landroid/view/DragEvent;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/view/DragEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "NONE"

    goto :goto_0

    :pswitch_0
    const-string p0, "EXIT"

    goto :goto_0

    :pswitch_1
    const-string p0, "ENTER"

    goto :goto_0

    :pswitch_2
    const-string p0, "END"

    goto :goto_0

    :pswitch_3
    const-string p0, "DROP"

    goto :goto_0

    :pswitch_4
    const-string p0, "LOCATION"

    goto :goto_0

    :pswitch_5
    const-string p0, "START"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final requestDragAndDropPermissionsSafely(Landroid/app/Activity;Landroid/view/DragEvent;)Z
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/DragEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dragEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BuildKt;->isApiLevelBelow(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-nez v3, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;->e(Landroid/content/ClipData;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_4

    :cond_2
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object p0

    if-eqz p0, :cond_3

    move p0, v1

    goto :goto_1

    :cond_3
    move p0, v2

    :goto_1
    if-nez p0, :cond_5

    sget-object p0, Lcom/onyx/android/sdk/base/extension/ClipBoard;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ClipBoard;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/extension/ClipBoard;->hasTextUriList(Landroid/content/ClipData;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :cond_5
    :goto_2
    move v2, v1

    goto :goto_3

    :catchall_0
    move-exception p0

    const-string p1, "requestDragAndDropPermissions"

    const-string p2, "permission not granted"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return v2

    :cond_6
    :goto_4
    return v1
.end method
