.class public Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/util/DOMErrorHandlerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Ljava/util/Hashtable;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v2, "InvalidCharInCDSect"

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-direct {v1, v3, v2}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v4, "InvalidCharInContent"

    invoke-direct {v1, v3, v4}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v4, "TwoColonsInQName"

    invoke-direct {v1, v3, v4}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v5, "ColonNotLegalWithNS"

    invoke-direct {v1, v3, v5}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v5, "InvalidCharInProlog"

    invoke-direct {v1, v3, v5}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v5, "CDEndInContent"

    invoke-direct {v1, v3, v5}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v5, "CDSectUnterminated"

    invoke-direct {v1, v3, v5}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v5, "DoctypeNotAllowed"

    invoke-direct {v1, v3, v5}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "doctype-not-allowed"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "ETagRequired"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "ElementUnterminated"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "EqRequiredInAttribute"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "OpenQuoteExpected"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "CloseQuoteExpected"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "ETagUnterminated"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MarkupNotRecognizedInContent"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "DoctypeIllegalInContent"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v5, "InvalidCharInAttValue"

    invoke-direct {v1, v3, v5}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v5, "InvalidCharInPI"

    invoke-direct {v1, v3, v5}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v5, "InvalidCharInInternalSubset"

    invoke-direct {v1, v3, v5}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v5, "QuoteRequiredInAttValue"

    invoke-direct {v1, v3, v5}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v5, "LessthanInAttValue"

    invoke-direct {v1, v3, v5}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v5, "AttributeValueUnterminated"

    invoke-direct {v1, v3, v5}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v5, "PITargetRequired"

    invoke-direct {v1, v3, v5}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v5, "SpaceRequiredInPI"

    invoke-direct {v1, v3, v5}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v5, "PIUnterminated"

    invoke-direct {v1, v3, v5}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v5, "ReservedPITarget"

    invoke-direct {v1, v3, v5}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v5, "PI_NOT_IN_ONE_ENTITY"

    invoke-direct {v1, v3, v5}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v5, "PINotInOneEntity"

    invoke-direct {v1, v3, v5}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v5, "EncodingDeclInvalid"

    invoke-direct {v1, v3, v5}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "unsupported-encoding"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "EncodingByteOrderUnsupported"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "InvalidCharInEntityValue"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "InvalidCharInExternalSubset"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "InvalidCharInIgnoreSect"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "InvalidCharInPublicID"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "InvalidCharInSystemID"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "SpaceRequiredAfterSYSTEM"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "QuoteRequiredInSystemID"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "SystemIDUnterminated"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "SpaceRequiredAfterPUBLIC"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "QuoteRequiredInPublicID"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "PublicIDUnterminated"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "PubidCharIllegal"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "SpaceRequiredBetweenPublicAndSystem"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_SPACE_REQUIRED_BEFORE_ROOT_ELEMENT_TYPE_IN_DOCTYPEDECL"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_ROOT_ELEMENT_TYPE_REQUIRED"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "DoctypedeclUnterminated"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "PEReferenceWithinMarkup"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_SPACE_REQUIRED_BEFORE_ELEMENT_TYPE_IN_ELEMENTDECL"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_ELEMENT_TYPE_REQUIRED_IN_ELEMENTDECL"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_SPACE_REQUIRED_BEFORE_CONTENTSPEC_IN_ELEMENTDECL"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_CONTENTSPEC_REQUIRED_IN_ELEMENTDECL"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "ElementDeclUnterminated"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_OPEN_PAREN_OR_ELEMENT_TYPE_REQUIRED_IN_CHILDREN"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_CLOSE_PAREN_REQUIRED_IN_CHILDREN"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_ELEMENT_TYPE_REQUIRED_IN_MIXED_CONTENT"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_CLOSE_PAREN_REQUIRED_IN_MIXED"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MixedContentUnterminated"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_SPACE_REQUIRED_BEFORE_ELEMENT_TYPE_IN_ATTLISTDECL"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_ELEMENT_TYPE_REQUIRED_IN_ATTLISTDECL"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_SPACE_REQUIRED_BEFORE_ATTRIBUTE_NAME_IN_ATTDEF"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "AttNameRequiredInAttDef"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_SPACE_REQUIRED_BEFORE_ATTTYPE_IN_ATTDEF"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "AttTypeRequiredInAttDef"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_SPACE_REQUIRED_BEFORE_DEFAULTDECL_IN_ATTDEF"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_DUPLICATE_ATTRIBUTE_DEFINITION"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_SPACE_REQUIRED_AFTER_NOTATION_IN_NOTATIONTYPE"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_OPEN_PAREN_REQUIRED_IN_NOTATIONTYPE"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_NAME_REQUIRED_IN_NOTATIONTYPE"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "NotationTypeUnterminated"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_NMTOKEN_REQUIRED_IN_ENUMERATION"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "EnumerationUnterminated"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_DISTINCT_TOKENS_IN_ENUMERATION"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_DISTINCT_NOTATION_IN_ENUMERATION"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_SPACE_REQUIRED_AFTER_FIXED_IN_DEFAULTDECL"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "IncludeSectUnterminated"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "IgnoreSectUnterminated"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "NameRequiredInPEReference"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "SemicolonRequiredInPEReference"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_SPACE_REQUIRED_BEFORE_ENTITY_NAME_IN_ENTITYDECL"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_SPACE_REQUIRED_BEFORE_PERCENT_IN_PEDECL"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_SPACE_REQUIRED_BEFORE_ENTITY_NAME_IN_PEDECL"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_ENTITY_NAME_REQUIRED_IN_ENTITYDECL"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_SPACE_REQUIRED_AFTER_ENTITY_NAME_IN_ENTITYDECL"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_SPACE_REQUIRED_BEFORE_NOTATION_NAME_IN_UNPARSED_ENTITYDECL"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_SPACE_REQUIRED_BEFORE_NDATA_IN_UNPARSED_ENTITYDECL"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_NOTATION_NAME_REQUIRED_FOR_UNPARSED_ENTITYDECL"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "EntityDeclUnterminated"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_DUPLICATE_ENTITY_DEFINITION"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "ExternalIDRequired"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_SPACE_REQUIRED_BEFORE_PUBIDLITERAL_IN_EXTERNALID"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_SPACE_REQUIRED_AFTER_PUBIDLITERAL_IN_EXTERNALID"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_SPACE_REQUIRED_BEFORE_SYSTEMLITERAL_IN_EXTERNALID"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_URI_FRAGMENT_IN_SYSTEMID"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_SPACE_REQUIRED_BEFORE_NOTATION_NAME_IN_NOTATIONDECL"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_NOTATION_NAME_REQUIRED_IN_NOTATIONDECL"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "MSG_SPACE_REQUIRED_AFTER_NOTATION_NAME_IN_NOTATIONDECL"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "ExternalIDorPublicIDRequired"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "NotationDeclUnterminated"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "ReferenceToExternalEntity"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v6, "ReferenceToUnparsedEntity"

    invoke-direct {v1, v3, v6}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v2, "EncodingNotSupported"

    invoke-direct {v1, v3, v2}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v2, "EncodingRequired"

    invoke-direct {v1, v3, v2}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v2, "IllegalQName"

    invoke-direct {v1, v3, v2}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v2, "ElementXMLNSPrefix"

    invoke-direct {v1, v3, v2}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v2, "ElementPrefixUnbound"

    invoke-direct {v1, v3, v2}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v2, "AttributePrefixUnbound"

    invoke-direct {v1, v3, v2}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v2, "EmptyPrefixedAttName"

    invoke-direct {v1, v3, v2}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    new-instance v1, Lcom/sunia/HTREnginev2/olo;

    const-string v2, "PrefixDeclared"

    invoke-direct {v1, v3, v2}, Lcom/sunia/HTREnginev2/olo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/sunia/HTREnginev2/olo;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
