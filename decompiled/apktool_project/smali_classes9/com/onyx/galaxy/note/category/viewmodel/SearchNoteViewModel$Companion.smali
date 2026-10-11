.class public final Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$Companion;",
        "",
        "()V",
        "createSearchArgs",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;",
        "searchTypes",
        "",
        "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;",
        "keyword",
        "",
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
    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createSearchArgs(Ljava/util/List;Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "searchTypes"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "keyword"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->getHwrArgs()Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->INSTANCE:Lcom/onyx/android/sdk/universal/util/HWREngineManager;

    const-string v2, "hwr_search"

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->getDefaultLangByFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;->setLang(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->getHwrArgs()Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;

    move-result-object v0

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->getRecognizerTypeByFunction(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;->setRecognizer(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->getHwrArgs()Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->getHwrArgs()Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;->getRecognizer()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerTypeKt;->getEngineType(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->shouldEnableSegmentFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;->setSegmentation(Z)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->setSearchTypes(Ljava/util/List;)V

    sget-object p1, Lcom/onyx/android/sdk/base/data/font/CJKCompat;->INSTANCE:Lcom/onyx/android/sdk/base/data/font/CJKCompat;

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/data/font/CJKCompat;->CJKToStandard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-static {p1, p2, v0, p2}, Lcom/onyx/android/sdk/base/extension/StringKt;->replaceBreakLine$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "toLowerCase(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->setKeyword(Ljava/lang/String;)V

    return-object p0
.end method
