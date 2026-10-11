.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;",
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

    const-string v2, "ctexternallink966etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewDdeLink()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDdeLink;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewExternalBook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;
.end method

.method public abstract addNewOleLink()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleLink;
.end method

.method public abstract getDdeLink()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDdeLink;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getExternalBook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;
.end method

.method public abstract getOleLink()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleLink;
.end method

.method public abstract isSetDdeLink()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetExternalBook()Z
.end method

.method public abstract isSetOleLink()Z
.end method

.method public abstract setDdeLink(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDdeLink;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setExternalBook(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;)V
.end method

.method public abstract setOleLink(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleLink;)V
.end method

.method public abstract unsetDdeLink()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetExternalBook()V
.end method

.method public abstract unsetOleLink()V
.end method
