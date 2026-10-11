.class public final synthetic Lcom/sunia/HTREnginev2/rnk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/Action;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lnet/sf/saxon/style/StylesheetPackage;

.field public final synthetic c:Lnet/sf/saxon/expr/instruct/SourceDocument;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/instruct/SourceDocument;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rnk;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/rnk;->b:Lnet/sf/saxon/style/StylesheetPackage;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/rnk;->c:Lnet/sf/saxon/expr/instruct/SourceDocument;

    return-void
.end method


# virtual methods
.method public final doAction()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/rnk;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/rnk;->b:Lnet/sf/saxon/style/StylesheetPackage;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rnk;->c:Lnet/sf/saxon/expr/instruct/SourceDocument;

    invoke-static {v0, v1, p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->e0(Ljava/util/List;Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/instruct/SourceDocument;)V

    return-void
.end method
