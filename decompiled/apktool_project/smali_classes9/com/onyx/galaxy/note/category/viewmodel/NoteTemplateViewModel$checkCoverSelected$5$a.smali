.class public final Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$checkCoverSelected$5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$checkCoverSelected$5;->invoke(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
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


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$checkCoverSelected$5$a;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;",
            ">;)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/category/action/cover/LoadAllOfficialCoverListAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$checkCoverSelected$5$a;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getOrientationSafely()I

    move-result p0

    sget-object v1, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->OFFICIAL:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    invoke-direct {v0, p1, p0, v1}, Lcom/onyx/galaxy/note/category/action/cover/LoadAllOfficialCoverListAction;-><init>(Ljava/util/List;ILcom/onyx/galaxy/note/category/data/TemplateSourceType;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$checkCoverSelected$5$a;->a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
