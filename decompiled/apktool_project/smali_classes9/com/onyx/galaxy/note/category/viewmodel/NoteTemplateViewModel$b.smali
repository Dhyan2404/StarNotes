.class public final Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->checkCoverSelected(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)V
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
.field public static final e:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$b<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$b;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$b;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$b;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/galaxy/note/category/action/cover/LoadCoverCategoryListAction;

    sget-object p1, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->Companion:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$Companion;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$Companion;->getMATERIALS_CATEGORIES_SOURCE()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/category/action/cover/LoadCoverCategoryListAction;-><init>(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$b;->a(Z)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
