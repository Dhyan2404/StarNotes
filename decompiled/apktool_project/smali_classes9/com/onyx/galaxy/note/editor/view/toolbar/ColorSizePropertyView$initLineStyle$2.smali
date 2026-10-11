.class final Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView$initLineStyle$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView$initLineStyle$2;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView$initLineStyle$2;->invoke(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView$initLineStyle$2;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;->access$getPenViewModel$p(Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;)Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "penViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getLineStyleType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getLineStyleTypeOption(I)Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
