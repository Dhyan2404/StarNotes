.class final Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup$initTypesetLayout$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInkBeautifyPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InkBeautifyPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup$initTypesetLayout$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,308:1\n1#2:309\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "percent",
        "",
        "value",
        "fromUser",
        "",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInkBeautifyPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InkBeautifyPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup$initTypesetLayout$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,308:1\n1#2:309\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup$initTypesetLayout$3;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup$initTypesetLayout$3;->invoke(FFZ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(FFZ)V
    .locals 0

    .line 2
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup$initTypesetLayout$3;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup;->access$getViewModel$p(Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup;)Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->getTypesetViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;

    move-result-object p1

    const/16 p3, 0x64

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->updateCharSpacing(F)V

    .line 4
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup$initTypesetLayout$3;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup;->access$getViewModel$p(Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup;)Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->updateTypesetParams()V

    .line 5
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup$initTypesetLayout$3;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup;->access$updateTypesetLayout(Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup;)V

    :cond_1
    return-void
.end method
