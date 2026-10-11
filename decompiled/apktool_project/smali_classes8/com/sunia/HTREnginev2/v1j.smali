.class public final synthetic Lcom/sunia/HTREnginev2/v1j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/v1j;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/v1j;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction;->l(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method
