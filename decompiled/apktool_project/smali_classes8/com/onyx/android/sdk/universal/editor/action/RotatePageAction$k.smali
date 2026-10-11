.class public final Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction;->q(Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;)Lio/reactivex/rxjava3/core/Observable;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRotatePageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RotatePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/RotatePageAction$rotateNotePage$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,106:1\n1603#2,9:107\n1855#2:116\n1856#2:118\n1612#2:119\n1#3:117\n*S KotlinDebug\n*F\n+ 1 RotatePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/RotatePageAction$rotateNotePage$1\n*L\n89#1:107,9\n89#1:116\n89#1:118\n89#1:119\n89#1:117\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRotatePageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RotatePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/RotatePageAction$rotateNotePage$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,106:1\n1603#2,9:107\n1855#2:116\n1856#2:118\n1612#2:119\n1#3:117\n*S KotlinDebug\n*F\n+ 1 RotatePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/RotatePageAction$rotateNotePage$1\n*L\n89#1:107,9\n89#1:116\n89#1:118\n89#1:119\n89#1:117\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction$k;->e:Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction$k;->f:Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction;)Ljava/util/List;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction$k;->e:Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;->getPageIndexList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction$k;->f:Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPage(I)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction$k;->a(Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
