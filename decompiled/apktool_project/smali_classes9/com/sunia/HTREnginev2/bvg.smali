.class public final synthetic Lcom/sunia/HTREnginev2/bvg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/bvg;->e:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/bvg;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/bvg;->e:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/bvg;->f:Z

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->o0(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Z)V

    return-void
.end method
