.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/theme/widgets/Tintable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0008\u0016\u0012\u0006\u0010\"\u001a\u00020!\u00a2\u0006\u0004\u0008#\u0010$B\u001d\u0008\u0016\u0012\u0006\u0010\"\u001a\u00020!\u0012\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010%\u00a2\u0006\u0004\u0008#\u0010\'B%\u0008\u0016\u0012\u0006\u0010\"\u001a\u00020!\u0012\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010%\u0012\u0006\u0010(\u001a\u00020\u0008\u00a2\u0006\u0004\u0008#\u0010)J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003J\u0006\u0010\u0007\u001a\u00020\u0005J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u000e\u0010\r\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000bJ\u0008\u0010\u000e\u001a\u00020\u0005H\u0016J\u0008\u0010\u000f\u001a\u00020\u0005H\u0002J\u0010\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010H\u0002R\u001b\u0010\u001c\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u001eR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010 \u00a8\u0006*"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;",
        "Landroid/widget/HorizontalScrollView;",
        "Lcom/onyx/android/sdk/theme/widgets/Tintable;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "",
        "setEditorBundle",
        "updateExcerptTypeUi",
        "",
        "visibility",
        "setVisibility",
        "",
        "rotation",
        "setOrientationChanged",
        "tint",
        "c",
        "Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;",
        "type",
        "f",
        "Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;",
        "excerptAttr",
        "g",
        "h",
        "Lcom/onyx/galaxy/note/databinding/LayoutExcerptTypeParamsContainerBinding;",
        "e",
        "Lkotlin/Lazy;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/LayoutExcerptTypeParamsContainerBinding;",
        "binding",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "excerptAttrOption",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyle",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->e:Lkotlin/Lazy;

    .line 6
    sget-object p1, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getExcerptShapeAttrOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->f:Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    .line 7
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->c()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->e(Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->d(Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;Landroid/view/View;)V

    return-void
.end method

.method public static final d(Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;->TEXT:Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->f(Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;)V

    return-void
.end method

.method public static final e(Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;->RECTANGLE:Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->f(Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;)V

    return-void
.end method

.method private final getBinding()Lcom/onyx/galaxy/note/databinding/LayoutExcerptTypeParamsContainerBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->e:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/LayoutExcerptTypeParamsContainerBinding;

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutExcerptTypeParamsContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutExcerptTypeParamsContainerBinding;->textExcerptContainer:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/lyf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/lyf;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutExcerptTypeParamsContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutExcerptTypeParamsContainerBinding;->rectExcerptContainer:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/myf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/myf;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->f:Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->forceGet()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->getType()Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->h(Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;)V

    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->f:Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->forceGet()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->setType(Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;)V

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/popup/ExcerptPenMenuPopup;->Companion:Lcom/onyx/galaxy/note/editor/view/popup/ExcerptPenMenuPopup$Companion;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/ExcerptPenMenuPopup$Companion;->onExcerptAttrSelected(Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->h(Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->g(Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;)V

    return-void
.end method

.method public final g(Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;)V
    .locals 6

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz p0, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->getType()Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;->TEXT:Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "textExcerpt"

    invoke-virtual {v1, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    xor-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "frameExcerpt"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->getShowIndicator()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "iconExcerpt"

    invoke-virtual {v1, v0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    new-instance p1, Lkotlin/Pair;

    const-string v0, "excerptpen_data"

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "click_galaxy_excerpt_param_0001"

    const-string v4, "click"

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final h(Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;)V
    .locals 4

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutExcerptTypeParamsContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutExcerptTypeParamsContainerBinding;->textExcerptContainer:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    sget-object v1, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;->TEXT:Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutExcerptTypeParamsContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutExcerptTypeParamsContainerBinding;->rectExcerptContainer:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;->RECTANGLE:Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public final setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-void
.end method

.method public final setOrientationChanged(F)V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutExcerptTypeParamsContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutExcerptTypeParamsContainerBinding;->textExcerptContainer:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutExcerptTypeParamsContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutExcerptTypeParamsContainerBinding;->rectExcerptContainer:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->f:Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->forceGet()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->getType()Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->h(Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;)V

    :cond_0
    return-void
.end method

.method public tint()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutExcerptTypeParamsContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutExcerptTypeParamsContainerBinding;->textExcerptLayout:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->tint()V

    return-void
.end method

.method public final updateExcerptTypeUi()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->f:Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->forceGet()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->getType()Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->h(Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;)V

    return-void
.end method
