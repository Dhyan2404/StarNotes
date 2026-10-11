.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTGroupChr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTGroupChr;",
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

    const-string v2, "ctgroupchra6c4type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTGroupChr;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTGroupChr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewE()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathArg;
.end method

.method public abstract addNewGroupChrPr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTGroupChrPr;
.end method

.method public abstract getE()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathArg;
.end method

.method public abstract getGroupChrPr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTGroupChrPr;
.end method

.method public abstract isSetGroupChrPr()Z
.end method

.method public abstract setE(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathArg;)V
.end method

.method public abstract setGroupChrPr(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTGroupChrPr;)V
.end method

.method public abstract unsetGroupChrPr()V
.end method
