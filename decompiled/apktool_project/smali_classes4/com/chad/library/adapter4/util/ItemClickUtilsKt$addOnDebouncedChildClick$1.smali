.class public final Lcom/chad/library/adapter4/util/ItemClickUtilsKt$addOnDebouncedChildClick$1;
.super Lcom/sunia/HTREnginev2/pve;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->addOnDebouncedChildClick(Lcom/chad/library/adapter4/BaseQuickAdapter;IJLcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/HTREnginev2/pve<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J*\u0010\t\u001a\u00020\u00082\u0010\u0010\u0003\u001a\u000c\u0012\u0004\u0012\u00028\u0000\u0012\u0002\u0008\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0014\u00a8\u0006\n"
    }
    d2 = {
        "com/chad/library/adapter4/util/ItemClickUtilsKt$addOnDebouncedChildClick$1",
        "Lcom/sunia/HTREnginev2/pve;",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "adapter",
        "Landroid/view/View;",
        "view",
        "",
        "position",
        "",
        "onSingleClick",
        "com.github.CymChad.brvah"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p3, p0, Lcom/chad/library/adapter4/util/ItemClickUtilsKt$addOnDebouncedChildClick$1;->c:Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;

    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/pve;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onSingleClick(Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1
    .param p1    # Lcom/chad/library/adapter4/BaseQuickAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/BaseQuickAdapter<",
            "TT;*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/chad/library/adapter4/util/ItemClickUtilsKt$addOnDebouncedChildClick$1;->c:Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;->onItemClick(Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
