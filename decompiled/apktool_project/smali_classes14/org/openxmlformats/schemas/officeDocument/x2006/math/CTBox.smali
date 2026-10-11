.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBox;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBox;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ctbox7a31type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBox;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBox;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBoxPr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBoxPr;
.end method

.method public abstract addNewE()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathArg;
.end method

.method public abstract getBoxPr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBoxPr;
.end method

.method public abstract getE()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathArg;
.end method

.method public abstract isSetBoxPr()Z
.end method

.method public abstract setBoxPr(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBoxPr;)V
.end method

.method public abstract setE(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathArg;)V
.end method

.method public abstract unsetBoxPr()V
.end method
