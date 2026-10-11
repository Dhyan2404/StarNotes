.class public final synthetic Lcom/sunia/HTREnginev2/nqm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;

.field public final synthetic f:Lorg/w3c/dom/traversal/DocumentTraversal;

.field public final synthetic g:Ljava/util/Map;

.field public final synthetic h:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;Lorg/w3c/dom/traversal/DocumentTraversal;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nqm;->e:Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/nqm;->f:Lorg/w3c/dom/traversal/DocumentTraversal;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/nqm;->g:Ljava/util/Map;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/nqm;->h:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nqm;->e:Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/nqm;->f:Lorg/w3c/dom/traversal/DocumentTraversal;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/nqm;->g:Ljava/util/Map;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nqm;->h:Ljava/util/Map;

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-static {v0, v1, v2, p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;->c(Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;Lorg/w3c/dom/traversal/DocumentTraversal;Ljava/util/Map;Ljava/util/Map;Lorg/w3c/dom/Element;)V

    return-void
.end method
