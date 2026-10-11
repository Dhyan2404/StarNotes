.class public final Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->i()V
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


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$a;->e:Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$a;->e:Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;)Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;->linkPositionInvalidTip:Landroidx/appcompat/widget/AppCompatTextView;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$a;->a(Z)V

    return-void
.end method
