.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMultiLvlStrRef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMultiLvlStrRef;",
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

    const-string v2, "ctmultilvlstrrefe271type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMultiLvlStrRef;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMultiLvlStrRef;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract addNewMultiLvlStrCache()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMultiLvlStrData;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract getF()Ljava/lang/String;
.end method

.method public abstract getMultiLvlStrCache()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMultiLvlStrData;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetMultiLvlStrCache()Z
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V
.end method

.method public abstract setF(Ljava/lang/String;)V
.end method

.method public abstract setMultiLvlStrCache(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMultiLvlStrData;)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetMultiLvlStrCache()V
.end method

.method public abstract xgetF()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetF(Lorg/apache/xmlbeans/XmlString;)V
.end method
