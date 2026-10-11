.class public final synthetic Lcom/sunia/HTREnginev2/mnk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/Action;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lnet/sf/saxon/style/StylesheetPackage;

.field public final synthetic c:Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mnk;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/mnk;->b:Lnet/sf/saxon/style/StylesheetPackage;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/mnk;->c:Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    return-void
.end method


# virtual methods
.method public final doAction()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mnk;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/mnk;->b:Lnet/sf/saxon/style/StylesheetPackage;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mnk;->c:Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    invoke-static {v0, v1, p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->K1(Ljava/util/List;Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;)V

    return-void
.end method
