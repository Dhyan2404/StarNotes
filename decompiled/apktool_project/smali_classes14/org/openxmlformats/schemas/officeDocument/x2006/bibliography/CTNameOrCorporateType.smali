.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameOrCorporateType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameOrCorporateType;",
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

    const-string v2, "ctnameorcorporatetype4185type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameOrCorporateType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameOrCorporateType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewNameList()Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameListType;
.end method

.method public abstract getCorporate()Ljava/lang/String;
.end method

.method public abstract getNameList()Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameListType;
.end method

.method public abstract isSetCorporate()Z
.end method

.method public abstract isSetNameList()Z
.end method

.method public abstract setCorporate(Ljava/lang/String;)V
.end method

.method public abstract setNameList(Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameListType;)V
.end method

.method public abstract unsetCorporate()V
.end method

.method public abstract unsetNameList()V
.end method

.method public abstract xgetCorporate()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xsetCorporate(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method
