.class public final Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->B()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$m<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$m;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$m;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$m;->e:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->getSavedShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$m;->a(Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    return-object p0
.end method
