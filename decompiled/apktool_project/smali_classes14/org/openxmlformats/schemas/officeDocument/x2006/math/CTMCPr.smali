.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMCPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMCPr;",
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

    const-string v2, "ctmcpr6d9atype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMCPr;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMCPr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCount()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTInteger255;
.end method

.method public abstract addNewMcJc()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTXAlign;
.end method

.method public abstract getCount()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTInteger255;
.end method

.method public abstract getMcJc()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTXAlign;
.end method

.method public abstract isSetCount()Z
.end method

.method public abstract isSetMcJc()Z
.end method

.method public abstract setCount(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTInteger255;)V
.end method

.method public abstract setMcJc(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTXAlign;)V
.end method

.method public abstract unsetCount()V
.end method

.method public abstract unsetMcJc()V
.end method
