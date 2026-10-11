.class public final synthetic Lcom/sunia/HTREnginev2/mbl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(FFLkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/mbl;->e:F

    iput p2, p0, Lcom/sunia/HTREnginev2/mbl;->f:F

    iput-object p3, p0, Lcom/sunia/HTREnginev2/mbl;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/sunia/HTREnginev2/mbl;->e:F

    iget v1, p0, Lcom/sunia/HTREnginev2/mbl;->f:F

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mbl;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->m(FFLkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method
