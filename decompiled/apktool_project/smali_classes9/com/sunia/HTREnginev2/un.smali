.class public final synthetic Lcom/sunia/HTREnginev2/un;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;

.field public final synthetic g:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(ZLcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/un;->e:Z

    iput-object p2, p0, Lcom/sunia/HTREnginev2/un;->f:Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/un;->g:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/un;->e:Z

    iget-object v1, p0, Lcom/sunia/HTREnginev2/un;->f:Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/un;->g:Landroid/view/View;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->a(ZLcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
