.class public final Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionTextVH$1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionTextVH$1;->e(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTextVH;Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;)V
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
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchNoteAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchNoteAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionTextVH$1$bindTextNote$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,567:1\n277#2,2:568\n277#2,2:570\n*S KotlinDebug\n*F\n+ 1 SearchNoteAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionTextVH$1$bindTextNote$1\n*L\n208#1:568,2\n209#1:570,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSearchNoteAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchNoteAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionTextVH$1$bindTextNote$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,567:1\n277#2,2:568\n277#2,2:570\n*S KotlinDebug\n*F\n+ 1 SearchNoteAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionTextVH$1$bindTextNote$1\n*L\n208#1:568,2\n209#1:570,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTextVH;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTextVH;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionTextVH$1$a;->e:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTextVH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionTextVH$1$a;->e:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTextVH;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTextVH;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;->groupNoteThumbnail:Landroidx/constraintlayout/widget/Group;

    const-string v0, "groupNoteThumbnail"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionTextVH$1$a;->e:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTextVH;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTextVH;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;->groupNoteThumbnailLand:Landroidx/constraintlayout/widget/Group;

    const-string p1, "groupNoteThumbnailLand"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionTextVH$1$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method
