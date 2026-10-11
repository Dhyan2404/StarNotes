.class public final synthetic Lcom/sunia/HTREnginev2/v1f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/xb/substwsdl/impl/DefinitionsDocumentImpl$DefinitionsImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/xb/substwsdl/impl/DefinitionsDocumentImpl$DefinitionsImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/v1f;->e:Lorg/apache/xmlbeans/impl/xb/substwsdl/impl/DefinitionsDocumentImpl$DefinitionsImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/v1f;->e:Lorg/apache/xmlbeans/impl/xb/substwsdl/impl/DefinitionsDocumentImpl$DefinitionsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/xb/substwsdl/impl/DefinitionsDocumentImpl$DefinitionsImpl;->removeService(I)V

    return-void
.end method
