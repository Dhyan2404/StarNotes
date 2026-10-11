.class final Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$initListener$14;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->C()V
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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "progress",
        "",
        "progressValue",
        "isFromUser",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$initListener$14;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$initListener$14;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$initListener$14;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$initListener$14;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$initListener$14;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$initListener$14;->invoke(FFZ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(FFZ)V
    .locals 0

    if-nez p3, :cond_0

    .line 2
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getPressure()Lcom/onyx/android/sdk/data/utils/FloatOption;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/utils/FloatOption;->put(F)V

    :cond_0
    return-void
.end method
