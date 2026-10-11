.class public final synthetic Lcom/sunia/HTREnginev2/j4n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/Action;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/style/StylesheetPackage;

.field public final synthetic b:Lnet/sf/saxon/expr/Component;

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/Component;Ljava/util/Set;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/j4n;->a:Lnet/sf/saxon/style/StylesheetPackage;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/j4n;->b:Lnet/sf/saxon/expr/Component;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/j4n;->c:Ljava/util/Set;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/j4n;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final doAction()V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/j4n;->a:Lnet/sf/saxon/style/StylesheetPackage;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/j4n;->b:Lnet/sf/saxon/expr/Component;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/j4n;->c:Ljava/util/Set;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/j4n;->d:Ljava/util/Map;

    invoke-static {v0, v1, v2, p0}, Lnet/sf/saxon/style/StylesheetPackage;->c(Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/Component;Ljava/util/Set;Ljava/util/Map;)V

    return-void
.end method
