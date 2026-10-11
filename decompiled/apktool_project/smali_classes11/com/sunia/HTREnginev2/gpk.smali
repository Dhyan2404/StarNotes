.class public final synthetic Lcom/sunia/HTREnginev2/gpk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/Action;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/style/StylesheetPackage;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lnet/sf/saxon/trans/SimpleMode;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/style/StylesheetPackage;Ljava/util/List;Lnet/sf/saxon/trans/SimpleMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gpk;->a:Lnet/sf/saxon/style/StylesheetPackage;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/gpk;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/gpk;->c:Lnet/sf/saxon/trans/SimpleMode;

    return-void
.end method


# virtual methods
.method public final doAction()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gpk;->a:Lnet/sf/saxon/style/StylesheetPackage;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gpk;->b:Ljava/util/List;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gpk;->c:Lnet/sf/saxon/trans/SimpleMode;

    invoke-static {v0, v1, p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->Q1(Lnet/sf/saxon/style/StylesheetPackage;Ljava/util/List;Lnet/sf/saxon/trans/SimpleMode;)V

    return-void
.end method
