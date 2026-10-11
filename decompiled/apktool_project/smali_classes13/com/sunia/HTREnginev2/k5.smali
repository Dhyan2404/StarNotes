.class public abstract Lcom/sunia/HTREnginev2/k5;
.super Ljavax/xml/validation/Schema;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljavax/xml/validation/Schema;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/k5;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k5;->a:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getFeature(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k5;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public abstract getGrammarPool()Lorg/apache/xerces/xni/grammars/XMLGrammarPool;
.end method

.method public abstract isFullyComposed()Z
.end method

.method public final newValidator()Ljavax/xml/validation/Validator;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/zzn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/zzn;-><init>(Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    return-object v0
.end method

.method public final newValidatorHandler()Ljavax/xml/validation/ValidatorHandler;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/xzn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/xzn;-><init>(Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    return-object v0
.end method
