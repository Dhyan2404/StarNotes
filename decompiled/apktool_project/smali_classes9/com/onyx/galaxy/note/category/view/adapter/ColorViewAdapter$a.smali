.class public final Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->u(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;I)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;

.field public final synthetic f:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$a;->e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$a;->f:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    iput p3, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$a;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$a;->e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;->setSelectionColor(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$a;->f:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$a;->g:I

    invoke-static {v0, p1, p0}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->access$updateSelectColor(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;II)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$a;->a(I)V

    return-void
.end method
