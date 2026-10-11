.class public final Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDisplayRenderSliceAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisplayRenderSliceAction.kt\ncom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,345:1\n288#2,2:346\n1855#2,2:348\n*S KotlinDebug\n*F\n+ 1 DisplayRenderSliceAction.kt\ncom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction\n*L\n287#1:346,2\n325#1:348,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B)\u0012\u0006\u00103\u001a\u000200\u0012\u0006\u00106\u001a\u00020\"\u0012\u0006\u0010=\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010A\u001a\u00020>\u00a2\u0006\u0004\u0008H\u0010IJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001a\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J*\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u001a\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0008H\u0002J\"\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0011\u001a\u00020\u0002H\u0002J\"\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00022\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0008H\u0002J\u0018\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0002H\u0002J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0002H\u0002J\u000e\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019H\u0002J\u0008\u0010\u001d\u001a\u00020\u001cH\u0002J\u0016\u0010 \u001a\u00020\u00042\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u001eH\u0002J\n\u0010!\u001a\u0004\u0018\u00010\u0008H\u0002J\u0008\u0010#\u001a\u00020\"H\u0002J\u0010\u0010%\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020$H\u0002J\u0014\u0010&\u001a\u0006\u0012\u0002\u0008\u00030\u00192\u0006\u0010\u0010\u001a\u00020$H\u0002J\u0016\u0010\'\u001a\u00020\u00042\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u001eH\u0002J\u0008\u0010)\u001a\u00020(H\u0002J\u0008\u0010*\u001a\u00020\u001aH\u0002J\u0010\u0010-\u001a\u00020\u00042\u0006\u0010,\u001a\u00020+H\u0002J\u0010\u0010.\u001a\u00020\u00042\u0006\u0010,\u001a\u00020+H\u0002J\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0019R\u0016\u00103\u001a\u0002008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0016\u00106\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u00105R\"\u0010=\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\u0016\u0010A\u001a\u00020>8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0018\u0010D\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010CR\u0018\u0010E\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010CR\u0018\u0010G\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010F\u00a8\u0006J"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;",
        "",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "displayVirtualPageBoxInfo",
        "",
        "e",
        "Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;",
        "contentRenderArgs",
        "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
        "f",
        "Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;",
        "noteRenderArgs",
        "contentSlice",
        "g",
        "newInfo",
        "h",
        "info",
        "displayNoteInfo",
        "u",
        "cacheSlice",
        "t",
        "readerRenderArgs",
        "renderVirtualPageBoxInfo",
        "v",
        "w",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "r",
        "Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;",
        "k",
        "",
        "outputList",
        "x",
        "i",
        "Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;",
        "j",
        "Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;",
        "p",
        "q",
        "o",
        "Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;",
        "l",
        "s",
        "",
        "msg",
        "m",
        "n",
        "build",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "a",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "b",
        "Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;",
        "renderHandler",
        "c",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "getVirtualPageBoxInfo",
        "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "setVirtualPageBoxInfo",
        "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V",
        "virtualPageBoxInfo",
        "",
        "d",
        "F",
        "renderMaxScale",
        "Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;",
        "Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;",
        "cachePageSliceInfo",
        "renderSuccessPageSliceInfo",
        "Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;",
        "renderInfo",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;Lcom/onyx/android/sdk/geometry/data/BoxInfo;F)V",
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
        "SMAP\nDisplayRenderSliceAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisplayRenderSliceAction.kt\ncom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,345:1\n288#2,2:346\n1855#2,2:348\n*S KotlinDebug\n*F\n+ 1 DisplayRenderSliceAction.kt\ncom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction\n*L\n287#1:346,2\n325#1:348,2\n*E\n"
    }
.end annotation


# instance fields
.field public a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:F

.field public e:Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;Lcom/onyx/android/sdk/geometry/data/BoxInfo;F)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    .line 3
    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->b:Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;

    .line 4
    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    .line 5
    iput p4, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->d:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;Lcom/onyx/android/sdk/geometry/data/BoxInfo;FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 6
    sget-object p4, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {p4}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->getRENDER_MAX_SCREEN_SCALE()F

    move-result p4

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;Lcom/onyx/android/sdk/geometry/data/BoxInfo;F)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;Lkotlin/Unit;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->c(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;Lkotlin/Unit;)V

    return-void
