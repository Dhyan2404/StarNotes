.class public final synthetic Lcom/sunia/HTREnginev2/s7f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/s7f;->e:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/s7f;->f:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/s7f;->e:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/s7f;->f:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->a(Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method
