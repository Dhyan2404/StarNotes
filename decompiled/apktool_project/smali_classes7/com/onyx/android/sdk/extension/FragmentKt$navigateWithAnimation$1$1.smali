.class final Lcom/onyx/android/sdk/extension/FragmentKt$navigateWithAnimation$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/extension/FragmentKt$navigateWithAnimation$1;->invoke(Landroidx/navigation/NavOptionsBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/navigation/AnimBuilder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/navigation/AnimBuilder;",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/extension/FragmentKt$navigateWithAnimation$1$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/extension/FragmentKt$navigateWithAnimation$1$1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/extension/FragmentKt$navigateWithAnimation$1$1;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/extension/FragmentKt$navigateWithAnimation$1$1;->INSTANCE:Lcom/onyx/android/sdk/extension/FragmentKt$navigateWithAnimation$1$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/navigation/AnimBuilder;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/extension/FragmentKt$navigateWithAnimation$1$1;->invoke(Landroidx/navigation/AnimBuilder;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/navigation/AnimBuilder;)V
    .locals 0
    .param p1    # Landroidx/navigation/AnimBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "$this$anim"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget p0, Lcom/onyx/android/sdk/uicommon/R$anim;->slide_in_right_short:I

    invoke-virtual {p1, p0}, Landroidx/navigation/AnimBuilder;->setEnter(I)V

    .line 3
    sget p0, Lcom/onyx/android/sdk/uicommon/R$anim;->slide_out_left_short:I

    invoke-virtual {p1, p0}, Landroidx/navigation/AnimBuilder;->setExit(I)V

    .line 4
    sget p0, Lcom/onyx/android/sdk/uicommon/R$anim;->slide_in_left_short:I

    invoke-virtual {p1, p0}, Landroidx/navigation/AnimBuilder;->setPopEnter(I)V

    .line 5
    sget p0, Lcom/onyx/android/sdk/uicommon/R$anim;->slide_out_right_short:I

    invoke-virtual {p1, p0}, Landroidx/navigation/AnimBuilder;->setPopExit(I)V

    return-void
.end method
