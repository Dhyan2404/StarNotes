.class public interface abstract Lcom/microsoft/schemas/office/office/CTShapeLayout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/office/CTShapeLayout;",
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

    const-string v2, "ctshapelayoutbda4type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/office/CTShapeLayout;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/CTShapeLayout;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewIdmap()Lcom/microsoft/schemas/office/office/CTIdMap;
.end method

.method public abstract addNewRegrouptable()Lcom/microsoft/schemas/office/office/CTRegroupTable;
.end method

.method public abstract addNewRules()Lcom/microsoft/schemas/office/office/CTRules;
.end method

.method public abstract getExt()Lcom/microsoft/schemas/vml/STExt$Enum;
.end method

.method public abstract getIdmap()Lcom/microsoft/schemas/office/office/CTIdMap;
.end method

.method public abstract getRegrouptable()Lcom/microsoft/schemas/office/office/CTRegroupTable;
.end method

.method public abstract getRules()Lcom/microsoft/schemas/office/office/CTRules;
.end method

.method public abstract isSetExt()Z
.end method

.method public abstract isSetIdmap()Z
.end method

.method public abstract isSetRegrouptable()Z
.end method

.method public abstract isSetRules()Z
.end method

.method public abstract setExt(Lcom/microsoft/schemas/vml/STExt$Enum;)V
.end method

.method public abstract setIdmap(Lcom/microsoft/schemas/office/office/CTIdMap;)V
.end method

.method public abstract setRegrouptable(Lcom/microsoft/schemas/office/office/CTRegroupTable;)V
.end method

.method public abstract setRules(Lcom/microsoft/schemas/office/office/CTRules;)V
.end method

.method public abstract unsetExt()V
.end method

.method public abstract unsetIdmap()V
.end method

.method public abstract unsetRegrouptable()V
.end method

.method public abstract unsetRules()V
.end method

.method public abstract xgetExt()Lcom/microsoft/schemas/vml/STExt;
.end method

.method public abstract xsetExt(Lcom/microsoft/schemas/vml/STExt;)V
.end method
