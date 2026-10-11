.class public final synthetic Lcom/sunia/HTREnginev2/fsi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Ljavax/xml/crypto/dsig/dom/DOMSignContext;


# direct methods
.method public synthetic constructor <init>(Ljavax/xml/crypto/dsig/dom/DOMSignContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fsi;->e:Ljavax/xml/crypto/dsig/dom/DOMSignContext;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fsi;->e:Ljavax/xml/crypto/dsig/dom/DOMSignContext;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;->a(Ljavax/xml/crypto/dsig/dom/DOMSignContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
