.class public final Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;->loadNoteData(Ljava/lang/String;)V
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
    value = "SMAP\nNoteOverviewViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteOverviewViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel$loadNoteData$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,105:1\n1549#2:106\n1620#2,3:107\n*S KotlinDebug\n*F\n+ 1 NoteOverviewViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel$loadNoteData$1\n*L\n55#1:106\n55#1:107,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNoteOverviewViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteOverviewViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel$loadNoteData$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,105:1\n1549#2:106\n1620#2,3:107\n*S KotlinDebug\n*F\n+ 1 NoteOverviewViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel$loadNoteData$1\n*L\n55#1:106\n55#1:107,3\n*E\n"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel$a<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel$a;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel$a;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel$a;->e:Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)Ljava/util/List;
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    new-instance v0, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/galaxy/note/category/data/NotePageBean;-><init>(ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel$a;->a(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
