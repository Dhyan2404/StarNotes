.class public final Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExportPageToBitmapAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExportPageToBitmapAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,90:1\n1#2:91\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J-\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction$Companion;",
        "",
        "()V",
        "getPageBoxInfo",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "editorBundle",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "pageId",
        "",
        "pageIndex",
        "",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/Integer;)Lio/reactivex/rxjava3/core/Observable;",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nExportPageToBitmapAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExportPageToBitmapAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,90:1\n1#2:91\n*E\n"
    }
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPageBoxInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/Integer;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "editorBundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object p0

    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentPageIndex(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result p3

    :goto_0
    iput p3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p0, p2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPageIndex(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-ltz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    new-instance p2, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction$Companion$getPageBoxInfo$2;

    invoke-direct {p2, v0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction$Companion$getPageBoxInfo$2;-><init>(Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    iput p0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_3
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/request/page/GetPageBoxInfoRequest;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p2

    iget p3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/onyx/android/sdk/universal/editor/request/page/GetPageBoxInfoRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;ILjava/lang/Float;)V

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToCore(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction$Companion$a;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction$Companion$a;-><init>(Lcom/onyx/android/sdk/universal/editor/request/page/GetPageBoxInfoRequest;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
