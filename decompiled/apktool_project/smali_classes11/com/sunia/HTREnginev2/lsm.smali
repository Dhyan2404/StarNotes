.class public final synthetic Lcom/sunia/HTREnginev2/lsm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/trans/Mode$RuleAction;


# instance fields
.field public final synthetic a:Ljava/util/IdentityHashMap;

.field public final synthetic b:Lnet/sf/saxon/style/StylesheetPackage;

.field public final synthetic c:Lnet/sf/saxon/trans/SimpleMode;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/IdentityHashMap;Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/trans/SimpleMode;Ljava/util/List;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lsm;->a:Ljava/util/IdentityHashMap;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/lsm;->b:Lnet/sf/saxon/style/StylesheetPackage;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/lsm;->c:Lnet/sf/saxon/trans/SimpleMode;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/lsm;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/sunia/HTREnginev2/lsm;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final processRule(Lnet/sf/saxon/trans/rules/Rule;)V
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lsm;->a:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/lsm;->b:Lnet/sf/saxon/style/StylesheetPackage;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/lsm;->c:Lnet/sf/saxon/trans/SimpleMode;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/lsm;->d:Ljava/util/List;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/lsm;->e:Ljava/util/Set;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lnet/sf/saxon/trans/SimpleMode;->g(Ljava/util/IdentityHashMap;Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/trans/SimpleMode;Ljava/util/List;Ljava/util/Set;Lnet/sf/saxon/trans/rules/Rule;)V

    return-void
.end method