.end method

.method public static final synthetic access$computeContentAndNoteSliceList(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->e(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method

.method public static final synthetic access$getCachePageSliceInfo$p(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;)Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->e:Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;

    return-object p0
.end method

.method public static final synthetic access$getRenderInfo$p(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;)Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->g:Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;

    return-object p0
.end method

.method public static final synthetic access$getRenderRequestManager(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;)Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->k()Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRenderSuccessPageSliceInfo$p(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;)Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->f:Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;

    return-object p0
.end method

.method public static final synthetic access$getSliceStateManager(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;)Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->l()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$log(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->m(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$logW(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->n(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$prepareToDisplay(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->o(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$renderContent(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->p(Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;)V

    return-void
.end method

.method public static final synthetic access$renderContentNote(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->q(Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$renderPage(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->r()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateRenderSuccessSliceInfo(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->x(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->d(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;Ljava/lang/Object;)V

    return-void
.end method

.method public static final c(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;Lkotlin/Unit;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->b:Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->e:Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->refreshPage(Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;)V

    return-void
.end method

.method public static final d(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->f:Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->b:Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->refreshPageAfterRender(Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final build()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$build$2;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$build$2;-><init>(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;)V

    new-instance v3, Lcom/sunia/HTREnginev2/u5f;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/u5f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;)V

    invoke-static {v0, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$build$4;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$build$4;-><init>(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;)V

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$build$5;

    invoke-direct {v3, p0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$build$5;-><init>(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;)V

    invoke-static {v0, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$build$6;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$build$6;-><init>(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;)V

    new-instance v3, Lcom/sunia/HTREnginev2/v5f;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/v5f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;)V

    invoke-static {v0, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$b;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final e(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "computeContentAndNoteSliceList, id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->m(Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7e

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;-><init>(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/RectF;Ljava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->f(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    invoke-direct {v2, p1}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->g(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->isNeedRender()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->isNeedRender()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;

    invoke-direct {v1, p1, v0, v2}, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;)V

    iput-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->g:Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;

    :cond_1
    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->s()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getContentInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getExtraInfo()Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;->getContentPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "template_json"

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v4, v5, v6, v7, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual {p2, v4}, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->setEnableDiskCache(Z)V

    invoke-virtual {p0, p2, v0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->v(Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager;->Companion:Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$Companion;->getInstance()Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager;->getPageNormalProvider()Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$SliceRectProvider;

    move-result-object v0

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->b:Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->viewportRectF()Landroid/graphics/RectF;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$SliceRectProvider;->collectVisibleContentSliceRect(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v1

    :cond_3
    sget-object v1, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->Companion:Lcom/onyx/android/sdk/geometry/data/SliceInfo$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;->getContentPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v1, p1, v2, v4, v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo$Companion;->createContent(Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/lang/String;Landroid/graphics/RectF;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->setHighQuality(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->l()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->ensureSliceCacheInfo(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getState()Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v5, :cond_5

    if-eq p1, v7, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->copy()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p0

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;->getContentPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->setPath(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->setScale(F)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->setDisplayRectF(Landroid/graphics/RectF;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->setPosition(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->setPageRect(Landroid/graphics/RectF;)V

    filled-new-array {p0}, [Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->setSliceInfoList(Ljava/util/List;)V

    goto :goto_0

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_5
    :goto_0
    return-object p0
.end method

.method public final g(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;)V
    .locals 4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->w(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager;->Companion:Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$Companion;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$Companion;->getInstance()Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager;->getPageNormalProvider()Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$SliceRectProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->b:Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->viewportRectF()Landroid/graphics/RectF;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$SliceRectProvider;->collectVisibleNoteSliceRect(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    sget-object v2, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->Companion:Lcom/onyx/android/sdk/geometry/data/SliceInfo$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo$Companion;->createContentNote(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->setHighQuality(Z)V

    invoke-virtual {p0, v0, p3}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->h(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isCanDisplay()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0, p1, p3}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->t(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0, p3, p1}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->u(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    :goto_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isCanDraw()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isRendering()Z

    move-result v1

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p4}, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->isNeedRender()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cache content is rendering, content is reuse by multi notePage, do not render note, waiting for content render complete"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->m(Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->copy()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p1

    sget-object p4, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p4}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getExcerptShapeAttrOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p4

    invoke-virtual {p4}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;

    invoke-virtual {p4}, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->getShowIndicator()Z

    move-result p4

    invoke-virtual {p2, p4}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->setShowExcerptIndicator(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->s()Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->setSupportRenderPageContentBitmap(Z)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->getSliceRenderInfoList()Ljava/util/List;

    move-result-object p0

    new-instance p2, Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;

    invoke-direct {p2, p1, p3}, Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;-><init>(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public final getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final h(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->l()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->ensureSliceCacheInfo(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/onyx/android/sdk/geometry/data/SliceKt;->isValid(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isCanDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contentInvalid, contentNote valid, render page again\n, content = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getState()Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\n, contentNote = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getState()Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->m(Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;-><init>()V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->setSafeBitmap(Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;)V

    sget-object p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;->NO_CACHE:Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->updateState(Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;)V

    :cond_1
    return-object p1
.end method

.method public final i()Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->s()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->g:Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;

    if-nez v0, :cond_1

    const-string v0, "renderInfo null, contentSlice null"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->n(Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;->getNoteRenderArgs()Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->getSliceRenderInfoList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;->getContentCacheSlice()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", contentSlice null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->n(Ljava/lang/String;)V

    :cond_3
    return-object v1
.end method

.method public final j()Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->b:Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;

    return-object p0
.end method

.method public final k()Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->j()Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->renderRequestManager()Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;

    move-result-object p0

    return-object p0
.end method

.method public final l()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->j()Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->getSliceStateManager()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

    move-result-object p0

    return-object p0
.end method

.method public final m(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->wTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final o(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final p(Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;)V
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;->getContentRequest()Lcom/onyx/android/sdk/reader/request/RenderContentRequest;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_0
    return-void
.end method

.method public final q(Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;->getNoteAction()Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final r()Lio/reactivex/rxjava3/core/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->g:Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;

    if-nez v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", displayScale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", renderScale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;->getNoteRenderArgs()Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->noteSliceList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "renderPage, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->m(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->k()Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->b:Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->pendingRenderTaskMaxCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->cancelLimitPendingRequestList(I)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;->getContentRenderArgs()Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->isNeedRender()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;->getContentRenderArgs()Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;->setContentRequest(Lcom/onyx/android/sdk/reader/request/RenderContentRequest;)V

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;->getNoteRenderArgs()Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->isNeedRender()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;->getNoteRenderArgs()Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;->setNoteAction(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)V

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->k()Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->addPageRenderRequestInfo(Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$c;

    invoke-direct {v3, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$d;

    invoke-direct {v3, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$e;

    invoke-direct {v3, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->getPrepareToDrawTimeMills()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lio/reactivex/rxjava3/core/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$f;

    invoke-direct {v3, p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final s()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportRenderPageContentBitmap()Z

    move-result p0

    return p0
.end method

.method public final setVirtualPageBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method public final t(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->toScaleSliceInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p1

    sget-object p2, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;->Companion:Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo$Companion;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p2, v0, p1, p3}, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo$Companion;->createDisplayInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->e:Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;

    return-void
.end method

.method public final u(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->l()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->findDisplayCache(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->l()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->findDisplayCache(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p3, p2}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->t(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V

    :cond_1
    return-void
.end method

.method public final v(Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->offsetToOrigin()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getContentInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v1

    div-float/2addr v0, v1

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->b:Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->viewportRectF()Landroid/graphics/RectF;

    move-result-object v2

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->d:F

    invoke-virtual {v1, p1, v2, p0}, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->contentPageMaxScale(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;F)F

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p1

    cmpl-float p1, p1, p0

    if-lez p1, :cond_1

    mul-float/2addr p0, v0

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setScale(F)V

    :cond_1
    return-void
.end method

.method public final w(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->offsetToOrigin()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->b:Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->viewportRectF()Landroid/graphics/RectF;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->d:F

    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->virtualPageMaxScale(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;F)F

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v0

    cmpl-float v0, v0, p0

    if-lez v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setScale(F)V

    :cond_0
    return-void
.end method

.method public final x(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isContentNote()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->toScaleSliceInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->i()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;->Companion:Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo$Companion;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v1, v2, p1, v0}, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo$Companion;->createDisplayInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->f:Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;

    return-void
.end method
