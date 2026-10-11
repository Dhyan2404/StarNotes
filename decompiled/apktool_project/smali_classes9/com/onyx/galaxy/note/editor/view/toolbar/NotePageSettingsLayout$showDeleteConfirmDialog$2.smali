.class final Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout$showDeleteConfirmDialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;->K(Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/app/Dialog;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/app/Dialog;",
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


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout$showDeleteConfirmDialog$2;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/app/Dialog;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout$showDeleteConfirmDialog$2;->invoke(Landroid/app/Dialog;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/app/Dialog;)V
    .locals 2
    .param p1    # Landroid/app/Dialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout$showDeleteConfirmDialog$2;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;

    const/4 p1, 0x0

    const/4 v0, 0x2

    const-string v1, "click_galaxy_docsSetting_0004"

    invoke-static {p0, v1, p1, v0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;->H(Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
