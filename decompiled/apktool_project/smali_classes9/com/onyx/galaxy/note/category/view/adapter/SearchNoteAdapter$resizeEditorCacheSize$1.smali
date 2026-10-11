.class final Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$resizeEditorCacheSize$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchNoteAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchNoteAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$resizeEditorCacheSize$1\n+ 2 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,567:1\n98#2,4:568\n*S KotlinDebug\n*F\n+ 1 SearchNoteAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$resizeEditorCacheSize$1\n*L\n563#1:568,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroidx/recyclerview/widget/RecyclerView;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSearchNoteAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchNoteAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$resizeEditorCacheSize$1\n+ 2 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,567:1\n98#2,4:568\n*S KotlinDebug\n*F\n+ 1 SearchNoteAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$resizeEditorCacheSize$1\n*L\n563#1:568,4\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$resizeEditorCacheSize$1;->this$0:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$resizeEditorCacheSize$1;->invoke(Landroidx/recyclerview/widget/RecyclerView;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_170:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    div-int/2addr p1, v0

    if-gtz p1, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$resizeEditorCacheSize$1;->this$0:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resizeEditorCacheSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$resizeEditorCacheSize$1;->this$0:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->access$getEditorBundleCache$p(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;)Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->resize(I)V

    return-void
.end method
