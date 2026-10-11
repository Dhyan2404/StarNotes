.class public final synthetic Lcom/sunia/HTREnginev2/khk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/ui/adapter/OptionSelectAdapter;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/ui/adapter/OptionSelectAdapter;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/khk;->e:Lcom/onyx/galaxy/note/ui/adapter/OptionSelectAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/khk;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/khk;->e:Lcom/onyx/galaxy/note/ui/adapter/OptionSelectAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/khk;->f:Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/ui/adapter/OptionSelectAdapter;->l(Lcom/onyx/galaxy/note/ui/adapter/OptionSelectAdapter;Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method
