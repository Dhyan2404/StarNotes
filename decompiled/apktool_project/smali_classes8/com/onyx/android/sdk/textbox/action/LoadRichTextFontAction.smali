.class public final Lcom/onyx/android/sdk/textbox/action/LoadRichTextFontAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/base/data/font/FontInfo;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoadRichTextFontAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadRichTextFontAction.kt\ncom/onyx/android/sdk/textbox/action/LoadRichTextFontAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,52:1\n766#2:53\n857#2,2:54\n1549#2:56\n1620#2,3:57\n766#2:60\n857#2,2:61\n*S KotlinDebug\n*F\n+ 1 LoadRichTextFontAction.kt\ncom/onyx/android/sdk/textbox/action/LoadRichTextFontAction\n*L\n36#1:53\n36#1:54,2\n37#1:56\n37#1:57,3\n38#1:60\n38#1:61,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0015\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0013J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\t\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0004\u0012\u00020\u00030\u0007H\u0002R\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR(\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u000c\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/action/LoadRichTextFontAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "",
        "Lcom/onyx/android/sdk/base/data/font/FontInfo;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "q",
        "",
        "",
        "n",
        "Lcom/onyx/android/sdk/textbox/richtext/RichTextFont;",
        "e",
        "Ljava/util/List;",
        "textFontList",
        "",
        "f",
        "getFontDirs",
        "()Ljava/util/List;",
        "setFontDirs",
        "(Ljava/util/List;)V",
        "fontDirs",
        "<init>",
        "sdk-textbox_overseasRelease"
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
        "SMAP\nLoadRichTextFontAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadRichTextFontAction.kt\ncom/onyx/android/sdk/textbox/action/LoadRichTextFontAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,52:1\n766#2:53\n857#2,2:54\n1549#2:56\n1620#2,3:57\n766#2:60\n857#2,2:61\n*S KotlinDebug\n*F\n+ 1 LoadRichTextFontAction.kt\ncom/onyx/android/sdk/textbox/action/LoadRichTextFontAction\n*L\n36#1:53\n36#1:54,2\n37#1:56\n37#1:57,3\n38#1:60\n38#1:61,2\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/textbox/richtext/RichTextFont;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/textbox/richtext/RichTextFont;",
            ">;)V"
        }
    .end annotation

    const-string v0, "textFontList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/action/LoadRichTextFontAction;->e:Ljava/util/List;

    sget-object p1, Lcom/onyx/android/sdk/data/common/path/AppPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/AppPaths;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/path/AppPaths;->appFontDir()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/action/LoadRichTextFontAction;->f:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$load(Lcom/onyx/android/sdk/textbox/action/LoadRichTextFontAction;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/action/LoadRichTextFontAction;->q()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/base/data/font/FontInfo;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/textbox/action/LoadRichTextFontAction;->p(Lcom/onyx/android/sdk/base/data/font/FontInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/onyx/android/sdk/base/data/font/FontInfo;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/textbox/action/LoadRichTextFontAction;->o(Lcom/onyx/android/sdk/base/data/font/FontInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final o(Lcom/onyx/android/sdk/base/data/font/FontInfo;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final p(Lcom/onyx/android/sdk/base/data/font/FontInfo;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->getFileBaseName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/font/FontInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/textbox/action/LoadRichTextFontAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/textbox/action/LoadRichTextFontAction$a;-><init>(Lcom/onyx/android/sdk/textbox/action/LoadRichTextFontAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getFontDirs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/action/LoadRichTextFontAction;->f:Ljava/util/List;

    return-object p0
.end method

.method public final n()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/base/data/font/FontInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FontUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FontUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/action/LoadRichTextFontAction;->f:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    sget-object v2, Lcom/onyx/android/sdk/base/data/font/FontType;->ALL:Lcom/onyx/android/sdk/base/data/font/FontType;

    invoke-virtual {v0, p0, v1, v1, v2}, Lcom/onyx/android/sdk/base/utils/FontUtils;->buildFontItemAdapter(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/onyx/android/sdk/base/data/font/FontType;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Lcom/sunia/HTREnginev2/c0j;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/c0j;-><init>()V

    invoke-static {v0, p0, v1}, Lorg/apache/commons/collections4/MapUtils;->populateMap(Ljava/util/Map;Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;)V

    new-instance v1, Lcom/sunia/HTREnginev2/d0j;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/d0j;-><init>()V

    invoke-static {v0, p0, v1}, Lorg/apache/commons/collections4/MapUtils;->populateMap(Ljava/util/Map;Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method

.method public final q()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/font/FontInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/action/LoadRichTextFontAction;->n()Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/action/LoadRichTextFontAction;->e:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/textbox/richtext/RichTextFont;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/textbox/richtext/RichTextFont;->getFontFamily()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/textbox/richtext/RichTextFont;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/textbox/richtext/RichTextFont;->getFontFamily()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/onyx/android/sdk/base/data/font/FontInfo;

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/base/data/font/FontInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final setFontDirs(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/action/LoadRichTextFontAction;->f:Ljava/util/List;

    return-void
.end method
