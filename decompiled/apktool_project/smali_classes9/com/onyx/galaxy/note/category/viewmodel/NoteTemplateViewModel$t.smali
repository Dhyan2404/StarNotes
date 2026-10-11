.class public final Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->o(Lio/reactivex/rxjava3/subjects/ReplaySubject;Lcom/onyx/android/sdk/base/data/Orientation;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Predicate;"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$t<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$t;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$t;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$t;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$t;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/bkground/LoadCoverByJsonBeanAction;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/bkground/LoadCoverByJsonBeanAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "o"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/bkground/LoadCoverByJsonBeanAction;->getCoverModel()Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/bkground/LoadCoverByJsonBeanAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$t;->a(Lcom/onyx/android/sdk/universal/editor/action/bkground/LoadCoverByJsonBeanAction;)Z

    move-result p0

    return p0
.end method
