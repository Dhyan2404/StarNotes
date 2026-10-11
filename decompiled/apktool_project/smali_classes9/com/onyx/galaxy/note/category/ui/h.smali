.class public final synthetic Lcom/onyx/galaxy/note/category/ui/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/h;->e:Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/h;->e:Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment$initData$2;->b(Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;)V

    return-void
.end method
