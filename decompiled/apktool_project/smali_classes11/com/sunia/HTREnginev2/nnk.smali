.class public final synthetic Lcom/sunia/HTREnginev2/nnk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/Action;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/expr/sort/MergeInstr;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/expr/sort/MergeInstr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nnk;->a:Lnet/sf/saxon/expr/sort/MergeInstr;

    return-void
.end method


# virtual methods
.method public final doAction()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nnk;->a:Lnet/sf/saxon/expr/sort/MergeInstr;

    invoke-static {p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->E1(Lnet/sf/saxon/expr/sort/MergeInstr;)V

    return-void
.end method
